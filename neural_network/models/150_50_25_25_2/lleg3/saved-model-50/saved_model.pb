¬Ó	
î
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Â½
{
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_10/kernel
t
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes
:	*
dtype0
s
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
l
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes	
:*
dtype0
{
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2* 
shared_namedense_11/kernel
t
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes
:	2*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:2*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:2*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_10/kernel/m

*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
z
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*'
shared_nameAdam/dense_11/kernel/m

*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes
:	2*
dtype0

Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:2*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:*
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:*
dtype0

Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_10/kernel/v

*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
z
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*'
shared_nameAdam/dense_11/kernel/v

*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes
:	2*
dtype0

Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:2*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:*
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ø=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*³=
value©=B¦= B=
è
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
 trainable_variables
!	variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
R
*trainable_variables
+	variables
,regularization_losses
-	keras_api
h

.kernel
/bias
0trainable_variables
1	variables
2regularization_losses
3	keras_api
R
4trainable_variables
5	variables
6regularization_losses
7	keras_api
h

8kernel
9bias
:trainable_variables
;	variables
<regularization_losses
=	keras_api

>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemzm{m|m}$m~%m.m/m8m9mvvvv$v%v.v/v8v9v
F
0
1
2
3
$4
%5
.6
/7
88
99
F
0
1
2
3
$4
%5
.6
/7
88
99
 
­

Clayers
trainable_variables
	variables
Dlayer_metrics
Elayer_regularization_losses
Fmetrics
Gnon_trainable_variables
regularization_losses
 
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

Hlayers
trainable_variables
	variables
Ilayer_metrics
Jlayer_regularization_losses
Kmetrics
Lnon_trainable_variables
regularization_losses
 
 
 
­

Mlayers
trainable_variables
	variables
Nlayer_metrics
Olayer_regularization_losses
Pmetrics
Qnon_trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

Rlayers
trainable_variables
	variables
Slayer_metrics
Tlayer_regularization_losses
Umetrics
Vnon_trainable_variables
regularization_losses
 
 
 
­

Wlayers
 trainable_variables
!	variables
Xlayer_metrics
Ylayer_regularization_losses
Zmetrics
[non_trainable_variables
"regularization_losses
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
­

\layers
&trainable_variables
'	variables
]layer_metrics
^layer_regularization_losses
_metrics
`non_trainable_variables
(regularization_losses
 
 
 
­

alayers
*trainable_variables
+	variables
blayer_metrics
clayer_regularization_losses
dmetrics
enon_trainable_variables
,regularization_losses
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
­

flayers
0trainable_variables
1	variables
glayer_metrics
hlayer_regularization_losses
imetrics
jnon_trainable_variables
2regularization_losses
 
 
 
­

klayers
4trainable_variables
5	variables
llayer_metrics
mlayer_regularization_losses
nmetrics
onon_trainable_variables
6regularization_losses
[Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91

80
91
 
­

players
:trainable_variables
;	variables
qlayer_metrics
rlayer_regularization_losses
smetrics
tnon_trainable_variables
<regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8
 
 

u0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	vtotal
	wcount
x	variables
y	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

v0
w1

x	variables
~|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_dense_10_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
í
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_10_inputdense_10/kerneldense_10/biasdense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_593369
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ã
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_593764
ú
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_10/kerneldense_10/biasdense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_593885Á
Ú(
ã
H__inference_sequential_2_layer_call_and_return_conditional_losses_593065

inputs"
dense_10_592967:	
dense_10_592969:	"
dense_11_592990:	2
dense_11_592992:2!
dense_12_593013:2
dense_12_593015:!
dense_13_593036:
dense_13_593038:!
dense_14_593059:
dense_14_593061:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall
 dense_10/StatefulPartitionedCallStatefulPartitionedCallinputsdense_10_592967dense_10_592969*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5929662"
 dense_10/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_5929772
activation_8/PartitionedCall³
 dense_11/StatefulPartitionedCallStatefulPartitionedCall%activation_8/PartitionedCall:output:0dense_11_592990dense_11_592992*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_5929892"
 dense_11/StatefulPartitionedCall
activation_9/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_5930002
activation_9/PartitionedCall³
 dense_12/StatefulPartitionedCallStatefulPartitionedCall%activation_9/PartitionedCall:output:0dense_12_593013dense_12_593015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_5930122"
 dense_12/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5930232
activation_10/PartitionedCall´
 dense_13/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0dense_13_593036dense_13_593038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_5930352"
 dense_13/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5930462
activation_11/PartitionedCall´
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&activation_11/PartitionedCall:output:0dense_14_593059dense_14_593061*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_5930582"
 dense_14/StatefulPartitionedCall¬
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_dense_12_layer_call_fn_593562

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_5930122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ð	
õ
D__inference_dense_14_layer_call_and_return_conditional_losses_593630

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
d
H__inference_activation_9_layer_call_and_return_conditional_losses_593553

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ô	
ö
D__inference_dense_11_layer_call_and_return_conditional_losses_592989

inputs1
matmul_readvariableop_resource:	2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
I
-__inference_activation_8_layer_call_fn_593519

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_5929772
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ
d
H__inference_activation_8_layer_call_and_return_conditional_losses_593524

inputs
identityX
SigmoidSigmoidinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid`
IdentityIdentitySigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä0
ø
H__inference_sequential_2_layer_call_and_return_conditional_losses_593495

inputs:
'dense_10_matmul_readvariableop_resource:	7
(dense_10_biasadd_readvariableop_resource:	:
'dense_11_matmul_readvariableop_resource:	26
(dense_11_biasadd_readvariableop_resource:29
'dense_12_matmul_readvariableop_resource:26
(dense_12_biasadd_readvariableop_resource:9
'dense_13_matmul_readvariableop_resource:6
(dense_13_biasadd_readvariableop_resource:9
'dense_14_matmul_readvariableop_resource:6
(dense_14_biasadd_readvariableop_resource:
identity¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp©
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_10/MatMul/ReadVariableOp
dense_10/MatMulMatMulinputs&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/MatMul¨
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp¦
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/BiasAdd
activation_8/SigmoidSigmoiddense_10/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_8/Sigmoid©
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	2*
dtype02 
dense_11/MatMul/ReadVariableOp 
dense_11/MatMulMatMulactivation_8/Sigmoid:y:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_11/MatMul§
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_11/BiasAdd/ReadVariableOp¥
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_11/BiasAdd
activation_9/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
activation_9/Sigmoid¨
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_12/MatMul/ReadVariableOp 
dense_12/MatMulMatMulactivation_9/Sigmoid:y:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/MatMul§
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp¥
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/BiasAdd
activation_10/SigmoidSigmoiddense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_10/Sigmoid¨
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_13/MatMul/ReadVariableOp¡
dense_13/MatMulMatMulactivation_10/Sigmoid:y:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_13/MatMul§
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOp¥
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_13/BiasAdd
activation_11/SigmoidSigmoiddense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_11/Sigmoid¨
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_14/MatMul/ReadVariableOp¡
dense_14/MatMulMatMulactivation_11/Sigmoid:y:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_14/MatMul§
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_14/BiasAdd/ReadVariableOp¥
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_14/BiasAdd¼
IdentityIdentitydense_14/BiasAdd:output:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä0
ø
H__inference_sequential_2_layer_call_and_return_conditional_losses_593457

inputs:
'dense_10_matmul_readvariableop_resource:	7
(dense_10_biasadd_readvariableop_resource:	:
'dense_11_matmul_readvariableop_resource:	26
(dense_11_biasadd_readvariableop_resource:29
'dense_12_matmul_readvariableop_resource:26
(dense_12_biasadd_readvariableop_resource:9
'dense_13_matmul_readvariableop_resource:6
(dense_13_biasadd_readvariableop_resource:9
'dense_14_matmul_readvariableop_resource:6
(dense_14_biasadd_readvariableop_resource:
identity¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp©
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_10/MatMul/ReadVariableOp
dense_10/MatMulMatMulinputs&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/MatMul¨
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp¦
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/BiasAdd
activation_8/SigmoidSigmoiddense_10/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_8/Sigmoid©
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	2*
dtype02 
dense_11/MatMul/ReadVariableOp 
dense_11/MatMulMatMulactivation_8/Sigmoid:y:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_11/MatMul§
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_11/BiasAdd/ReadVariableOp¥
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_11/BiasAdd
activation_9/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
activation_9/Sigmoid¨
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_12/MatMul/ReadVariableOp 
dense_12/MatMulMatMulactivation_9/Sigmoid:y:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/MatMul§
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp¥
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/BiasAdd
activation_10/SigmoidSigmoiddense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_10/Sigmoid¨
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_13/MatMul/ReadVariableOp¡
dense_13/MatMulMatMulactivation_10/Sigmoid:y:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_13/MatMul§
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOp¥
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_13/BiasAdd
activation_11/SigmoidSigmoiddense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_11/Sigmoid¨
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_14/MatMul/ReadVariableOp¡
dense_14/MatMulMatMulactivation_11/Sigmoid:y:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_14/MatMul§
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_14/BiasAdd/ReadVariableOp¥
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_14/BiasAdd¼
IdentityIdentitydense_14/BiasAdd:output:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ	
ô
$__inference_signature_wrapper_593369
dense_10_input
unknown:	
	unknown_0:	
	unknown_1:	2
	unknown_2:2
	unknown_3:2
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCalldense_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_5929492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namedense_10_input
Ð	
õ
D__inference_dense_13_layer_call_and_return_conditional_losses_593035

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö	
õ
-__inference_sequential_2_layer_call_fn_593419

inputs
unknown:	
	unknown_0:	
	unknown_1:	2
	unknown_2:2
	unknown_3:2
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_5932222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_dense_13_layer_call_fn_593591

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_5930352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò(
ë
H__inference_sequential_2_layer_call_and_return_conditional_losses_593336
dense_10_input"
dense_10_593306:	
dense_10_593308:	"
dense_11_593312:	2
dense_11_593314:2!
dense_12_593318:2
dense_12_593320:!
dense_13_593324:
dense_13_593326:!
dense_14_593330:
dense_14_593332:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall
 dense_10/StatefulPartitionedCallStatefulPartitionedCalldense_10_inputdense_10_593306dense_10_593308*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5929662"
 dense_10/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_5929772
activation_8/PartitionedCall³
 dense_11/StatefulPartitionedCallStatefulPartitionedCall%activation_8/PartitionedCall:output:0dense_11_593312dense_11_593314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_5929892"
 dense_11/StatefulPartitionedCall
activation_9/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_5930002
activation_9/PartitionedCall³
 dense_12/StatefulPartitionedCallStatefulPartitionedCall%activation_9/PartitionedCall:output:0dense_12_593318dense_12_593320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_5930122"
 dense_12/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5930232
activation_10/PartitionedCall´
 dense_13/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0dense_13_593324dense_13_593326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_5930352"
 dense_13/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5930462
activation_11/PartitionedCall´
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&activation_11/PartitionedCall:output:0dense_14_593330dense_14_593332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_5930582"
 dense_14/StatefulPartitionedCall¬
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namedense_10_input
ã
e
I__inference_activation_10_layer_call_and_return_conditional_losses_593582

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_dense_11_layer_call_fn_593533

inputs
unknown:	2
	unknown_0:2
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_5929892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
>
Ý	
!__inference__wrapped_model_592949
dense_10_inputG
4sequential_2_dense_10_matmul_readvariableop_resource:	D
5sequential_2_dense_10_biasadd_readvariableop_resource:	G
4sequential_2_dense_11_matmul_readvariableop_resource:	2C
5sequential_2_dense_11_biasadd_readvariableop_resource:2F
4sequential_2_dense_12_matmul_readvariableop_resource:2C
5sequential_2_dense_12_biasadd_readvariableop_resource:F
4sequential_2_dense_13_matmul_readvariableop_resource:C
5sequential_2_dense_13_biasadd_readvariableop_resource:F
4sequential_2_dense_14_matmul_readvariableop_resource:C
5sequential_2_dense_14_biasadd_readvariableop_resource:
identity¢,sequential_2/dense_10/BiasAdd/ReadVariableOp¢+sequential_2/dense_10/MatMul/ReadVariableOp¢,sequential_2/dense_11/BiasAdd/ReadVariableOp¢+sequential_2/dense_11/MatMul/ReadVariableOp¢,sequential_2/dense_12/BiasAdd/ReadVariableOp¢+sequential_2/dense_12/MatMul/ReadVariableOp¢,sequential_2/dense_13/BiasAdd/ReadVariableOp¢+sequential_2/dense_13/MatMul/ReadVariableOp¢,sequential_2/dense_14/BiasAdd/ReadVariableOp¢+sequential_2/dense_14/MatMul/ReadVariableOpÐ
+sequential_2/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02-
+sequential_2/dense_10/MatMul/ReadVariableOp¾
sequential_2/dense_10/MatMulMatMuldense_10_input3sequential_2/dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_10/MatMulÏ
,sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_2/dense_10/BiasAdd/ReadVariableOpÚ
sequential_2/dense_10/BiasAddBiasAdd&sequential_2/dense_10/MatMul:product:04sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_10/BiasAdd¬
!sequential_2/activation_8/SigmoidSigmoid&sequential_2/dense_10/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_2/activation_8/SigmoidÐ
+sequential_2/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_11_matmul_readvariableop_resource*
_output_shapes
:	2*
dtype02-
+sequential_2/dense_11/MatMul/ReadVariableOpÔ
sequential_2/dense_11/MatMulMatMul%sequential_2/activation_8/Sigmoid:y:03sequential_2/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_2/dense_11/MatMulÎ
,sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02.
,sequential_2/dense_11/BiasAdd/ReadVariableOpÙ
sequential_2/dense_11/BiasAddBiasAdd&sequential_2/dense_11/MatMul:product:04sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_2/dense_11/BiasAdd«
!sequential_2/activation_9/SigmoidSigmoid&sequential_2/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!sequential_2/activation_9/SigmoidÏ
+sequential_2/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02-
+sequential_2/dense_12/MatMul/ReadVariableOpÔ
sequential_2/dense_12/MatMulMatMul%sequential_2/activation_9/Sigmoid:y:03sequential_2/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_12/MatMulÎ
,sequential_2/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_2/dense_12/BiasAdd/ReadVariableOpÙ
sequential_2/dense_12/BiasAddBiasAdd&sequential_2/dense_12/MatMul:product:04sequential_2/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_12/BiasAdd­
"sequential_2/activation_10/SigmoidSigmoid&sequential_2/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"sequential_2/activation_10/SigmoidÏ
+sequential_2/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_2/dense_13/MatMul/ReadVariableOpÕ
sequential_2/dense_13/MatMulMatMul&sequential_2/activation_10/Sigmoid:y:03sequential_2/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_13/MatMulÎ
,sequential_2/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_2/dense_13/BiasAdd/ReadVariableOpÙ
sequential_2/dense_13/BiasAddBiasAdd&sequential_2/dense_13/MatMul:product:04sequential_2/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_13/BiasAdd­
"sequential_2/activation_11/SigmoidSigmoid&sequential_2/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"sequential_2/activation_11/SigmoidÏ
+sequential_2/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_2/dense_14/MatMul/ReadVariableOpÕ
sequential_2/dense_14/MatMulMatMul&sequential_2/activation_11/Sigmoid:y:03sequential_2/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_14/MatMulÎ
,sequential_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_2/dense_14/BiasAdd/ReadVariableOpÙ
sequential_2/dense_14/BiasAddBiasAdd&sequential_2/dense_14/MatMul:product:04sequential_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_14/BiasAddË
IdentityIdentity&sequential_2/dense_14/BiasAdd:output:0-^sequential_2/dense_10/BiasAdd/ReadVariableOp,^sequential_2/dense_10/MatMul/ReadVariableOp-^sequential_2/dense_11/BiasAdd/ReadVariableOp,^sequential_2/dense_11/MatMul/ReadVariableOp-^sequential_2/dense_12/BiasAdd/ReadVariableOp,^sequential_2/dense_12/MatMul/ReadVariableOp-^sequential_2/dense_13/BiasAdd/ReadVariableOp,^sequential_2/dense_13/MatMul/ReadVariableOp-^sequential_2/dense_14/BiasAdd/ReadVariableOp,^sequential_2/dense_14/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2\
,sequential_2/dense_10/BiasAdd/ReadVariableOp,sequential_2/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_10/MatMul/ReadVariableOp+sequential_2/dense_10/MatMul/ReadVariableOp2\
,sequential_2/dense_11/BiasAdd/ReadVariableOp,sequential_2/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_11/MatMul/ReadVariableOp+sequential_2/dense_11/MatMul/ReadVariableOp2\
,sequential_2/dense_12/BiasAdd/ReadVariableOp,sequential_2/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_12/MatMul/ReadVariableOp+sequential_2/dense_12/MatMul/ReadVariableOp2\
,sequential_2/dense_13/BiasAdd/ReadVariableOp,sequential_2/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_13/MatMul/ReadVariableOp+sequential_2/dense_13/MatMul/ReadVariableOp2\
,sequential_2/dense_14/BiasAdd/ReadVariableOp,sequential_2/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_14/MatMul/ReadVariableOp+sequential_2/dense_14/MatMul/ReadVariableOp:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namedense_10_input
Ð	
õ
D__inference_dense_14_layer_call_and_return_conditional_losses_593058

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò(
ë
H__inference_sequential_2_layer_call_and_return_conditional_losses_593303
dense_10_input"
dense_10_593273:	
dense_10_593275:	"
dense_11_593279:	2
dense_11_593281:2!
dense_12_593285:2
dense_12_593287:!
dense_13_593291:
dense_13_593293:!
dense_14_593297:
dense_14_593299:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall
 dense_10/StatefulPartitionedCallStatefulPartitionedCalldense_10_inputdense_10_593273dense_10_593275*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5929662"
 dense_10/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_5929772
activation_8/PartitionedCall³
 dense_11/StatefulPartitionedCallStatefulPartitionedCall%activation_8/PartitionedCall:output:0dense_11_593279dense_11_593281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_5929892"
 dense_11/StatefulPartitionedCall
activation_9/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_5930002
activation_9/PartitionedCall³
 dense_12/StatefulPartitionedCallStatefulPartitionedCall%activation_9/PartitionedCall:output:0dense_12_593285dense_12_593287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_5930122"
 dense_12/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5930232
activation_10/PartitionedCall´
 dense_13/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0dense_13_593291dense_13_593293*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_5930352"
 dense_13/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5930462
activation_11/PartitionedCall´
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&activation_11/PartitionedCall:output:0dense_14_593297dense_14_593299*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_5930582"
 dense_14/StatefulPartitionedCall¬
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namedense_10_input
Ä
I
-__inference_activation_9_layer_call_fn_593548

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_5930002
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs


ý
-__inference_sequential_2_layer_call_fn_593088
dense_10_input
unknown:	
	unknown_0:	
	unknown_1:	2
	unknown_2:2
	unknown_3:2
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCalldense_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_5930652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namedense_10_input
Æ
J
.__inference_activation_10_layer_call_fn_593577

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5930232
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö	
õ
-__inference_sequential_2_layer_call_fn_593394

inputs
unknown:	
	unknown_0:	
	unknown_1:	2
	unknown_2:2
	unknown_3:2
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_5930652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
e
I__inference_activation_11_layer_call_and_return_conditional_losses_593611

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú(
ã
H__inference_sequential_2_layer_call_and_return_conditional_losses_593222

inputs"
dense_10_593192:	
dense_10_593194:	"
dense_11_593198:	2
dense_11_593200:2!
dense_12_593204:2
dense_12_593206:!
dense_13_593210:
dense_13_593212:!
dense_14_593216:
dense_14_593218:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall
 dense_10/StatefulPartitionedCallStatefulPartitionedCallinputsdense_10_593192dense_10_593194*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5929662"
 dense_10/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_5929772
activation_8/PartitionedCall³
 dense_11/StatefulPartitionedCallStatefulPartitionedCall%activation_8/PartitionedCall:output:0dense_11_593198dense_11_593200*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_5929892"
 dense_11/StatefulPartitionedCall
activation_9/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_5930002
activation_9/PartitionedCall³
 dense_12/StatefulPartitionedCallStatefulPartitionedCall%activation_9/PartitionedCall:output:0dense_12_593204dense_12_593206*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_5930122"
 dense_12/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5930232
activation_10/PartitionedCall´
 dense_13/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0dense_13_593210dense_13_593212*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_5930352"
 dense_13/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5930462
activation_11/PartitionedCall´
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&activation_11/PartitionedCall:output:0dense_14_593216dense_14_593218*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_5930582"
 dense_14/StatefulPartitionedCall¬
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
e
I__inference_activation_11_layer_call_and_return_conditional_losses_593046

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
e
I__inference_activation_10_layer_call_and_return_conditional_losses_593023

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð	
õ
D__inference_dense_12_layer_call_and_return_conditional_losses_593572

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ð	
õ
D__inference_dense_13_layer_call_and_return_conditional_losses_593601

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
±
"__inference__traced_restore_593885
file_prefix3
 assignvariableop_dense_10_kernel:	/
 assignvariableop_1_dense_10_bias:	5
"assignvariableop_2_dense_11_kernel:	2.
 assignvariableop_3_dense_11_bias:24
"assignvariableop_4_dense_12_kernel:2.
 assignvariableop_5_dense_12_bias:4
"assignvariableop_6_dense_13_kernel:.
 assignvariableop_7_dense_13_bias:4
"assignvariableop_8_dense_14_kernel:.
 assignvariableop_9_dense_14_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: =
*assignvariableop_17_adam_dense_10_kernel_m:	7
(assignvariableop_18_adam_dense_10_bias_m:	=
*assignvariableop_19_adam_dense_11_kernel_m:	26
(assignvariableop_20_adam_dense_11_bias_m:2<
*assignvariableop_21_adam_dense_12_kernel_m:26
(assignvariableop_22_adam_dense_12_bias_m:<
*assignvariableop_23_adam_dense_13_kernel_m:6
(assignvariableop_24_adam_dense_13_bias_m:<
*assignvariableop_25_adam_dense_14_kernel_m:6
(assignvariableop_26_adam_dense_14_bias_m:=
*assignvariableop_27_adam_dense_10_kernel_v:	7
(assignvariableop_28_adam_dense_10_bias_v:	=
*assignvariableop_29_adam_dense_11_kernel_v:	26
(assignvariableop_30_adam_dense_11_bias_v:2<
*assignvariableop_31_adam_dense_12_kernel_v:26
(assignvariableop_32_adam_dense_12_bias_v:<
*assignvariableop_33_adam_dense_13_kernel_v:6
(assignvariableop_34_adam_dense_13_bias_v:<
*assignvariableop_35_adam_dense_14_kernel_v:6
(assignvariableop_36_adam_dense_14_bias_v:
identity_38¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*¦
valueB&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÚ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesì
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*®
_output_shapes
::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_12_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_13_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10¥
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¦
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14®
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¡
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17²
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_10_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_10_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19²
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_11_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20°
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_11_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_12_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_12_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_13_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_13_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_14_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_14_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_10_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_10_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_11_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_11_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31²
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_12_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_12_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_13_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_13_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_14_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_14_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_369
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_37ÿ
Identity_38IdentityIdentity_37:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_38"#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ô	
ö
D__inference_dense_11_layer_call_and_return_conditional_losses_593543

inputs1
matmul_readvariableop_resource:	2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×	
÷
D__inference_dense_10_layer_call_and_return_conditional_losses_592966

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸O
¦
__inference__traced_save_593764
file_prefix.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*¦
valueB&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÔ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0* 
_input_shapes
: :	::	2:2:2:::::: : : : : : : :	::	2:2:2::::::	::	2:2:2:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::%!

_output_shapes
:	2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:!

_output_shapes	
::%!

_output_shapes
:	2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::%!

_output_shapes
:	2: 

_output_shapes
:2:$  

_output_shapes

:2: !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::&

_output_shapes
: 


)__inference_dense_14_layer_call_fn_593620

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_5930582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ
d
H__inference_activation_8_layer_call_and_return_conditional_losses_592977

inputs
identityX
SigmoidSigmoidinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid`
IdentityIdentitySigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ý
-__inference_sequential_2_layer_call_fn_593270
dense_10_input
unknown:	
	unknown_0:	
	unknown_1:	2
	unknown_2:2
	unknown_3:2
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCalldense_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_5932222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namedense_10_input
Ð	
õ
D__inference_dense_12_layer_call_and_return_conditional_losses_593012

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Æ
J
.__inference_activation_11_layer_call_fn_593606

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5930462
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×	
÷
D__inference_dense_10_layer_call_and_return_conditional_losses_593514

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_dense_10_layer_call_fn_593504

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5929662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
d
H__inference_activation_9_layer_call_and_return_conditional_losses_593000

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¹
serving_default¥
I
dense_10_input7
 serving_default_dense_10_input:0ÿÿÿÿÿÿÿÿÿ<
dense_140
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ö
>
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
_default_save_signature
__call__
+&call_and_return_all_conditional_losses"Î:
_tf_keras_sequential¯:{"name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_10_input"}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "units": 150, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 25, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 25, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "dense_10_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_10_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "units": 150, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 25, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 25, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ã	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "units": 150, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
ñ
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"à
_tf_keras_layerÆ{"name": "activation_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 4}
Õ

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"®
_tf_keras_layer{"name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 150}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 150]}}
ñ
 trainable_variables
!	variables
"regularization_losses
#	keras_api
__call__
+&call_and_return_all_conditional_losses"à
_tf_keras_layerÆ{"name": "activation_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 8}
Õ

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
__call__
+&call_and_return_all_conditional_losses"®
_tf_keras_layer{"name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 25, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
ô
*trainable_variables
+	variables
,regularization_losses
-	keras_api
__call__
+&call_and_return_all_conditional_losses"ã
_tf_keras_layerÉ{"name": "activation_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 12}
Ö

.kernel
/bias
0trainable_variables
1	variables
2regularization_losses
3	keras_api
__call__
+&call_and_return_all_conditional_losses"¯
_tf_keras_layer{"name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 25, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 25}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25]}}
ô
4trainable_variables
5	variables
6regularization_losses
7	keras_api
__call__
+ &call_and_return_all_conditional_losses"ã
_tf_keras_layerÉ{"name": "activation_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 16}
Õ

8kernel
9bias
:trainable_variables
;	variables
<regularization_losses
=	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses"®
_tf_keras_layer{"name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 25}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25]}}

>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemzm{m|m}$m~%m.m/m8m9mvvvv$v%v.v/v8v9v"
	optimizer
f
0
1
2
3
$4
%5
.6
/7
88
99"
trackable_list_wrapper
f
0
1
2
3
$4
%5
.6
/7
88
99"
trackable_list_wrapper
 "
trackable_list_wrapper
Î

Clayers
trainable_variables
	variables
Dlayer_metrics
Elayer_regularization_losses
Fmetrics
Gnon_trainable_variables
regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
£serving_default"
signature_map
": 	2dense_10/kernel
:2dense_10/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°

Hlayers
trainable_variables
	variables
Ilayer_metrics
Jlayer_regularization_losses
Kmetrics
Lnon_trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°

Mlayers
trainable_variables
	variables
Nlayer_metrics
Olayer_regularization_losses
Pmetrics
Qnon_trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": 	22dense_11/kernel
:22dense_11/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°

Rlayers
trainable_variables
	variables
Slayer_metrics
Tlayer_regularization_losses
Umetrics
Vnon_trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°

Wlayers
 trainable_variables
!	variables
Xlayer_metrics
Ylayer_regularization_losses
Zmetrics
[non_trainable_variables
"regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:22dense_12/kernel
:2dense_12/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
°

\layers
&trainable_variables
'	variables
]layer_metrics
^layer_regularization_losses
_metrics
`non_trainable_variables
(regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°

alayers
*trainable_variables
+	variables
blayer_metrics
clayer_regularization_losses
dmetrics
enon_trainable_variables
,regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:2dense_13/kernel
:2dense_13/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
°

flayers
0trainable_variables
1	variables
glayer_metrics
hlayer_regularization_losses
imetrics
jnon_trainable_variables
2regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°

klayers
4trainable_variables
5	variables
llayer_metrics
mlayer_regularization_losses
nmetrics
onon_trainable_variables
6regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
!:2dense_14/kernel
:2dense_14/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
°

players
:trainable_variables
;	variables
qlayer_metrics
rlayer_regularization_losses
smetrics
tnon_trainable_variables
<regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
u0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ô
	vtotal
	wcount
x	variables
y	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 26}
:  (2total
:  (2count
.
v0
w1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
':%	2Adam/dense_10/kernel/m
!:2Adam/dense_10/bias/m
':%	22Adam/dense_11/kernel/m
 :22Adam/dense_11/bias/m
&:$22Adam/dense_12/kernel/m
 :2Adam/dense_12/bias/m
&:$2Adam/dense_13/kernel/m
 :2Adam/dense_13/bias/m
&:$2Adam/dense_14/kernel/m
 :2Adam/dense_14/bias/m
':%	2Adam/dense_10/kernel/v
!:2Adam/dense_10/bias/v
':%	22Adam/dense_11/kernel/v
 :22Adam/dense_11/bias/v
&:$22Adam/dense_12/kernel/v
 :2Adam/dense_12/bias/v
&:$2Adam/dense_13/kernel/v
 :2Adam/dense_13/bias/v
&:$2Adam/dense_14/kernel/v
 :2Adam/dense_14/bias/v
æ2ã
!__inference__wrapped_model_592949½
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *-¢*
(%
dense_10_inputÿÿÿÿÿÿÿÿÿ
2ÿ
-__inference_sequential_2_layer_call_fn_593088
-__inference_sequential_2_layer_call_fn_593394
-__inference_sequential_2_layer_call_fn_593419
-__inference_sequential_2_layer_call_fn_593270À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_2_layer_call_and_return_conditional_losses_593457
H__inference_sequential_2_layer_call_and_return_conditional_losses_593495
H__inference_sequential_2_layer_call_and_return_conditional_losses_593303
H__inference_sequential_2_layer_call_and_return_conditional_losses_593336À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_dense_10_layer_call_fn_593504¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_10_layer_call_and_return_conditional_losses_593514¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_activation_8_layer_call_fn_593519¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_activation_8_layer_call_and_return_conditional_losses_593524¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_11_layer_call_fn_593533¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_11_layer_call_and_return_conditional_losses_593543¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_activation_9_layer_call_fn_593548¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_activation_9_layer_call_and_return_conditional_losses_593553¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_12_layer_call_fn_593562¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_12_layer_call_and_return_conditional_losses_593572¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_activation_10_layer_call_fn_593577¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_activation_10_layer_call_and_return_conditional_losses_593582¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_13_layer_call_fn_593591¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_13_layer_call_and_return_conditional_losses_593601¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_activation_11_layer_call_fn_593606¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_activation_11_layer_call_and_return_conditional_losses_593611¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_14_layer_call_fn_593620¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_14_layer_call_and_return_conditional_losses_593630¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÒBÏ
$__inference_signature_wrapper_593369dense_10_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!__inference__wrapped_model_592949z
$%./897¢4
-¢*
(%
dense_10_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_14"
dense_14ÿÿÿÿÿÿÿÿÿ¥
I__inference_activation_10_layer_call_and_return_conditional_losses_593582X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
.__inference_activation_10_layer_call_fn_593577K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
I__inference_activation_11_layer_call_and_return_conditional_losses_593611X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
.__inference_activation_11_layer_call_fn_593606K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦
H__inference_activation_8_layer_call_and_return_conditional_losses_593524Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
-__inference_activation_8_layer_call_fn_593519M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
H__inference_activation_9_layer_call_and_return_conditional_losses_593553X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 |
-__inference_activation_9_layer_call_fn_593548K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ2¥
D__inference_dense_10_layer_call_and_return_conditional_losses_593514]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_10_layer_call_fn_593504P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_11_layer_call_and_return_conditional_losses_593543]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 }
)__inference_dense_11_layer_call_fn_593533P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ2¤
D__inference_dense_12_layer_call_and_return_conditional_losses_593572\$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_12_layer_call_fn_593562O$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_13_layer_call_and_return_conditional_losses_593601\.//¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_13_layer_call_fn_593591O.//¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_14_layer_call_and_return_conditional_losses_593630\89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_14_layer_call_fn_593620O89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ
H__inference_sequential_2_layer_call_and_return_conditional_losses_593303t
$%./89?¢<
5¢2
(%
dense_10_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_2_layer_call_and_return_conditional_losses_593336t
$%./89?¢<
5¢2
(%
dense_10_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
H__inference_sequential_2_layer_call_and_return_conditional_losses_593457l
$%./897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
H__inference_sequential_2_layer_call_and_return_conditional_losses_593495l
$%./897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_2_layer_call_fn_593088g
$%./89?¢<
5¢2
(%
dense_10_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_593270g
$%./89?¢<
5¢2
(%
dense_10_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_593394_
$%./897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_593419_
$%./897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
$__inference_signature_wrapper_593369
$%./89I¢F
¢ 
?ª<
:
dense_10_input(%
dense_10_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_14"
dense_14ÿÿÿÿÿÿÿÿÿ