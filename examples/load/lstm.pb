
=
keras_learning_phasePlaceholder*
dtype0*
shape: 
5
lstm_input_1Placeholder*
dtype0*
shape: 
I
random_uniform/shapeConst*
dtype0*
valueB"      
?
random_uniform/minConst*
dtype0*
valueB
 *��
?
random_uniform/maxConst*
dtype0*
valueB
 *�?
x
random_uniform/RandomUniformRandomUniformrandom_uniform/shape*
dtype0*
seed2�؋*
seed���)*
T0
J
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
T0
T
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0
F
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0
Z
lstm_1_WVariable*
dtype0*
shape
:*
	container *
shared_name 
�
lstm_1_W/AssignAssignlstm_1_Wrandom_uniform*
validate_shape(*
_class
loc:@lstm_1_W*
use_locking(*
T0
I
lstm_1_W/readIdentitylstm_1_W*
_class
loc:@lstm_1_W*
T0
�
lstm_1_U/initial_valueConst*
dtype0*�
value�B�"��Hz����=:�?� �>,���$_������;�>h�l��f>��=y6��1Fֽtw�>^�{��<�����0�=g�������=��>�-��pj ?r�>�?�>-m>4�轮���>�=;4þ���=��=^�H>x;*>��#��������>#� ���I>[el��Ҁ�7�N��D�>��
������I�>S�e�O4���Ԍ�6j�=��ؽ��3����=5y�>֨�⽸��z�>3��>
U�>����-�>{��=z�>
Z
lstm_1_UVariable*
dtype0*
shape
:*
	container *
shared_name 
�
lstm_1_U/AssignAssignlstm_1_Ulstm_1_U/initial_value*
validate_shape(*
_class
loc:@lstm_1_U*
use_locking(*
T0
I
lstm_1_U/readIdentitylstm_1_U*
_class
loc:@lstm_1_U*
T0
6
ConstConst*
dtype0*
valueB*  �?
V
VariableVariable*
dtype0*
shape:*
	container *
shared_name 
y
Variable/AssignAssignVariableConst*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0
I
Variable/readIdentityVariable*
_class
loc:@Variable*
T0
�
lstm_1_b/initial_valueConst*
dtype0*U
valueLBJ"@                  �?  �?  �?  �?                                
V
lstm_1_bVariable*
dtype0*
shape:*
	container *
shared_name 
�
lstm_1_b/AssignAssignlstm_1_blstm_1_b/initial_value*
validate_shape(*
_class
loc:@lstm_1_b*
use_locking(*
T0
I
lstm_1_b/readIdentitylstm_1_b*
_class
loc:@lstm_1_b*
T0
.

zeros_like	ZerosLikelstm_input_1*
T0
J
Sum/reduction_indicesConst*
dtype0*
valueB"      
S
SumSum
zeros_likeSum/reduction_indices*
T0*
	keep_dims( *

Tidx0
A
ExpandDims/dimConst*
dtype0*
valueB :
���������
B

ExpandDims
ExpandDimsSumExpandDims/dim*

Tdim0*
T0
C
Tile/multiplesConst*
dtype0*
valueB"      
C
TileTile
ExpandDimsTile/multiples*

Tmultiples0*
T0
G
transpose/permConst*
dtype0*!
valueB"          
J
	transpose	Transposelstm_input_1transpose/perm*
Tperm0*
T0
;
concat/concat_dimConst*
dtype0*
value	B :
A
concatConcatconcat/concat_dimTileTile*
T0*
N
2
ShapeShape	transpose*
out_type0*
T0
A
strided_slice/stackConst*
dtype0*
valueB: 
C
strided_slice/stack_1Const*
dtype0*
valueB:
C
strided_slice/stack_2Const*
dtype0*
valueB:
�
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
new_axis_mask *
Index0*

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
C
strided_slice_1/stackConst*
dtype0*
valueB:
E
strided_slice_1/stack_1Const*
dtype0*
valueB:
E
strided_slice_1/stack_2Const*
dtype0*
valueB:
�
strided_slice_1StridedSliceShapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
new_axis_mask *
Index0*

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
0
pack/1Const*
dtype0*
value	B :
C
packPackstrided_slice_1pack/1*
N*
T0*

axis 
8
zeros/ConstConst*
dtype0*
valueB
 *    
)
zerosFillpackzeros/Const*
T0
.
timeConst*
dtype0*
value	B : 
�
TensorArrayTensorArrayV2strided_slice*
dtype0*
clear_after_read(*+
tensor_array_namedynamic_rnn/output_0*
dynamic_size( 
^
TensorArray/ConstConst*
dtype0*
_class
loc:@TensorArray*
valueB
 *    
�
TensorArray_1TensorArrayV2strided_slice*
dtype0*
clear_after_read(**
tensor_array_namedynamic_rnn/input_0*
dynamic_size( 
b
TensorArray_1/ConstConst*
dtype0* 
_class
loc:@TensorArray_1*
valueB
 *    
d
TensorArrayPack/ShapeShape	transpose*
out_type0*
T0* 
_class
loc:@TensorArray_1
s
#TensorArrayPack/strided_slice/stackConst*
dtype0* 
_class
loc:@TensorArray_1*
valueB: 
u
%TensorArrayPack/strided_slice/stack_1Const*
dtype0* 
_class
loc:@TensorArray_1*
valueB:
u
%TensorArrayPack/strided_slice/stack_2Const*
dtype0* 
_class
loc:@TensorArray_1*
valueB:
�
TensorArrayPack/strided_sliceStridedSliceTensorArrayPack/Shape#TensorArrayPack/strided_slice/stack%TensorArrayPack/strided_slice/stack_1%TensorArrayPack/strided_slice/stack_2*
new_axis_mask *
Index0*

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask* 
_class
loc:@TensorArray_1
g
TensorArrayPack/range/startConst*
dtype0* 
_class
loc:@TensorArray_1*
value	B : 
g
TensorArrayPack/range/deltaConst*
dtype0* 
_class
loc:@TensorArray_1*
value	B :
�
TensorArrayPack/rangeRangeTensorArrayPack/range/startTensorArrayPack/strided_sliceTensorArrayPack/range/delta* 
_class
loc:@TensorArray_1*

Tidx0
�
$TensorArrayPack/TensorArrayScatterV2TensorArrayScatterV2TensorArray_1TensorArrayPack/range	transposeTensorArray_1/Const* 
_class
loc:@TensorArray_1*
T0
p
!TensorArrayPack/TensorArray/ConstConst*
dtype0* 
_class
loc:@TensorArray_1*
valueB
 *    
o
while/EnterEntertime*
is_constant( *
T0*

frame_namewhile/while/*
parallel_iterations 
~
while/Enter_1EnterTensorArray/Const*
is_constant( *
T0*

frame_namewhile/while/*
parallel_iterations 
s
while/Enter_2Enterconcat*
is_constant( *
T0*

frame_namewhile/while/*
parallel_iterations 
H
while/MergeMergewhile/Enterwhile/NextIteration*
T0*
N
N
while/Merge_1Mergewhile/Enter_1while/NextIteration_1*
T0*
N
N
while/Merge_2Mergewhile/Enter_2while/NextIteration_2*
T0*
N
}
while/Less/EnterEnterstrided_slice*
is_constant(*
T0*

frame_namewhile/while/*
parallel_iterations 
:

while/LessLesswhile/Mergewhile/Less/Enter*
T0
&
while/LoopCondLoopCond
while/Less
\
while/SwitchSwitchwhile/Mergewhile/LoopCond*
_class
loc:@while/Merge*
T0
b
while/Switch_1Switchwhile/Merge_1while/LoopCond* 
_class
loc:@while/Merge_1*
T0
b
while/Switch_2Switchwhile/Merge_2while/LoopCond* 
_class
loc:@while/Merge_2*
T0
3
while/IdentityIdentitywhile/Switch:1*
T0
7
while/Identity_1Identitywhile/Switch_1:1*
T0
7
while/Identity_2Identitywhile/Switch_2:1*
T0
�
while/TensorArrayReadV2/EnterEnterTensorArray_1* 
_class
loc:@TensorArray_1*
is_constant(*
T0*

frame_namewhile/while/*
parallel_iterations 
�
while/TensorArrayReadV2/Enter_1Enter$TensorArrayPack/TensorArrayScatterV2* 
_class
loc:@TensorArray_1*
is_constant(*
T0*

frame_namewhile/while/*
parallel_iterations 
�
while/TensorArrayReadV2TensorArrayReadV2while/TensorArrayReadV2/Enterwhile/Identitywhile/TensorArrayReadV2/Enter_1*
dtype0* 
_class
loc:@TensorArray_1
_
while/strided_slice/stackConst^while/Identity*
dtype0*
valueB"        
a
while/strided_slice/stack_1Const^while/Identity*
dtype0*
valueB"       
a
while/strided_slice/stack_2Const^while/Identity*
dtype0*
valueB"      
�
while/strided_sliceStridedSlicewhile/Identity_2while/strided_slice/stackwhile/strided_slice/stack_1while/strided_slice/stack_2*
new_axis_mask *
Index0*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
a
while/strided_slice_1/stackConst^while/Identity*
dtype0*
valueB"       
c
while/strided_slice_1/stack_1Const^while/Identity*
dtype0*
valueB"       
c
while/strided_slice_1/stack_2Const^while/Identity*
dtype0*
valueB"      
�
while/strided_slice_1StridedSlicewhile/Identity_2while/strided_slice_1/stackwhile/strided_slice_1/stack_1while/strided_slice_1/stack_2*
new_axis_mask *
Index0*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
I
while/mul/yConst^while/Identity*
dtype0*
valueB
 *  �?
?
	while/mulMulwhile/TensorArrayReadV2while/mul/y*
T0

while/MatMul/EnterEnterlstm_1_W/read*
is_constant(*
T0*

frame_namewhile/while/*
parallel_iterations 
d
while/MatMulMatMul	while/mulwhile/MatMul/Enter*
transpose_b( *
transpose_a( *
T0
K
while/mul_1/yConst^while/Identity*
dtype0*
valueB
 *  �?
?
while/mul_1Mulwhile/strided_slicewhile/mul_1/y*
T0
�
while/MatMul_1/EnterEnterlstm_1_U/read*
is_constant(*
T0*

frame_namewhile/while/*
parallel_iterations 
j
while/MatMul_1MatMulwhile/mul_1while/MatMul_1/Enter*
transpose_b( *
transpose_a( *
T0
7
	while/addAddwhile/MatMulwhile/MatMul_1*
T0
~
while/add_1/EnterEnterlstm_1_b/read*
is_constant(*
T0*

frame_namewhile/while/*
parallel_iterations 
9
while/add_1Add	while/addwhile/add_1/Enter*
T0
a
while/strided_slice_2/stackConst^while/Identity*
dtype0*
valueB"        
c
while/strided_slice_2/stack_1Const^while/Identity*
dtype0*
valueB"       
c
while/strided_slice_2/stack_2Const^while/Identity*
dtype0*
valueB"      
�
while/strided_slice_2StridedSlicewhile/add_1while/strided_slice_2/stackwhile/strided_slice_2/stack_1while/strided_slice_2/stack_2*
new_axis_mask *
Index0*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
a
while/strided_slice_3/stackConst^while/Identity*
dtype0*
valueB"       
c
while/strided_slice_3/stack_1Const^while/Identity*
dtype0*
valueB"       
c
while/strided_slice_3/stack_2Const^while/Identity*
dtype0*
valueB"      
�
while/strided_slice_3StridedSlicewhile/add_1while/strided_slice_3/stackwhile/strided_slice_3/stack_1while/strided_slice_3/stack_2*
new_axis_mask *
Index0*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
a
while/strided_slice_4/stackConst^while/Identity*
dtype0*
valueB"       
c
while/strided_slice_4/stack_1Const^while/Identity*
dtype0*
valueB"       
c
while/strided_slice_4/stack_2Const^while/Identity*
dtype0*
valueB"      
�
while/strided_slice_4StridedSlicewhile/add_1while/strided_slice_4/stackwhile/strided_slice_4/stack_1while/strided_slice_4/stack_2*
new_axis_mask *
Index0*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
a
while/strided_slice_5/stackConst^while/Identity*
dtype0*
valueB"       
c
while/strided_slice_5/stack_1Const^while/Identity*
dtype0*
valueB"        
c
while/strided_slice_5/stack_2Const^while/Identity*
dtype0*
valueB"      
�
while/strided_slice_5StridedSlicewhile/add_1while/strided_slice_5/stackwhile/strided_slice_5/stack_1while/strided_slice_5/stack_2*
new_axis_mask *
Index0*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
K
while/mul_2/xConst^while/Identity*
dtype0*
valueB
 *��L>
A
while/mul_2Mulwhile/mul_2/xwhile/strided_slice_2*
T0
K
while/add_2/yConst^while/Identity*
dtype0*
valueB
 *   ?
7
while/add_2Addwhile/mul_2while/add_2/y*
T0
I
while/ConstConst^while/Identity*
dtype0*
valueB
 *    
K
while/Const_1Const^while/Identity*
dtype0*
valueB
 *  �?
K
while/clip_by_value/MinimumMinimumwhile/add_2while/Const_1*
T0
Q
while/clip_by_valueMaximumwhile/clip_by_value/Minimumwhile/Const*
T0
K
while/mul_3/xConst^while/Identity*
dtype0*
valueB
 *��L>
A
while/mul_3Mulwhile/mul_3/xwhile/strided_slice_3*
T0
K
while/add_3/yConst^while/Identity*
dtype0*
valueB
 *   ?
7
while/add_3Addwhile/mul_3while/add_3/y*
T0
K
while/Const_2Const^while/Identity*
dtype0*
valueB
 *    
K
while/Const_3Const^while/Identity*
dtype0*
valueB
 *  �?
M
while/clip_by_value_1/MinimumMinimumwhile/add_3while/Const_3*
T0
W
while/clip_by_value_1Maximumwhile/clip_by_value_1/Minimumwhile/Const_2*
T0
I
while/mul_4Mulwhile/clip_by_value_1while/strided_slice_1*
T0
2

while/TanhTanhwhile/strided_slice_4*
T0
<
while/mul_5Mulwhile/clip_by_value
while/Tanh*
T0
5
while/add_4Addwhile/mul_4while/mul_5*
T0
K
while/mul_6/xConst^while/Identity*
dtype0*
valueB
 *��L>
A
while/mul_6Mulwhile/mul_6/xwhile/strided_slice_5*
T0
K
while/add_5/yConst^while/Identity*
dtype0*
valueB
 *   ?
7
while/add_5Addwhile/mul_6while/add_5/y*
T0
K
while/Const_4Const^while/Identity*
dtype0*
valueB
 *    
K
while/Const_5Const^while/Identity*
dtype0*
valueB
 *  �?
M
while/clip_by_value_2/MinimumMinimumwhile/add_5while/Const_5*
T0
W
while/clip_by_value_2Maximumwhile/clip_by_value_2/Minimumwhile/Const_4*
T0
*
while/Tanh_1Tanhwhile/add_4*
T0
@
while/mul_7Mulwhile/clip_by_value_2while/Tanh_1*
T0
R
while/concat/concat_dimConst^while/Identity*
dtype0*
value	B :
[
while/concatConcatwhile/concat/concat_dimwhile/mul_7while/add_4*
T0*
N
�
while/TensorArrayWriteV2/EnterEnterTensorArray*
_class
loc:@TensorArray*
is_constant(*
T0*

frame_namewhile/while/*
parallel_iterations 
�
while/TensorArrayWriteV2TensorArrayWriteV2while/TensorArrayWriteV2/Enterwhile/Identitywhile/mul_7while/Identity_1*
_class
loc:@TensorArray*
T0
w
while/TensorArray_2/ConstConst^while/Identity*
dtype0*
_class
loc:@TensorArray*
valueB
 *    
H
while/add_6/yConst^while/Identity*
dtype0*
value	B :
:
while/add_6Addwhile/Identitywhile/add_6/y*
T0
:
while/NextIterationNextIterationwhile/add_6*
T0
I
while/NextIteration_1NextIterationwhile/TensorArrayWriteV2*
T0
=
while/NextIteration_2NextIterationwhile/concat*
T0
)

while/ExitExitwhile/Switch*
T0
-
while/Exit_1Exitwhile/Switch_1*
T0
-
while/Exit_2Exitwhile/Switch_2*
T0
s
#TensorArrayPack_1/TensorArraySizeV2TensorArraySizeV2TensorArraywhile/Exit_1*
_class
loc:@TensorArray
g
TensorArrayPack_1/range/startConst*
dtype0*
_class
loc:@TensorArray*
value	B : 
g
TensorArrayPack_1/range/deltaConst*
dtype0*
_class
loc:@TensorArray*
value	B :
�
TensorArrayPack_1/rangeRangeTensorArrayPack_1/range/start#TensorArrayPack_1/TensorArraySizeV2TensorArrayPack_1/range/delta*
_class
loc:@TensorArray*

Tidx0
�
%TensorArrayPack_1/TensorArrayGatherV2TensorArrayGatherV2TensorArrayTensorArrayPack_1/rangewhile/Exit_1*
dtype0*
_class
loc:@TensorArray*$
element_shape:���������
J
strided_slice_2/stackConst*
dtype0*
valueB"        
L
strided_slice_2/stack_1Const*
dtype0*
valueB"       
L
strided_slice_2/stack_2Const*
dtype0*
valueB"      
�
strided_slice_2StridedSlicewhile/Exit_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
new_axis_mask *
Index0*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
J
strided_slice_3/stackConst*
dtype0*
valueB"       
L
strided_slice_3/stack_1Const*
dtype0*
valueB"       
L
strided_slice_3/stack_2Const*
dtype0*
valueB"      
�
strided_slice_3StridedSlicewhile/Exit_2strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
new_axis_mask *
Index0*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
P
Shape_1Shape%TensorArrayPack_1/TensorArrayGatherV2*
out_type0*
T0
C
strided_slice_4/stackConst*
dtype0*
valueB: 
E
strided_slice_4/stack_1Const*
dtype0*
valueB:
E
strided_slice_4/stack_2Const*
dtype0*
valueB:
�
strided_slice_4StridedSliceShape_1strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
new_axis_mask *
Index0*

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
/
sub/yConst*
dtype0*
value	B :
+
subSubstrided_slice_4sub/y*
T0
2
pack_1/1Const*
dtype0*
value	B : 
2
pack_1/2Const*
dtype0*
value	B : 
E
pack_1Packsubpack_1/1pack_1/2*
N*
T0*

axis 
?
pack_2Const*
dtype0*!
valueB"   ��������
[
SliceSlice%TensorArrayPack_1/TensorArrayGatherV2pack_1pack_2*
Index0*
T0
9
SqueezeSqueezeSlice*
squeeze_dims
 *
T0
I
transpose_1/permConst*
dtype0*!
valueB"          
g
transpose_1	Transpose%TensorArrayPack_1/TensorArrayGatherV2transpose_1/perm*
Tperm0*
T0
K
random_uniform_1/shapeConst*
dtype0*
valueB"      
A
random_uniform_1/minConst*
dtype0*
valueB
 *�7��
A
random_uniform_1/maxConst*
dtype0*
valueB
 *�7�?
|
random_uniform_1/RandomUniformRandomUniformrandom_uniform_1/shape*
dtype0*
seed2���L*
seed���)*
T0
P
random_uniform_1/subSubrandom_uniform_1/maxrandom_uniform_1/min*
T0
Z
random_uniform_1/mulMulrandom_uniform_1/RandomUniformrandom_uniform_1/sub*
T0
L
random_uniform_1Addrandom_uniform_1/mulrandom_uniform_1/min*
T0
[
	dense_1_WVariable*
dtype0*
shape
:*
	container *
shared_name 
�
dense_1_W/AssignAssign	dense_1_Wrandom_uniform_1*
validate_shape(*
_class
loc:@dense_1_W*
use_locking(*
T0
L
dense_1_W/readIdentity	dense_1_W*
_class
loc:@dense_1_W*
T0
8
Const_1Const*
dtype0*
valueB*    
W
	dense_1_bVariable*
dtype0*
shape:*
	container *
shared_name 
~
dense_1_b/AssignAssign	dense_1_bConst_1*
validate_shape(*
_class
loc:@dense_1_b*
use_locking(*
T0
L
dense_1_b/readIdentity	dense_1_b*
_class
loc:@dense_1_b*
T0
B
Reshape/shapeConst*
dtype0*
valueB"����   
E
ReshapeReshapetranspose_1Reshape/shape*
T0*
Tshape0
X
MatMulMatMulReshapedense_1_W/read*
transpose_b( *
transpose_a( *
T0
+
addAddMatMuldense_1_b/read*
T0
 
SigmoidSigmoidadd*
T0
H
Reshape_1/shapeConst*
dtype0*!
valueB"����      
E
	Reshape_1ReshapeSigmoidReshape_1/shape*
T0*
Tshape0"