Ķ«
­
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ģ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.11.02v1.11.0-rc2-4-gc19e29306cÓ
n
	raw_inputPlaceholder*
dtype0*(
_output_shapes
:»ī*
shape:»ī
w
convert_image/CastCast	raw_input*

SrcT0*
Truncate( *

DstT0*(
_output_shapes
:»ī
T
convert_image/yConst*
valueB
 *;*
dtype0*
_output_shapes
: 
l
convert_imageMulconvert_image/Castconvert_image/y*
T0*(
_output_shapes
:»ī
J
mul/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
S
mulMulconvert_imagemul/y*
T0*(
_output_shapes
:»ī
J
sub/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
I
subSubmulsub/y*
T0*(
_output_shapes
:»ī
d
Slice/beginConst*
dtype0*
_output_shapes
:*%
valueB"        ś       
c

Slice/sizeConst*%
valueB"’’’’’’’’ś   ’’’’*
dtype0*
_output_shapes
:
l
SliceSlicesubSlice/begin
Slice/size*
T0*
Index0*(
_output_shapes
:»ś
f
Slice_1/beginConst*
dtype0*
_output_shapes
:*%
valueB"                
e
Slice_1/sizeConst*%
valueB"’’’’’’’’ś   ’’’’*
dtype0*
_output_shapes
:
r
Slice_1SlicesubSlice_1/beginSlice_1/size*
T0*
Index0*(
_output_shapes
:»ś
f
Slice_2/beginConst*%
valueB"        ō      *
dtype0*
_output_shapes
:
e
Slice_2/sizeConst*%
valueB"’’’’’’’’ś   ’’’’*
dtype0*
_output_shapes
:
r
Slice_2SlicesubSlice_2/beginSlice_2/size*
T0*
Index0*(
_output_shapes
:»ś
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
y
concatConcatV2Slice_1Slice_2concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:»ō
f
Slice_3/beginConst*%
valueB"                *
dtype0*
_output_shapes
:
e
Slice_3/sizeConst*%
valueB"’’’’’’’’ś   ’’’’*
dtype0*
_output_shapes
:
u
Slice_3SliceconcatSlice_3/beginSlice_3/size*
T0*
Index0*(
_output_shapes
:»ś
f
Slice_4/beginConst*%
valueB"        ś       *
dtype0*
_output_shapes
:
e
Slice_4/sizeConst*%
valueB"’’’’’’’’ś   ’’’’*
dtype0*
_output_shapes
:
u
Slice_4SliceconcatSlice_4/beginSlice_4/size*
T0*
Index0*(
_output_shapes
:»ś
O
concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
}
concat_1ConcatV2Slice_3Slice_4concat_1/axis*
T0*
N*(
_output_shapes
:»ś*

Tidx0
]
pose_prediction/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 

pose_prediction/concatConcatV2Sliceconcat_1pose_prediction/concat/axis*
T0*
N*(
_output_shapes
:»ś	*

Tidx0
Į
:pose_exp_net/cnv1/weights/Initializer/random_uniform/shapeConst*%
valueB"      	      *,
_class"
 loc:@pose_exp_net/cnv1/weights*
dtype0*
_output_shapes
:
«
8pose_exp_net/cnv1/weights/Initializer/random_uniform/minConst*
valueB
 *T½*,
_class"
 loc:@pose_exp_net/cnv1/weights*
dtype0*
_output_shapes
: 
«
8pose_exp_net/cnv1/weights/Initializer/random_uniform/maxConst*
valueB
 *T=*,
_class"
 loc:@pose_exp_net/cnv1/weights*
dtype0*
_output_shapes
: 

Bpose_exp_net/cnv1/weights/Initializer/random_uniform/RandomUniformRandomUniform:pose_exp_net/cnv1/weights/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights*
seed2 *
dtype0*&
_output_shapes
:	*

seed 

8pose_exp_net/cnv1/weights/Initializer/random_uniform/subSub8pose_exp_net/cnv1/weights/Initializer/random_uniform/max8pose_exp_net/cnv1/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights

8pose_exp_net/cnv1/weights/Initializer/random_uniform/mulMulBpose_exp_net/cnv1/weights/Initializer/random_uniform/RandomUniform8pose_exp_net/cnv1/weights/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights*&
_output_shapes
:	

4pose_exp_net/cnv1/weights/Initializer/random_uniformAdd8pose_exp_net/cnv1/weights/Initializer/random_uniform/mul8pose_exp_net/cnv1/weights/Initializer/random_uniform/min*&
_output_shapes
:	*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights
Ė
pose_exp_net/cnv1/weights
VariableV2*
dtype0*&
_output_shapes
:	*
shared_name *,
_class"
 loc:@pose_exp_net/cnv1/weights*
	container *
shape:	

 pose_exp_net/cnv1/weights/AssignAssignpose_exp_net/cnv1/weights4pose_exp_net/cnv1/weights/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights*
validate_shape(*&
_output_shapes
:	
¤
pose_exp_net/cnv1/weights/readIdentitypose_exp_net/cnv1/weights*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights*&
_output_shapes
:	
¼
Ipose_prediction/pose_exp_net/cnv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢL=*,
_class"
 loc:@pose_exp_net/cnv1/weights*
dtype0*
_output_shapes
: 
Ć
Jpose_prediction/pose_exp_net/cnv1/kernel/Regularizer/l2_regularizer/L2LossL2Losspose_exp_net/cnv1/weights/read*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights*
_output_shapes
: 
°
Cpose_prediction/pose_exp_net/cnv1/kernel/Regularizer/l2_regularizerMulIpose_prediction/pose_exp_net/cnv1/kernel/Regularizer/l2_regularizer/scaleJpose_prediction/pose_exp_net/cnv1/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights
¤
*pose_exp_net/cnv1/biases/Initializer/zerosConst*
valueB*    *+
_class!
loc:@pose_exp_net/cnv1/biases*
dtype0*
_output_shapes
:
±
pose_exp_net/cnv1/biases
VariableV2*
shared_name *+
_class!
loc:@pose_exp_net/cnv1/biases*
	container *
shape:*
dtype0*
_output_shapes
:
ź
pose_exp_net/cnv1/biases/AssignAssignpose_exp_net/cnv1/biases*pose_exp_net/cnv1/biases/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv1/biases*
validate_shape(*
_output_shapes
:

pose_exp_net/cnv1/biases/readIdentitypose_exp_net/cnv1/biases*
T0*+
_class!
loc:@pose_exp_net/cnv1/biases*
_output_shapes
:

/pose_prediction/pose_exp_net/cnv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

(pose_prediction/pose_exp_net/cnv1/Conv2DConv2Dpose_prediction/concatpose_exp_net/cnv1/weights/read*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:^}*
	dilations
*
T0*
strides
*
data_formatNHWC
Å
)pose_prediction/pose_exp_net/cnv1/BiasAddBiasAdd(pose_prediction/pose_exp_net/cnv1/Conv2Dpose_exp_net/cnv1/biases/read*&
_output_shapes
:^}*
T0*
data_formatNHWC

&pose_prediction/pose_exp_net/cnv1/ReluRelu)pose_prediction/pose_exp_net/cnv1/BiasAdd*&
_output_shapes
:^}*
T0
Į
:pose_exp_net/cnv2/weights/Initializer/random_uniform/shapeConst*%
valueB"             *,
_class"
 loc:@pose_exp_net/cnv2/weights*
dtype0*
_output_shapes
:
«
8pose_exp_net/cnv2/weights/Initializer/random_uniform/minConst*
valueB
 *ĆŠ½*,
_class"
 loc:@pose_exp_net/cnv2/weights*
dtype0*
_output_shapes
: 
«
8pose_exp_net/cnv2/weights/Initializer/random_uniform/maxConst*
valueB
 *ĆŠ=*,
_class"
 loc:@pose_exp_net/cnv2/weights*
dtype0*
_output_shapes
: 

Bpose_exp_net/cnv2/weights/Initializer/random_uniform/RandomUniformRandomUniform:pose_exp_net/cnv2/weights/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights*
seed2 

8pose_exp_net/cnv2/weights/Initializer/random_uniform/subSub8pose_exp_net/cnv2/weights/Initializer/random_uniform/max8pose_exp_net/cnv2/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights

8pose_exp_net/cnv2/weights/Initializer/random_uniform/mulMulBpose_exp_net/cnv2/weights/Initializer/random_uniform/RandomUniform8pose_exp_net/cnv2/weights/Initializer/random_uniform/sub*&
_output_shapes
: *
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights

4pose_exp_net/cnv2/weights/Initializer/random_uniformAdd8pose_exp_net/cnv2/weights/Initializer/random_uniform/mul8pose_exp_net/cnv2/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights*&
_output_shapes
: 
Ė
pose_exp_net/cnv2/weights
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *,
_class"
 loc:@pose_exp_net/cnv2/weights*
	container *
shape: 

 pose_exp_net/cnv2/weights/AssignAssignpose_exp_net/cnv2/weights4pose_exp_net/cnv2/weights/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights*
validate_shape(*&
_output_shapes
: 
¤
pose_exp_net/cnv2/weights/readIdentitypose_exp_net/cnv2/weights*
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights*&
_output_shapes
: 
¼
Ipose_prediction/pose_exp_net/cnv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢL=*,
_class"
 loc:@pose_exp_net/cnv2/weights*
dtype0*
_output_shapes
: 
Ć
Jpose_prediction/pose_exp_net/cnv2/kernel/Regularizer/l2_regularizer/L2LossL2Losspose_exp_net/cnv2/weights/read*
_output_shapes
: *
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights
°
Cpose_prediction/pose_exp_net/cnv2/kernel/Regularizer/l2_regularizerMulIpose_prediction/pose_exp_net/cnv2/kernel/Regularizer/l2_regularizer/scaleJpose_prediction/pose_exp_net/cnv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights*
_output_shapes
: 
¤
*pose_exp_net/cnv2/biases/Initializer/zerosConst*
valueB *    *+
_class!
loc:@pose_exp_net/cnv2/biases*
dtype0*
_output_shapes
: 
±
pose_exp_net/cnv2/biases
VariableV2*
shared_name *+
_class!
loc:@pose_exp_net/cnv2/biases*
	container *
shape: *
dtype0*
_output_shapes
: 
ź
pose_exp_net/cnv2/biases/AssignAssignpose_exp_net/cnv2/biases*pose_exp_net/cnv2/biases/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv2/biases*
validate_shape(*
_output_shapes
: 

pose_exp_net/cnv2/biases/readIdentitypose_exp_net/cnv2/biases*
_output_shapes
: *
T0*+
_class!
loc:@pose_exp_net/cnv2/biases

/pose_prediction/pose_exp_net/cnv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

(pose_prediction/pose_exp_net/cnv2/Conv2DConv2D&pose_prediction/pose_exp_net/cnv1/Relupose_exp_net/cnv2/weights/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:/? 
Å
)pose_prediction/pose_exp_net/cnv2/BiasAddBiasAdd(pose_prediction/pose_exp_net/cnv2/Conv2Dpose_exp_net/cnv2/biases/read*&
_output_shapes
:/? *
T0*
data_formatNHWC

&pose_prediction/pose_exp_net/cnv2/ReluRelu)pose_prediction/pose_exp_net/cnv2/BiasAdd*&
_output_shapes
:/? *
T0
Į
:pose_exp_net/cnv3/weights/Initializer/random_uniform/shapeConst*%
valueB"          @   *,
_class"
 loc:@pose_exp_net/cnv3/weights*
dtype0*
_output_shapes
:
«
8pose_exp_net/cnv3/weights/Initializer/random_uniform/minConst*
valueB
 *«ŖŖ½*,
_class"
 loc:@pose_exp_net/cnv3/weights*
dtype0*
_output_shapes
: 
«
8pose_exp_net/cnv3/weights/Initializer/random_uniform/maxConst*
valueB
 *«ŖŖ=*,
_class"
 loc:@pose_exp_net/cnv3/weights*
dtype0*
_output_shapes
: 

Bpose_exp_net/cnv3/weights/Initializer/random_uniform/RandomUniformRandomUniform:pose_exp_net/cnv3/weights/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
: @*

seed *
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights

8pose_exp_net/cnv3/weights/Initializer/random_uniform/subSub8pose_exp_net/cnv3/weights/Initializer/random_uniform/max8pose_exp_net/cnv3/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights*
_output_shapes
: 

8pose_exp_net/cnv3/weights/Initializer/random_uniform/mulMulBpose_exp_net/cnv3/weights/Initializer/random_uniform/RandomUniform8pose_exp_net/cnv3/weights/Initializer/random_uniform/sub*&
_output_shapes
: @*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights

4pose_exp_net/cnv3/weights/Initializer/random_uniformAdd8pose_exp_net/cnv3/weights/Initializer/random_uniform/mul8pose_exp_net/cnv3/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights*&
_output_shapes
: @
Ė
pose_exp_net/cnv3/weights
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *,
_class"
 loc:@pose_exp_net/cnv3/weights*
	container *
shape: @

 pose_exp_net/cnv3/weights/AssignAssignpose_exp_net/cnv3/weights4pose_exp_net/cnv3/weights/Initializer/random_uniform*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights
¤
pose_exp_net/cnv3/weights/readIdentitypose_exp_net/cnv3/weights*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights*&
_output_shapes
: @
¼
Ipose_prediction/pose_exp_net/cnv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢL=*,
_class"
 loc:@pose_exp_net/cnv3/weights*
dtype0*
_output_shapes
: 
Ć
Jpose_prediction/pose_exp_net/cnv3/kernel/Regularizer/l2_regularizer/L2LossL2Losspose_exp_net/cnv3/weights/read*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights*
_output_shapes
: 
°
Cpose_prediction/pose_exp_net/cnv3/kernel/Regularizer/l2_regularizerMulIpose_prediction/pose_exp_net/cnv3/kernel/Regularizer/l2_regularizer/scaleJpose_prediction/pose_exp_net/cnv3/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights
¤
*pose_exp_net/cnv3/biases/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *+
_class!
loc:@pose_exp_net/cnv3/biases
±
pose_exp_net/cnv3/biases
VariableV2*
shared_name *+
_class!
loc:@pose_exp_net/cnv3/biases*
	container *
shape:@*
dtype0*
_output_shapes
:@
ź
pose_exp_net/cnv3/biases/AssignAssignpose_exp_net/cnv3/biases*pose_exp_net/cnv3/biases/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv3/biases*
validate_shape(*
_output_shapes
:@

pose_exp_net/cnv3/biases/readIdentitypose_exp_net/cnv3/biases*
T0*+
_class!
loc:@pose_exp_net/cnv3/biases*
_output_shapes
:@

/pose_prediction/pose_exp_net/cnv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

(pose_prediction/pose_exp_net/cnv3/Conv2DConv2D&pose_prediction/pose_exp_net/cnv2/Relupose_exp_net/cnv3/weights/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: @
Å
)pose_prediction/pose_exp_net/cnv3/BiasAddBiasAdd(pose_prediction/pose_exp_net/cnv3/Conv2Dpose_exp_net/cnv3/biases/read*
T0*
data_formatNHWC*&
_output_shapes
: @

&pose_prediction/pose_exp_net/cnv3/ReluRelu)pose_prediction/pose_exp_net/cnv3/BiasAdd*
T0*&
_output_shapes
: @
Į
:pose_exp_net/cnv4/weights/Initializer/random_uniform/shapeConst*%
valueB"      @      *,
_class"
 loc:@pose_exp_net/cnv4/weights*
dtype0*
_output_shapes
:
«
8pose_exp_net/cnv4/weights/Initializer/random_uniform/minConst*
valueB
 *ļ[q½*,
_class"
 loc:@pose_exp_net/cnv4/weights*
dtype0*
_output_shapes
: 
«
8pose_exp_net/cnv4/weights/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ļ[q=*,
_class"
 loc:@pose_exp_net/cnv4/weights

Bpose_exp_net/cnv4/weights/Initializer/random_uniform/RandomUniformRandomUniform:pose_exp_net/cnv4/weights/Initializer/random_uniform/shape*

seed *
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*
seed2 *
dtype0*'
_output_shapes
:@

8pose_exp_net/cnv4/weights/Initializer/random_uniform/subSub8pose_exp_net/cnv4/weights/Initializer/random_uniform/max8pose_exp_net/cnv4/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*
_output_shapes
: 

8pose_exp_net/cnv4/weights/Initializer/random_uniform/mulMulBpose_exp_net/cnv4/weights/Initializer/random_uniform/RandomUniform8pose_exp_net/cnv4/weights/Initializer/random_uniform/sub*'
_output_shapes
:@*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights

4pose_exp_net/cnv4/weights/Initializer/random_uniformAdd8pose_exp_net/cnv4/weights/Initializer/random_uniform/mul8pose_exp_net/cnv4/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*'
_output_shapes
:@
Ķ
pose_exp_net/cnv4/weights
VariableV2*
dtype0*'
_output_shapes
:@*
shared_name *,
_class"
 loc:@pose_exp_net/cnv4/weights*
	container *
shape:@

 pose_exp_net/cnv4/weights/AssignAssignpose_exp_net/cnv4/weights4pose_exp_net/cnv4/weights/Initializer/random_uniform*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*
validate_shape(*'
_output_shapes
:@*
use_locking(
„
pose_exp_net/cnv4/weights/readIdentitypose_exp_net/cnv4/weights*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*'
_output_shapes
:@
¼
Ipose_prediction/pose_exp_net/cnv4/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢL=*,
_class"
 loc:@pose_exp_net/cnv4/weights*
dtype0*
_output_shapes
: 
Ć
Jpose_prediction/pose_exp_net/cnv4/kernel/Regularizer/l2_regularizer/L2LossL2Losspose_exp_net/cnv4/weights/read*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*
_output_shapes
: 
°
Cpose_prediction/pose_exp_net/cnv4/kernel/Regularizer/l2_regularizerMulIpose_prediction/pose_exp_net/cnv4/kernel/Regularizer/l2_regularizer/scaleJpose_prediction/pose_exp_net/cnv4/kernel/Regularizer/l2_regularizer/L2Loss*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*
_output_shapes
: 
¦
*pose_exp_net/cnv4/biases/Initializer/zerosConst*
valueB*    *+
_class!
loc:@pose_exp_net/cnv4/biases*
dtype0*
_output_shapes	
:
³
pose_exp_net/cnv4/biases
VariableV2*+
_class!
loc:@pose_exp_net/cnv4/biases*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ė
pose_exp_net/cnv4/biases/AssignAssignpose_exp_net/cnv4/biases*pose_exp_net/cnv4/biases/Initializer/zeros*
T0*+
_class!
loc:@pose_exp_net/cnv4/biases*
validate_shape(*
_output_shapes	
:*
use_locking(

pose_exp_net/cnv4/biases/readIdentitypose_exp_net/cnv4/biases*
T0*+
_class!
loc:@pose_exp_net/cnv4/biases*
_output_shapes	
:

/pose_prediction/pose_exp_net/cnv4/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

(pose_prediction/pose_exp_net/cnv4/Conv2DConv2D&pose_prediction/pose_exp_net/cnv3/Relupose_exp_net/cnv4/weights/read*'
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ę
)pose_prediction/pose_exp_net/cnv4/BiasAddBiasAdd(pose_prediction/pose_exp_net/cnv4/Conv2Dpose_exp_net/cnv4/biases/read*
data_formatNHWC*'
_output_shapes
:*
T0

&pose_prediction/pose_exp_net/cnv4/ReluRelu)pose_prediction/pose_exp_net/cnv4/BiasAdd*
T0*'
_output_shapes
:
Į
:pose_exp_net/cnv5/weights/Initializer/random_uniform/shapeConst*%
valueB"            *,
_class"
 loc:@pose_exp_net/cnv5/weights*
dtype0*
_output_shapes
:
«
8pose_exp_net/cnv5/weights/Initializer/random_uniform/minConst*
valueB
 *«Ŗ*½*,
_class"
 loc:@pose_exp_net/cnv5/weights*
dtype0*
_output_shapes
: 
«
8pose_exp_net/cnv5/weights/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *«Ŗ*=*,
_class"
 loc:@pose_exp_net/cnv5/weights

Bpose_exp_net/cnv5/weights/Initializer/random_uniform/RandomUniformRandomUniform:pose_exp_net/cnv5/weights/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights*
seed2 

8pose_exp_net/cnv5/weights/Initializer/random_uniform/subSub8pose_exp_net/cnv5/weights/Initializer/random_uniform/max8pose_exp_net/cnv5/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights

8pose_exp_net/cnv5/weights/Initializer/random_uniform/mulMulBpose_exp_net/cnv5/weights/Initializer/random_uniform/RandomUniform8pose_exp_net/cnv5/weights/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights*(
_output_shapes
:

4pose_exp_net/cnv5/weights/Initializer/random_uniformAdd8pose_exp_net/cnv5/weights/Initializer/random_uniform/mul8pose_exp_net/cnv5/weights/Initializer/random_uniform/min*(
_output_shapes
:*
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights
Ļ
pose_exp_net/cnv5/weights
VariableV2*
shared_name *,
_class"
 loc:@pose_exp_net/cnv5/weights*
	container *
shape:*
dtype0*(
_output_shapes
:

 pose_exp_net/cnv5/weights/AssignAssignpose_exp_net/cnv5/weights4pose_exp_net/cnv5/weights/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights*
validate_shape(*(
_output_shapes
:
¦
pose_exp_net/cnv5/weights/readIdentitypose_exp_net/cnv5/weights*,
_class"
 loc:@pose_exp_net/cnv5/weights*(
_output_shapes
:*
T0
¼
Ipose_prediction/pose_exp_net/cnv5/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢL=*,
_class"
 loc:@pose_exp_net/cnv5/weights*
dtype0*
_output_shapes
: 
Ć
Jpose_prediction/pose_exp_net/cnv5/kernel/Regularizer/l2_regularizer/L2LossL2Losspose_exp_net/cnv5/weights/read*,
_class"
 loc:@pose_exp_net/cnv5/weights*
_output_shapes
: *
T0
°
Cpose_prediction/pose_exp_net/cnv5/kernel/Regularizer/l2_regularizerMulIpose_prediction/pose_exp_net/cnv5/kernel/Regularizer/l2_regularizer/scaleJpose_prediction/pose_exp_net/cnv5/kernel/Regularizer/l2_regularizer/L2Loss*
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights*
_output_shapes
: 
¦
*pose_exp_net/cnv5/biases/Initializer/zerosConst*
valueB*    *+
_class!
loc:@pose_exp_net/cnv5/biases*
dtype0*
_output_shapes	
:
³
pose_exp_net/cnv5/biases
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *+
_class!
loc:@pose_exp_net/cnv5/biases*
	container *
shape:
ė
pose_exp_net/cnv5/biases/AssignAssignpose_exp_net/cnv5/biases*pose_exp_net/cnv5/biases/Initializer/zeros*
T0*+
_class!
loc:@pose_exp_net/cnv5/biases*
validate_shape(*
_output_shapes	
:*
use_locking(

pose_exp_net/cnv5/biases/readIdentitypose_exp_net/cnv5/biases*
T0*+
_class!
loc:@pose_exp_net/cnv5/biases*
_output_shapes	
:

/pose_prediction/pose_exp_net/cnv5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

(pose_prediction/pose_exp_net/cnv5/Conv2DConv2D&pose_prediction/pose_exp_net/cnv4/Relupose_exp_net/cnv5/weights/read*
paddingSAME*'
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ę
)pose_prediction/pose_exp_net/cnv5/BiasAddBiasAdd(pose_prediction/pose_exp_net/cnv5/Conv2Dpose_exp_net/cnv5/biases/read*
T0*
data_formatNHWC*'
_output_shapes
:

&pose_prediction/pose_exp_net/cnv5/ReluRelu)pose_prediction/pose_exp_net/cnv5/BiasAdd*
T0*'
_output_shapes
:
Ė
?pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/shapeConst*%
valueB"            *1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
dtype0*
_output_shapes
:
µ
=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *:Ķ½*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights
µ
=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/maxConst*
valueB
 *:Ķ=*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
dtype0*
_output_shapes
: 
„
Gpose_exp_net/pose/cnv6/weights/Initializer/random_uniform/RandomUniformRandomUniform?pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/shape*

seed *
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
seed2 *
dtype0*(
_output_shapes
:

=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/subSub=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/max=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
_output_shapes
: 
²
=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/mulMulGpose_exp_net/pose/cnv6/weights/Initializer/random_uniform/RandomUniform=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights
¤
9pose_exp_net/pose/cnv6/weights/Initializer/random_uniformAdd=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/mul=pose_exp_net/pose/cnv6/weights/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*(
_output_shapes
:
Ł
pose_exp_net/pose/cnv6/weights
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
	container *
shape:

%pose_exp_net/pose/cnv6/weights/AssignAssignpose_exp_net/pose/cnv6/weights9pose_exp_net/pose/cnv6/weights/Initializer/random_uniform*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
validate_shape(*(
_output_shapes
:
µ
#pose_exp_net/pose/cnv6/weights/readIdentitypose_exp_net/pose/cnv6/weights*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*(
_output_shapes
:
Ę
Npose_prediction/pose_exp_net/pose/cnv6/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢL=*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
dtype0*
_output_shapes
: 
Ņ
Opose_prediction/pose_exp_net/pose/cnv6/kernel/Regularizer/l2_regularizer/L2LossL2Loss#pose_exp_net/pose/cnv6/weights/read*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
_output_shapes
: 
Ä
Hpose_prediction/pose_exp_net/pose/cnv6/kernel/Regularizer/l2_regularizerMulNpose_prediction/pose_exp_net/pose/cnv6/kernel/Regularizer/l2_regularizer/scaleOpose_prediction/pose_exp_net/pose/cnv6/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights
°
/pose_exp_net/pose/cnv6/biases/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *0
_class&
$"loc:@pose_exp_net/pose/cnv6/biases*
dtype0
½
pose_exp_net/pose/cnv6/biases
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *0
_class&
$"loc:@pose_exp_net/pose/cnv6/biases*
	container *
shape:
’
$pose_exp_net/pose/cnv6/biases/AssignAssignpose_exp_net/pose/cnv6/biases/pose_exp_net/pose/cnv6/biases/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*0
_class&
$"loc:@pose_exp_net/pose/cnv6/biases
„
"pose_exp_net/pose/cnv6/biases/readIdentitypose_exp_net/pose/cnv6/biases*
T0*0
_class&
$"loc:@pose_exp_net/pose/cnv6/biases*
_output_shapes	
:

4pose_prediction/pose_exp_net/pose/cnv6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¤
-pose_prediction/pose_exp_net/pose/cnv6/Conv2DConv2D&pose_prediction/pose_exp_net/cnv5/Relu#pose_exp_net/pose/cnv6/weights/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:*
	dilations

Õ
.pose_prediction/pose_exp_net/pose/cnv6/BiasAddBiasAdd-pose_prediction/pose_exp_net/pose/cnv6/Conv2D"pose_exp_net/pose/cnv6/biases/read*
T0*
data_formatNHWC*'
_output_shapes
:

+pose_prediction/pose_exp_net/pose/cnv6/ReluRelu.pose_prediction/pose_exp_net/pose/cnv6/BiasAdd*
T0*'
_output_shapes
:
Ė
?pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/shapeConst*%
valueB"            *1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*
dtype0*
_output_shapes
:
µ
=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/minConst*
valueB
 *:Ķ½*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*
dtype0*
_output_shapes
: 
µ
=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/maxConst*
valueB
 *:Ķ=*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*
dtype0*
_output_shapes
: 
„
Gpose_exp_net/pose/cnv7/weights/Initializer/random_uniform/RandomUniformRandomUniform?pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*
seed2 

=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/subSub=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/max=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights
²
=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/mulMulGpose_exp_net/pose/cnv7/weights/Initializer/random_uniform/RandomUniform=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*(
_output_shapes
:
¤
9pose_exp_net/pose/cnv7/weights/Initializer/random_uniformAdd=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/mul=pose_exp_net/pose/cnv7/weights/Initializer/random_uniform/min*(
_output_shapes
:*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights
Ł
pose_exp_net/pose/cnv7/weights
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*
	container *
shape:

%pose_exp_net/pose/cnv7/weights/AssignAssignpose_exp_net/pose/cnv7/weights9pose_exp_net/pose/cnv7/weights/Initializer/random_uniform*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights
µ
#pose_exp_net/pose/cnv7/weights/readIdentitypose_exp_net/pose/cnv7/weights*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*(
_output_shapes
:
Ę
Npose_prediction/pose_exp_net/pose/cnv7/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢL=*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*
dtype0*
_output_shapes
: 
Ņ
Opose_prediction/pose_exp_net/pose/cnv7/kernel/Regularizer/l2_regularizer/L2LossL2Loss#pose_exp_net/pose/cnv7/weights/read*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*
_output_shapes
: 
Ä
Hpose_prediction/pose_exp_net/pose/cnv7/kernel/Regularizer/l2_regularizerMulNpose_prediction/pose_exp_net/pose/cnv7/kernel/Regularizer/l2_regularizer/scaleOpose_prediction/pose_exp_net/pose/cnv7/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights
°
/pose_exp_net/pose/cnv7/biases/Initializer/zerosConst*
valueB*    *0
_class&
$"loc:@pose_exp_net/pose/cnv7/biases*
dtype0*
_output_shapes	
:
½
pose_exp_net/pose/cnv7/biases
VariableV2*
shared_name *0
_class&
$"loc:@pose_exp_net/pose/cnv7/biases*
	container *
shape:*
dtype0*
_output_shapes	
:
’
$pose_exp_net/pose/cnv7/biases/AssignAssignpose_exp_net/pose/cnv7/biases/pose_exp_net/pose/cnv7/biases/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@pose_exp_net/pose/cnv7/biases*
validate_shape(*
_output_shapes	
:
„
"pose_exp_net/pose/cnv7/biases/readIdentitypose_exp_net/pose/cnv7/biases*
T0*0
_class&
$"loc:@pose_exp_net/pose/cnv7/biases*
_output_shapes	
:

4pose_prediction/pose_exp_net/pose/cnv7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
©
-pose_prediction/pose_exp_net/pose/cnv7/Conv2DConv2D+pose_prediction/pose_exp_net/pose/cnv6/Relu#pose_exp_net/pose/cnv7/weights/read*'
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Õ
.pose_prediction/pose_exp_net/pose/cnv7/BiasAddBiasAdd-pose_prediction/pose_exp_net/pose/cnv7/Conv2D"pose_exp_net/pose/cnv7/biases/read*
T0*
data_formatNHWC*'
_output_shapes
:

+pose_prediction/pose_exp_net/pose/cnv7/ReluRelu.pose_prediction/pose_exp_net/pose/cnv7/BiasAdd*
T0*'
_output_shapes
:
Ė
?pose_exp_net/pose/pred/weights/Initializer/random_uniform/shapeConst*%
valueB"            *1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
:
µ
=pose_exp_net/pose/pred/weights/Initializer/random_uniform/minConst*
valueB
 *Ŗ7¾*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
: 
µ
=pose_exp_net/pose/pred/weights/Initializer/random_uniform/maxConst*
valueB
 *Ŗ7>*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
: 
¤
Gpose_exp_net/pose/pred/weights/Initializer/random_uniform/RandomUniformRandomUniform?pose_exp_net/pose/pred/weights/Initializer/random_uniform/shape*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
seed2 *
dtype0*'
_output_shapes
:*

seed 

=pose_exp_net/pose/pred/weights/Initializer/random_uniform/subSub=pose_exp_net/pose/pred/weights/Initializer/random_uniform/max=pose_exp_net/pose/pred/weights/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
_output_shapes
: 
±
=pose_exp_net/pose/pred/weights/Initializer/random_uniform/mulMulGpose_exp_net/pose/pred/weights/Initializer/random_uniform/RandomUniform=pose_exp_net/pose/pred/weights/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*'
_output_shapes
:
£
9pose_exp_net/pose/pred/weights/Initializer/random_uniformAdd=pose_exp_net/pose/pred/weights/Initializer/random_uniform/mul=pose_exp_net/pose/pred/weights/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*'
_output_shapes
:
×
pose_exp_net/pose/pred/weights
VariableV2*
dtype0*'
_output_shapes
:*
shared_name *1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
	container *
shape:

%pose_exp_net/pose/pred/weights/AssignAssignpose_exp_net/pose/pred/weights9pose_exp_net/pose/pred/weights/Initializer/random_uniform*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
validate_shape(*'
_output_shapes
:*
use_locking(
“
#pose_exp_net/pose/pred/weights/readIdentitypose_exp_net/pose/pred/weights*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*'
_output_shapes
:
Ę
Npose_prediction/pose_exp_net/pose/pred/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢL=*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
: 
Ņ
Opose_prediction/pose_exp_net/pose/pred/kernel/Regularizer/l2_regularizer/L2LossL2Loss#pose_exp_net/pose/pred/weights/read*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
_output_shapes
: 
Ä
Hpose_prediction/pose_exp_net/pose/pred/kernel/Regularizer/l2_regularizerMulNpose_prediction/pose_exp_net/pose/pred/kernel/Regularizer/l2_regularizer/scaleOpose_prediction/pose_exp_net/pose/pred/kernel/Regularizer/l2_regularizer/L2Loss*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
_output_shapes
: 
®
/pose_exp_net/pose/pred/biases/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *0
_class&
$"loc:@pose_exp_net/pose/pred/biases
»
pose_exp_net/pose/pred/biases
VariableV2*
dtype0*
_output_shapes
:*
shared_name *0
_class&
$"loc:@pose_exp_net/pose/pred/biases*
	container *
shape:
ž
$pose_exp_net/pose/pred/biases/AssignAssignpose_exp_net/pose/pred/biases/pose_exp_net/pose/pred/biases/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*0
_class&
$"loc:@pose_exp_net/pose/pred/biases
¤
"pose_exp_net/pose/pred/biases/readIdentitypose_exp_net/pose/pred/biases*
T0*0
_class&
$"loc:@pose_exp_net/pose/pred/biases*
_output_shapes
:

4pose_prediction/pose_exp_net/pose/pred/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ø
-pose_prediction/pose_exp_net/pose/pred/Conv2DConv2D+pose_prediction/pose_exp_net/pose/cnv7/Relu#pose_exp_net/pose/pred/weights/read*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ō
.pose_prediction/pose_exp_net/pose/pred/BiasAddBiasAdd-pose_prediction/pose_exp_net/pose/pred/Conv2D"pose_exp_net/pose/pred/biases/read*
T0*
data_formatNHWC*&
_output_shapes
:

8pose_prediction/pose_exp_net/pose/Mean/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
Ž
&pose_prediction/pose_exp_net/pose/MeanMean.pose_prediction/pose_exp_net/pose/pred/BiasAdd8pose_prediction/pose_exp_net/pose/Mean/reduction_indices*
_output_shapes

:*

Tidx0*
	keep_dims( *
T0

/pose_prediction/pose_exp_net/pose/Reshape/shapeConst*!
valueB"’’’’      *
dtype0*
_output_shapes
:
Č
)pose_prediction/pose_exp_net/pose/ReshapeReshape&pose_prediction/pose_exp_net/pose/Mean/pose_prediction/pose_exp_net/pose/Reshape/shape*
T0*
Tshape0*"
_output_shapes
:
l
'pose_prediction/pose_exp_net/pose/mul/xConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
­
%pose_prediction/pose_exp_net/pose/mulMul'pose_prediction/pose_exp_net/pose/mul/x)pose_prediction/pose_exp_net/pose/Reshape*"
_output_shapes
:*
T0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ø
save/SaveV2/tensor_namesConst*Ū
valueŃBĪBpose_exp_net/cnv1/biasesBpose_exp_net/cnv1/weightsBpose_exp_net/cnv2/biasesBpose_exp_net/cnv2/weightsBpose_exp_net/cnv3/biasesBpose_exp_net/cnv3/weightsBpose_exp_net/cnv4/biasesBpose_exp_net/cnv4/weightsBpose_exp_net/cnv5/biasesBpose_exp_net/cnv5/weightsBpose_exp_net/pose/cnv6/biasesBpose_exp_net/pose/cnv6/weightsBpose_exp_net/pose/cnv7/biasesBpose_exp_net/pose/cnv7/weightsBpose_exp_net/pose/pred/biasesBpose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
æ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicespose_exp_net/cnv1/biasespose_exp_net/cnv1/weightspose_exp_net/cnv2/biasespose_exp_net/cnv2/weightspose_exp_net/cnv3/biasespose_exp_net/cnv3/weightspose_exp_net/cnv4/biasespose_exp_net/cnv4/weightspose_exp_net/cnv5/biasespose_exp_net/cnv5/weightspose_exp_net/pose/cnv6/biasespose_exp_net/pose/cnv6/weightspose_exp_net/pose/cnv7/biasespose_exp_net/pose/cnv7/weightspose_exp_net/pose/pred/biasespose_exp_net/pose/pred/weights*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
«
save/RestoreV2/tensor_namesConst*Ū
valueŃBĪBpose_exp_net/cnv1/biasesBpose_exp_net/cnv1/weightsBpose_exp_net/cnv2/biasesBpose_exp_net/cnv2/weightsBpose_exp_net/cnv3/biasesBpose_exp_net/cnv3/weightsBpose_exp_net/cnv4/biasesBpose_exp_net/cnv4/weightsBpose_exp_net/cnv5/biasesBpose_exp_net/cnv5/weightsBpose_exp_net/pose/cnv6/biasesBpose_exp_net/pose/cnv6/weightsBpose_exp_net/pose/cnv7/biasesBpose_exp_net/pose/cnv7/weightsBpose_exp_net/pose/pred/biasesBpose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ū
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*T
_output_shapesB
@::::::::::::::::*
dtypes
2
ŗ
save/AssignAssignpose_exp_net/cnv1/biasessave/RestoreV2*
T0*+
_class!
loc:@pose_exp_net/cnv1/biases*
validate_shape(*
_output_shapes
:*
use_locking(
Ģ
save/Assign_1Assignpose_exp_net/cnv1/weightssave/RestoreV2:1*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights*
validate_shape(*&
_output_shapes
:	
¾
save/Assign_2Assignpose_exp_net/cnv2/biasessave/RestoreV2:2*
T0*+
_class!
loc:@pose_exp_net/cnv2/biases*
validate_shape(*
_output_shapes
: *
use_locking(
Ģ
save/Assign_3Assignpose_exp_net/cnv2/weightssave/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights*
validate_shape(*&
_output_shapes
: 
¾
save/Assign_4Assignpose_exp_net/cnv3/biasessave/RestoreV2:4*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv3/biases
Ģ
save/Assign_5Assignpose_exp_net/cnv3/weightssave/RestoreV2:5*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights
æ
save/Assign_6Assignpose_exp_net/cnv4/biasessave/RestoreV2:6*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv4/biases*
validate_shape(*
_output_shapes	
:
Ķ
save/Assign_7Assignpose_exp_net/cnv4/weightssave/RestoreV2:7*'
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*
validate_shape(
æ
save/Assign_8Assignpose_exp_net/cnv5/biasessave/RestoreV2:8*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv5/biases*
validate_shape(*
_output_shapes	
:
Ī
save/Assign_9Assignpose_exp_net/cnv5/weightssave/RestoreV2:9*(
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights*
validate_shape(
Ė
save/Assign_10Assignpose_exp_net/pose/cnv6/biasessave/RestoreV2:10*0
_class&
$"loc:@pose_exp_net/pose/cnv6/biases*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ś
save/Assign_11Assignpose_exp_net/pose/cnv6/weightssave/RestoreV2:11*(
_output_shapes
:*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
validate_shape(
Ė
save/Assign_12Assignpose_exp_net/pose/cnv7/biasessave/RestoreV2:12*0
_class&
$"loc:@pose_exp_net/pose/cnv7/biases*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ś
save/Assign_13Assignpose_exp_net/pose/cnv7/weightssave/RestoreV2:13*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ź
save/Assign_14Assignpose_exp_net/pose/pred/biasessave/RestoreV2:14*
use_locking(*
T0*0
_class&
$"loc:@pose_exp_net/pose/pred/biases*
validate_shape(*
_output_shapes
:
Ł
save/Assign_15Assignpose_exp_net/pose/pred/weightssave/RestoreV2:15*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
validate_shape(*'
_output_shapes
:

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ŗ
save_1/SaveV2/tensor_namesConst*Ū
valueŃBĪBpose_exp_net/cnv1/biasesBpose_exp_net/cnv1/weightsBpose_exp_net/cnv2/biasesBpose_exp_net/cnv2/weightsBpose_exp_net/cnv3/biasesBpose_exp_net/cnv3/weightsBpose_exp_net/cnv4/biasesBpose_exp_net/cnv4/weightsBpose_exp_net/cnv5/biasesBpose_exp_net/cnv5/weightsBpose_exp_net/pose/cnv6/biasesBpose_exp_net/pose/cnv6/weightsBpose_exp_net/pose/cnv7/biasesBpose_exp_net/pose/cnv7/weightsBpose_exp_net/pose/pred/biasesBpose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*3
value*B(B B B B B B B B B B B B B B B B 
Ē
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicespose_exp_net/cnv1/biasespose_exp_net/cnv1/weightspose_exp_net/cnv2/biasespose_exp_net/cnv2/weightspose_exp_net/cnv3/biasespose_exp_net/cnv3/weightspose_exp_net/cnv4/biasespose_exp_net/cnv4/weightspose_exp_net/cnv5/biasespose_exp_net/cnv5/weightspose_exp_net/pose/cnv6/biasespose_exp_net/pose/cnv6/weightspose_exp_net/pose/cnv7/biasespose_exp_net/pose/cnv7/weightspose_exp_net/pose/pred/biasespose_exp_net/pose/pred/weights*
dtypes
2

save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
­
save_1/RestoreV2/tensor_namesConst*Ū
valueŃBĪBpose_exp_net/cnv1/biasesBpose_exp_net/cnv1/weightsBpose_exp_net/cnv2/biasesBpose_exp_net/cnv2/weightsBpose_exp_net/cnv3/biasesBpose_exp_net/cnv3/weightsBpose_exp_net/cnv4/biasesBpose_exp_net/cnv4/weightsBpose_exp_net/cnv5/biasesBpose_exp_net/cnv5/weightsBpose_exp_net/pose/cnv6/biasesBpose_exp_net/pose/cnv6/weightsBpose_exp_net/pose/cnv7/biasesBpose_exp_net/pose/cnv7/weightsBpose_exp_net/pose/pred/biasesBpose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ć
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*T
_output_shapesB
@::::::::::::::::*
dtypes
2
¾
save_1/AssignAssignpose_exp_net/cnv1/biasessave_1/RestoreV2*
T0*+
_class!
loc:@pose_exp_net/cnv1/biases*
validate_shape(*
_output_shapes
:*
use_locking(
Š
save_1/Assign_1Assignpose_exp_net/cnv1/weightssave_1/RestoreV2:1*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights*
validate_shape(*&
_output_shapes
:	
Ā
save_1/Assign_2Assignpose_exp_net/cnv2/biasessave_1/RestoreV2:2*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv2/biases*
validate_shape(*
_output_shapes
: 
Š
save_1/Assign_3Assignpose_exp_net/cnv2/weightssave_1/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights*
validate_shape(*&
_output_shapes
: 
Ā
save_1/Assign_4Assignpose_exp_net/cnv3/biasessave_1/RestoreV2:4*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv3/biases*
validate_shape(
Š
save_1/Assign_5Assignpose_exp_net/cnv3/weightssave_1/RestoreV2:5*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights*
validate_shape(
Ć
save_1/Assign_6Assignpose_exp_net/cnv4/biasessave_1/RestoreV2:6*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv4/biases*
validate_shape(*
_output_shapes	
:
Ń
save_1/Assign_7Assignpose_exp_net/cnv4/weightssave_1/RestoreV2:7*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*
validate_shape(*'
_output_shapes
:@
Ć
save_1/Assign_8Assignpose_exp_net/cnv5/biasessave_1/RestoreV2:8*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv5/biases*
validate_shape(*
_output_shapes	
:
Ņ
save_1/Assign_9Assignpose_exp_net/cnv5/weightssave_1/RestoreV2:9*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights*
validate_shape(*(
_output_shapes
:
Ļ
save_1/Assign_10Assignpose_exp_net/pose/cnv6/biasessave_1/RestoreV2:10*
_output_shapes	
:*
use_locking(*
T0*0
_class&
$"loc:@pose_exp_net/pose/cnv6/biases*
validate_shape(
Ž
save_1/Assign_11Assignpose_exp_net/pose/cnv6/weightssave_1/RestoreV2:11*(
_output_shapes
:*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
validate_shape(
Ļ
save_1/Assign_12Assignpose_exp_net/pose/cnv7/biasessave_1/RestoreV2:12*
use_locking(*
T0*0
_class&
$"loc:@pose_exp_net/pose/cnv7/biases*
validate_shape(*
_output_shapes	
:
Ž
save_1/Assign_13Assignpose_exp_net/pose/cnv7/weightssave_1/RestoreV2:13*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights
Ī
save_1/Assign_14Assignpose_exp_net/pose/pred/biasessave_1/RestoreV2:14*
T0*0
_class&
$"loc:@pose_exp_net/pose/pred/biases*
validate_shape(*
_output_shapes
:*
use_locking(
Ż
save_1/Assign_15Assignpose_exp_net/pose/pred/weightssave_1/RestoreV2:15*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
validate_shape(*'
_output_shapes
:*
use_locking(
¾
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_fd48660199df4d5cb0e163937370e6c4/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_2/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
Ŗ
save_2/SaveV2/tensor_namesConst*Ū
valueŃBĪBpose_exp_net/cnv1/biasesBpose_exp_net/cnv1/weightsBpose_exp_net/cnv2/biasesBpose_exp_net/cnv2/weightsBpose_exp_net/cnv3/biasesBpose_exp_net/cnv3/weightsBpose_exp_net/cnv4/biasesBpose_exp_net/cnv4/weightsBpose_exp_net/cnv5/biasesBpose_exp_net/cnv5/weightsBpose_exp_net/pose/cnv6/biasesBpose_exp_net/pose/cnv6/weightsBpose_exp_net/pose/cnv7/biasesBpose_exp_net/pose/cnv7/weightsBpose_exp_net/pose/pred/biasesBpose_exp_net/pose/pred/weights*
dtype0*
_output_shapes
:

save_2/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ń
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicespose_exp_net/cnv1/biasespose_exp_net/cnv1/weightspose_exp_net/cnv2/biasespose_exp_net/cnv2/weightspose_exp_net/cnv3/biasespose_exp_net/cnv3/weightspose_exp_net/cnv4/biasespose_exp_net/cnv4/weightspose_exp_net/cnv5/biasespose_exp_net/cnv5/weightspose_exp_net/pose/cnv6/biasespose_exp_net/pose/cnv6/weightspose_exp_net/pose/cnv7/biasespose_exp_net/pose/cnv7/weightspose_exp_net/pose/pred/biasespose_exp_net/pose/pred/weights*
dtypes
2

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
£
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
_output_shapes
: *
T0
­
save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*Ū
valueŃBĪBpose_exp_net/cnv1/biasesBpose_exp_net/cnv1/weightsBpose_exp_net/cnv2/biasesBpose_exp_net/cnv2/weightsBpose_exp_net/cnv3/biasesBpose_exp_net/cnv3/weightsBpose_exp_net/cnv4/biasesBpose_exp_net/cnv4/weightsBpose_exp_net/cnv5/biasesBpose_exp_net/cnv5/weightsBpose_exp_net/pose/cnv6/biasesBpose_exp_net/pose/cnv6/weightsBpose_exp_net/pose/cnv7/biasesBpose_exp_net/pose/cnv7/weightsBpose_exp_net/pose/pred/biasesBpose_exp_net/pose/pred/weights

!save_2/RestoreV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ć
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*T
_output_shapesB
@::::::::::::::::*
dtypes
2
¾
save_2/AssignAssignpose_exp_net/cnv1/biasessave_2/RestoreV2*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv1/biases*
validate_shape(*
_output_shapes
:
Š
save_2/Assign_1Assignpose_exp_net/cnv1/weightssave_2/RestoreV2:1*
T0*,
_class"
 loc:@pose_exp_net/cnv1/weights*
validate_shape(*&
_output_shapes
:	*
use_locking(
Ā
save_2/Assign_2Assignpose_exp_net/cnv2/biasessave_2/RestoreV2:2*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv2/biases*
validate_shape(*
_output_shapes
: 
Š
save_2/Assign_3Assignpose_exp_net/cnv2/weightssave_2/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv2/weights*
validate_shape(*&
_output_shapes
: 
Ā
save_2/Assign_4Assignpose_exp_net/cnv3/biasessave_2/RestoreV2:4*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv3/biases*
validate_shape(*
_output_shapes
:@
Š
save_2/Assign_5Assignpose_exp_net/cnv3/weightssave_2/RestoreV2:5*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv3/weights
Ć
save_2/Assign_6Assignpose_exp_net/cnv4/biasessave_2/RestoreV2:6*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv4/biases*
validate_shape(*
_output_shapes	
:
Ń
save_2/Assign_7Assignpose_exp_net/cnv4/weightssave_2/RestoreV2:7*
T0*,
_class"
 loc:@pose_exp_net/cnv4/weights*
validate_shape(*'
_output_shapes
:@*
use_locking(
Ć
save_2/Assign_8Assignpose_exp_net/cnv5/biasessave_2/RestoreV2:8*
use_locking(*
T0*+
_class!
loc:@pose_exp_net/cnv5/biases*
validate_shape(*
_output_shapes	
:
Ņ
save_2/Assign_9Assignpose_exp_net/cnv5/weightssave_2/RestoreV2:9*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@pose_exp_net/cnv5/weights
Ļ
save_2/Assign_10Assignpose_exp_net/pose/cnv6/biasessave_2/RestoreV2:10*
T0*0
_class&
$"loc:@pose_exp_net/pose/cnv6/biases*
validate_shape(*
_output_shapes	
:*
use_locking(
Ž
save_2/Assign_11Assignpose_exp_net/pose/cnv6/weightssave_2/RestoreV2:11*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv6/weights*
validate_shape(*(
_output_shapes
:
Ļ
save_2/Assign_12Assignpose_exp_net/pose/cnv7/biasessave_2/RestoreV2:12*0
_class&
$"loc:@pose_exp_net/pose/cnv7/biases*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ž
save_2/Assign_13Assignpose_exp_net/pose/cnv7/weightssave_2/RestoreV2:13*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/cnv7/weights
Ī
save_2/Assign_14Assignpose_exp_net/pose/pred/biasessave_2/RestoreV2:14*0
_class&
$"loc:@pose_exp_net/pose/pred/biases*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ż
save_2/Assign_15Assignpose_exp_net/pose/pred/weightssave_2/RestoreV2:15*
use_locking(*
T0*1
_class'
%#loc:@pose_exp_net/pose/pred/weights*
validate_shape(*'
_output_shapes
:
Ą
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard "B
save_2/Const:0save_2/Identity:0save_2/restore_all (5 @F8"
(pose_prediction/pose_exp_net/_end_pointså
ā
(pose_prediction/pose_exp_net/cnv1/Relu:0
(pose_prediction/pose_exp_net/cnv2/Relu:0
(pose_prediction/pose_exp_net/cnv3/Relu:0
(pose_prediction/pose_exp_net/cnv4/Relu:0
(pose_prediction/pose_exp_net/cnv5/Relu:0
-pose_prediction/pose_exp_net/pose/cnv6/Relu:0
-pose_prediction/pose_exp_net/pose/cnv7/Relu:0
0pose_prediction/pose_exp_net/pose/pred/BiasAdd:0"
	variablesóš

pose_exp_net/cnv1/weights:0 pose_exp_net/cnv1/weights/Assign pose_exp_net/cnv1/weights/read:026pose_exp_net/cnv1/weights/Initializer/random_uniform:08

pose_exp_net/cnv1/biases:0pose_exp_net/cnv1/biases/Assignpose_exp_net/cnv1/biases/read:02,pose_exp_net/cnv1/biases/Initializer/zeros:08

pose_exp_net/cnv2/weights:0 pose_exp_net/cnv2/weights/Assign pose_exp_net/cnv2/weights/read:026pose_exp_net/cnv2/weights/Initializer/random_uniform:08

pose_exp_net/cnv2/biases:0pose_exp_net/cnv2/biases/Assignpose_exp_net/cnv2/biases/read:02,pose_exp_net/cnv2/biases/Initializer/zeros:08

pose_exp_net/cnv3/weights:0 pose_exp_net/cnv3/weights/Assign pose_exp_net/cnv3/weights/read:026pose_exp_net/cnv3/weights/Initializer/random_uniform:08

pose_exp_net/cnv3/biases:0pose_exp_net/cnv3/biases/Assignpose_exp_net/cnv3/biases/read:02,pose_exp_net/cnv3/biases/Initializer/zeros:08

pose_exp_net/cnv4/weights:0 pose_exp_net/cnv4/weights/Assign pose_exp_net/cnv4/weights/read:026pose_exp_net/cnv4/weights/Initializer/random_uniform:08

pose_exp_net/cnv4/biases:0pose_exp_net/cnv4/biases/Assignpose_exp_net/cnv4/biases/read:02,pose_exp_net/cnv4/biases/Initializer/zeros:08

pose_exp_net/cnv5/weights:0 pose_exp_net/cnv5/weights/Assign pose_exp_net/cnv5/weights/read:026pose_exp_net/cnv5/weights/Initializer/random_uniform:08

pose_exp_net/cnv5/biases:0pose_exp_net/cnv5/biases/Assignpose_exp_net/cnv5/biases/read:02,pose_exp_net/cnv5/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/cnv6/weights:0%pose_exp_net/pose/cnv6/weights/Assign%pose_exp_net/pose/cnv6/weights/read:02;pose_exp_net/pose/cnv6/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/cnv6/biases:0$pose_exp_net/pose/cnv6/biases/Assign$pose_exp_net/pose/cnv6/biases/read:021pose_exp_net/pose/cnv6/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/cnv7/weights:0%pose_exp_net/pose/cnv7/weights/Assign%pose_exp_net/pose/cnv7/weights/read:02;pose_exp_net/pose/cnv7/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/cnv7/biases:0$pose_exp_net/pose/cnv7/biases/Assign$pose_exp_net/pose/cnv7/biases/read:021pose_exp_net/pose/cnv7/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/pred/weights:0%pose_exp_net/pose/pred/weights/Assign%pose_exp_net/pose/pred/weights/read:02;pose_exp_net/pose/pred/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/pred/biases:0$pose_exp_net/pose/pred/biases/Assign$pose_exp_net/pose/pred/biases/read:021pose_exp_net/pose/pred/biases/Initializer/zeros:08"ä
regularization_lossesŹ
Ē
Epose_prediction/pose_exp_net/cnv1/kernel/Regularizer/l2_regularizer:0
Epose_prediction/pose_exp_net/cnv2/kernel/Regularizer/l2_regularizer:0
Epose_prediction/pose_exp_net/cnv3/kernel/Regularizer/l2_regularizer:0
Epose_prediction/pose_exp_net/cnv4/kernel/Regularizer/l2_regularizer:0
Epose_prediction/pose_exp_net/cnv5/kernel/Regularizer/l2_regularizer:0
Jpose_prediction/pose_exp_net/pose/cnv6/kernel/Regularizer/l2_regularizer:0
Jpose_prediction/pose_exp_net/pose/cnv7/kernel/Regularizer/l2_regularizer:0
Jpose_prediction/pose_exp_net/pose/pred/kernel/Regularizer/l2_regularizer:0"
model_variablesóš

pose_exp_net/cnv1/weights:0 pose_exp_net/cnv1/weights/Assign pose_exp_net/cnv1/weights/read:026pose_exp_net/cnv1/weights/Initializer/random_uniform:08

pose_exp_net/cnv1/biases:0pose_exp_net/cnv1/biases/Assignpose_exp_net/cnv1/biases/read:02,pose_exp_net/cnv1/biases/Initializer/zeros:08

pose_exp_net/cnv2/weights:0 pose_exp_net/cnv2/weights/Assign pose_exp_net/cnv2/weights/read:026pose_exp_net/cnv2/weights/Initializer/random_uniform:08

pose_exp_net/cnv2/biases:0pose_exp_net/cnv2/biases/Assignpose_exp_net/cnv2/biases/read:02,pose_exp_net/cnv2/biases/Initializer/zeros:08

pose_exp_net/cnv3/weights:0 pose_exp_net/cnv3/weights/Assign pose_exp_net/cnv3/weights/read:026pose_exp_net/cnv3/weights/Initializer/random_uniform:08

pose_exp_net/cnv3/biases:0pose_exp_net/cnv3/biases/Assignpose_exp_net/cnv3/biases/read:02,pose_exp_net/cnv3/biases/Initializer/zeros:08

pose_exp_net/cnv4/weights:0 pose_exp_net/cnv4/weights/Assign pose_exp_net/cnv4/weights/read:026pose_exp_net/cnv4/weights/Initializer/random_uniform:08

pose_exp_net/cnv4/biases:0pose_exp_net/cnv4/biases/Assignpose_exp_net/cnv4/biases/read:02,pose_exp_net/cnv4/biases/Initializer/zeros:08

pose_exp_net/cnv5/weights:0 pose_exp_net/cnv5/weights/Assign pose_exp_net/cnv5/weights/read:026pose_exp_net/cnv5/weights/Initializer/random_uniform:08

pose_exp_net/cnv5/biases:0pose_exp_net/cnv5/biases/Assignpose_exp_net/cnv5/biases/read:02,pose_exp_net/cnv5/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/cnv6/weights:0%pose_exp_net/pose/cnv6/weights/Assign%pose_exp_net/pose/cnv6/weights/read:02;pose_exp_net/pose/cnv6/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/cnv6/biases:0$pose_exp_net/pose/cnv6/biases/Assign$pose_exp_net/pose/cnv6/biases/read:021pose_exp_net/pose/cnv6/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/cnv7/weights:0%pose_exp_net/pose/cnv7/weights/Assign%pose_exp_net/pose/cnv7/weights/read:02;pose_exp_net/pose/cnv7/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/cnv7/biases:0$pose_exp_net/pose/cnv7/biases/Assign$pose_exp_net/pose/cnv7/biases/read:021pose_exp_net/pose/cnv7/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/pred/weights:0%pose_exp_net/pose/pred/weights/Assign%pose_exp_net/pose/pred/weights/read:02;pose_exp_net/pose/pred/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/pred/biases:0$pose_exp_net/pose/pred/biases/Assign$pose_exp_net/pose/pred/biases/read:021pose_exp_net/pose/pred/biases/Initializer/zeros:08"
trainable_variablesóš

pose_exp_net/cnv1/weights:0 pose_exp_net/cnv1/weights/Assign pose_exp_net/cnv1/weights/read:026pose_exp_net/cnv1/weights/Initializer/random_uniform:08

pose_exp_net/cnv1/biases:0pose_exp_net/cnv1/biases/Assignpose_exp_net/cnv1/biases/read:02,pose_exp_net/cnv1/biases/Initializer/zeros:08

pose_exp_net/cnv2/weights:0 pose_exp_net/cnv2/weights/Assign pose_exp_net/cnv2/weights/read:026pose_exp_net/cnv2/weights/Initializer/random_uniform:08

pose_exp_net/cnv2/biases:0pose_exp_net/cnv2/biases/Assignpose_exp_net/cnv2/biases/read:02,pose_exp_net/cnv2/biases/Initializer/zeros:08

pose_exp_net/cnv3/weights:0 pose_exp_net/cnv3/weights/Assign pose_exp_net/cnv3/weights/read:026pose_exp_net/cnv3/weights/Initializer/random_uniform:08

pose_exp_net/cnv3/biases:0pose_exp_net/cnv3/biases/Assignpose_exp_net/cnv3/biases/read:02,pose_exp_net/cnv3/biases/Initializer/zeros:08

pose_exp_net/cnv4/weights:0 pose_exp_net/cnv4/weights/Assign pose_exp_net/cnv4/weights/read:026pose_exp_net/cnv4/weights/Initializer/random_uniform:08

pose_exp_net/cnv4/biases:0pose_exp_net/cnv4/biases/Assignpose_exp_net/cnv4/biases/read:02,pose_exp_net/cnv4/biases/Initializer/zeros:08

pose_exp_net/cnv5/weights:0 pose_exp_net/cnv5/weights/Assign pose_exp_net/cnv5/weights/read:026pose_exp_net/cnv5/weights/Initializer/random_uniform:08

pose_exp_net/cnv5/biases:0pose_exp_net/cnv5/biases/Assignpose_exp_net/cnv5/biases/read:02,pose_exp_net/cnv5/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/cnv6/weights:0%pose_exp_net/pose/cnv6/weights/Assign%pose_exp_net/pose/cnv6/weights/read:02;pose_exp_net/pose/cnv6/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/cnv6/biases:0$pose_exp_net/pose/cnv6/biases/Assign$pose_exp_net/pose/cnv6/biases/read:021pose_exp_net/pose/cnv6/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/cnv7/weights:0%pose_exp_net/pose/cnv7/weights/Assign%pose_exp_net/pose/cnv7/weights/read:02;pose_exp_net/pose/cnv7/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/cnv7/biases:0$pose_exp_net/pose/cnv7/biases/Assign$pose_exp_net/pose/cnv7/biases/read:021pose_exp_net/pose/cnv7/biases/Initializer/zeros:08
Æ
 pose_exp_net/pose/pred/weights:0%pose_exp_net/pose/pred/weights/Assign%pose_exp_net/pose/pred/weights/read:02;pose_exp_net/pose/pred/weights/Initializer/random_uniform:08
¢
pose_exp_net/pose/pred/biases:0$pose_exp_net/pose/pred/biases/Assign$pose_exp_net/pose/pred/biases/read:021pose_exp_net/pose/pred/biases/Initializer/zeros:08*­
serving_default
2
input_uint8#
raw_input:0»īG

prediction9
'pose_prediction/pose_exp_net/pose/mul:0tensorflow/serving/predict