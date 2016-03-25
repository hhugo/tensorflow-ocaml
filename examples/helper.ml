open Core.Std
open Wrapper

(* TODO: move the interesting functions to src/. *)
let ok_exn (result : 'a Session.result) ~context =
  match result with
  | Ok result -> result
  | Error status ->
    Printf.sprintf "Error in %s: %s" context (Status.message status)
    |> failwith

let const_float shape f =
  let size = List.fold shape ~init:1 ~f:(( * )) in
  Ops_m.const_float
    ~type_:Float
    ~shape
    (List.init size ~f:(const f))

let print_one_tensor (name, Tensor.P tensor) =
  match tensor.kind with
  | Bigarray.Float32 ->
    let data = tensor.data in
    Printf.printf "%s:\n%!" name;
    begin
      match Bigarray.Genarray.dims data with
      | [| dim |] ->
        for d = 0 to dim - 1 do
          Printf.printf "%d %f\n%!" d (Bigarray.Genarray.get data [| d |])
        done
      | [| d0; d1 |] ->
        for x = 0 to d0 - 1 do
          Printf.printf "%d " x;
          for y = 0 to d1 - 1 do
            Printf.printf "%f " (Bigarray.Genarray.get data [| x; y |])
          done;
          Printf.printf "\n%!";
        done
      | otherwise -> Printf.printf "%d dims\n%!" (Array.length otherwise)
    end
  | _ -> Printf.printf "Unsupported kind"

let print_tensors tensors ~names =
  List.zip_exn names tensors
  |> List.iter ~f:print_one_tensor

let run ?(inputs = []) ?(outputs = []) ?(targets = []) session =
  let f n = Node.Name.to_string n.Node.name in
  Session.run
    session
    ~inputs:(List.map inputs ~f:(fun (name, tensor) -> f name, tensor))
    ~outputs:(List.map outputs ~f)
    ~targets:(List.map targets ~f)
  |> ok_exn ~context:"session_run"

let create_session nodes =
  let session =
    Session.create ()
    |> ok_exn ~context:"session creation"
  in
  Session.extend_graph
    session
    (Node_protobuf.of_nodes nodes)
  |> ok_exn ~context:"extending graph";
  session
