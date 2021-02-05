;===============================================================================
;Speed
;===============================================================================
[statedef 10000]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim =10002
poweradd = -400

[State 0]
type=ScreenBound
trigger1=(command!="holdfwd")&&(command!="holdback")&&(command!="holddown")&&(command!="holdup")&&(time>=10)
movecamera=1,1
value=0

[State 0,Sound]
type = PlaySnd
trigger1 = (Time = 0)
value = s1,1

[state 0,s]
type = statetypeset
trigger1 = pos Y!= 0
statetype = A

[state 0,4]
type = posadd
trigger1 = time = 15
x = p2bodydist x - -70
y = p2bodydist y - 0

[state 0,4]
type = posadd
trigger1 = time = 15 && command = "holdback"
x = -200
y = 0

[state 0,4]
type = posadd
trigger1 = time = 15 && command = "holdup"
x = 0
y = -500

[State 10000, 1]
type = ChangeAnim
trigger1 = time = 0 && command = "holdfwd"
value = 10000

[State 10000, 1]
type = ChangeAnim
trigger1 = time = 0 && command = "holdback"
value = 10001

[State 10000, 1]
type = ChangeAnim
trigger1 = time = 0 && command = "holdup"
value = 10002

[State 10000, 1]
type = ChangeAnim
trigger1 = time = 0 && command = "holddown"
value = 10002

[state 10000]
type = posset
trigger1 = screenpos Y< 90
y = floor(pos Y)+floor(-screenpos Y+90)

[state 10000]
type = posset
trigger1 = command = "holddown" && time = 15
y = 0

[state 10000,5]
type = ctrlset
trigger1 = time > 18
value = 1

[state 10000,6]
type = turn
trigger1 = p2dist X< 0

[state 10000,7]
type = changestate
trigger1 = time >= 20 && command = "holdup"
value = 50
ctrl = 1

[state 10000]
type = changestate
trigger1 = time >= 25 && command != "holdup"
value = ifelse(prevstateno = 40 || prevstateno = 707 || prevstateno = 50, 50, ifelse(pos Y!= 0, 1100, 0))
ctrl = 1
;===============================================================================
; fireball
;===============================================================================
[Statedef 2000]
type    = S
movetype= A
physics = S
velset = 0,0,0
juggle = 4
ctrl = 0
poweradd= -200
anim = 2000

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 6008
ID =  6008
pos = 28,-57
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 12
supermove
pausemove
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value =2,0
volume = 99999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value =6,0
volume = 99999999
channel = -1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal ;player
name = "energy ball"
ID = 6220
stateno = 6220
pos =70,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove
size.yscale = 0.6
size.xscale = 0.6

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 16
trigger1 =  command = "fireball"
trigger1 = power >= 150
value = 2050
ctrl = 1

[State 0]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 2050]
type    = S
movetype= A
physics = S
velset = 0,0,0
juggle = 4
ctrl = 0
poweradd= -200
anim = 2050

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 6008
ID =  6008
pos = 28,-57
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 12
supermove
pausemove
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value =2,0
volume = 99999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value =6,0
volume = 99999999
channel = -1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal ;player
name = "energy ball"
ID = 6220
stateno = 6220
pos =70,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove
size.yscale = 0.6
size.xscale = 0.6

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 16
trigger1 = power >= 150
trigger1 = command = "fireball"
value = 2000
ctrl = 1

[State 0]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================================================================
;Fly
;===============================================================================
[Statedef 1110]
type = A
ctrl = 0
anim = 1100
velset =0,-5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,3
volume = 9999999
channel = -1

[State 1100,End]
type = ChangeState
trigger1 = animTime =0
value =1100
ctrl = 1

[Statedef 1100]
type = A
ctrl = 0
anim = 1100
velset = 0,0

[State 1100, ]
type = PowerAdd
trigger1 = time > 0
value = -2

[State 1100, ]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = var(2) = 0
trigger2 = Pos Y < -450
x = 0
y = 0

[State 1100, ]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 1100
value = 1100

[State 1100,]
type = VarSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(2) != 2
trigger2 = Var(2) = 2
trigger2 = Vel Y >= 0.3
v = 2
value = 1

[State 1100,]
type = VarSet
trigger1 = Var(2) = 1
trigger1 = Vel Y <= -0.3
v = 2
value = 2

[State 1100,]
type = VelAdd
trigger1 = Var(2) = 1
y = -0.02

[State 1100,]
type = VelAdd
trigger1 = Var(2) = 2
y = 0.03

[State 1100,]
type = VelSet
Triggerall = var(2) != 0
Trigger1 = command = "holdfwd"
Trigger2 = command = "holdback"
Trigger3 = command = "holdup"
Trigger4 = command = "holddown"
y = 0

[State 1100,]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
v = 2
value = 0

[State 1100,]
type = PosSet
trigger1 = Pos Y < -450
y = -450

[State 1100, ]
type = PosAdd
trigger1 = P2BodyDist Y > 450
trigger1 = Vel Y < 0
y = 50

[State 1100,]
type = VelSet
trigger1 = P2BodyDist Y > 450
trigger1 = Vel Y < 0
y = 0

[State 1100, ]
type = VelSet
trigger1 = Command = "FF"
trigger1 = Vel X < 6.6
x = 9

[State 1110, ]
type = PlaySnd
trigger1 = Command = "FF"
value = 1, 0

[State 1100,]
type = VelSet
trigger1 = Command = "BB"
trigger1 = Vel X > -5.7
x = -9

[State 1110, ]
type = PlaySnd
trigger1 = Command = "BB"
value = 1, 0

[State 1100, ]
type = VelSet
trigger1 = Command = "DD"
trigger1 = Vel Y < 6.6
y = 9

[State 1110, ]
type = PlaySnd
trigger1 = Command = "DD"
value = 1, 0

[State 1100,]
type = VelSet
trigger1 = Command = "UU"
trigger1 = Vel Y > -5.7
y = -9

[State 1110, ]
type = PlaySnd
trigger1 = Command = "UU"
value = 1, 0

[State 1100,]
type = ChangeAnim
triggerall = Anim != 1103
trigger1 = command = "holddown"
value = 1103

[State 1100, ]
type = VelAdd
trigger1 = command = "holddown"
y = 1

[State 1100,]
type = VelSet
trigger1 = command = "holddown"
trigger1 = Vel Y < 0
y = 0

[State 1100, ]
type = ChangeAnim
trigger1 = Anim != 1104
trigger1 = command = "holdup"
value = 1104

[State 1100, ]
type = VelAdd
trigger1 = command = "holdup"
y = -1

[State 1100,]
type = VelSet
trigger1 = command = "holdup"
trigger1 = Vel Y > 0
y = 0

[State 1100, ]
type = ChangeAnim
triggerall = Anim != 1102
trigger1 = command = "holdback"
value = 1102

[State 1100, ]
type = VelAdd
trigger1 = command = "holdback"
x = -1

[State 1100,]
type = VelSet
trigger1 = command = "holdback"
trigger1 = Vel X > 0
x = 0

[State 1100, ]
type = ChangeAnim
trigger1 = Anim != 1101
trigger1 = command = "holdfwd"
value = 1101

[State 1100, ]
type = VelAdd
trigger1 = command = "holdfwd"
x = 1

[State 1100,]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = Vel X < 0
x = 0

[State 1100,]
type = MakeDust
triggerall = Pos Y >= -80 && Pos Y <= -70
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 75
spacing = 3

[State 1100,]
type = MakeDust
triggerall = Pos Y >= -70 && Pos Y <= -60
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 60
spacing = 3

[State 1100,]
type = MakeDust
triggerall = Pos Y >= -60 && Pos Y <= -50
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 50
spacing = 3

[State 1100, ]
type = MakeDust
triggerall = Pos Y >= -50 && Pos Y <= -40
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 40
spacing = 3

[State 1100, ]
type = MakeDust
triggerall = Pos Y >= -40
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 30
spacing = 3

[State 1100,]
type = Turn
trigger1 = P2Dist X < 0

[State 1100,]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 1100,]
type = ChangeState
trigger1 = Time > 2
trigger1 = command = "fly"
value = 50
ctrl = 1

[State 1100,]
type = ChangeState
trigger1 = Win = 1
trigger2 = Lose = 1
value = 1202

;---------------------------------------------------------------------------
[Statedef 1202]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1202

[State 210, 3]
type = VelAdd
trigger1 = AnimElem = 1
trigger1 = AnimElem <= 2
x = -0.3

[State 210, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 3021, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1100

[State 210, 3]
type = ChangeState
trigger1 = time = 60
value = 1203

;---------------------------------------------------------------------------
[Statedef 1203]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0

[State 1531, 5]
type = PlaySnd
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
persistent = 0
value = s2,8

[State 52, 3]
type = PosSet
trigger1 = Vel Y = 0
y = 0

[State 209, 1]
type = ChangeAnim
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1203

[State 209, 1]
type = Velset
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 3021, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1100

[State 210, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================================================================
;super Salto
;===============================================================================
;super salto
[Statedef 60]
type = S
physics = S
anim = 40
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = S1,4
volume = 9999999999
channel = -1

[State 0, Explod]
type = Explod
trigger1 =time=0
anim =6015
ID = 6015
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 20
supermove
pausemove
scale = .5,.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 7000,end]
type = changestate
trigger1 = animtime = 0
value = 61

[Statedef 61]
type = A
physics = A
anim = 41
velset = 0,-13
ctrl = 1

[state 60,VelSetFwd]
type            = VelSet
trigger1        = command = "holdfwd"
x               = 3

[state 60,VelSetBack]
type            = VelSet
trigger1        = command = "holdback"
x               = -3

[State 100, 3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

; Para frente
;------------------|

[Statedef 62]
type = S
physics = S
anim = 40
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = S1,4
volume = 9999999999
channel = -1

[State 7002,end]
type = changestate
trigger1 = animtime = 0
value = 63

[Statedef 63]
type = A
physics = A
anim = 42
velset = 7,-10
ctrl = 1

[State 100, 3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

; Para trás
;------------------|
[Statedef 64]
type = S
physics = S
anim = 40
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = S1,4
volume = 9999999999
channel = -1

[State 7002,end]
type = changestate
trigger1 = animtime = 0
value = 65

[Statedef 65]
type = A
physics = A
anim = 43
velset = -7,-10
ctrl = 1

[State 100, 3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
;============================
;rush
;=============================
[StateDef 1000]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 20
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = Timemod = 4,2
anim = 6016
ID = 6016
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 6
removetime = -2
random = 10,0
scale = .6, .3
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Timemod = 4,2
anim = 6016
ID = 6016
pos = 0,20
postype = p1
facing = 1
vfacing = 1
bindtime =6
random = 10,0
removetime =-2
scale = .6, .3
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = movecontact = 1
time = 2
add = 50,5,-200
mul = 256,256,256
sinadd = 40,30,0,100
invertall = 0
color = 0

[State 0]
type = PlaySnd
trigger1 = time = 0
value = s3, 0
volume = 99999999999999999999999

[State 0]
type = PlaySnd
trigger1 = time = 0
value = s5, 17
volume = 99999999999999999999999

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 40,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[120,152]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 40,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, VelAdd]
type = Veladd
trigger1 = time > 0
x = 2.3
y = 0

[State 0, Explod]
type = Explod
trigger1 =  time = 0
anim =  6006
ID =  6549
pos = 40,-35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 20
supermove =1
pausemove =0
scale = 1,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, 1]
type = HitDef
trigger1 =  animelem = 1
attr = S, NA
damage = 80,40
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno=  -1
guard.sparkno = -1
hitsound= s0,15
guard.sound= s0,15
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1
EnvShake.time =10
EnvShake.freq = 200
EnvShake.ampl = 10
EnvShake.phase = 200

[State 0, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 0, end]
type = ChangeState
trigger1 = movecontact = 1
value = 1001
ctrl = 1

[StateDef 1001]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1001
poweradd = 20
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 0  && time < 16
x = -1.2
y = 0

[State 0, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===============================================================================
;modo furioso
;===============================================================================
;modo furioso
[Statedef 3000]
type = S
movetype= I
physics = S
juggle = 4
ctrl = 0
anim = 3000
poweradd = -3000
sprpriority = 1
velset= 0,0

[State 0]
type= PalFX
trigger1= time = 165
time= 20
add = 60,60,0
mul = 255,255,255
sinadd = -20,-20,10,10
invertall = 0
color = 256

[State 0, Explod]
type = Explod
trigger1 = time = 165
anim =  6040
ID =  6040
pos = 0,-45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 25
supermove =1
pausemove =0
scale = 2,2
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
triggerall = pos y = 0
trigger1 = time = 165
anim =  6020
ID =  6020
pos = 5,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 30
supermove =1
pausemove =0
scale = 1.5,1.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 165
anim =  60070
ID =  60070
pos = -2,15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 45
supermove =1
pausemove =0
scale = 1.5,1.2
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time =  200
anim = -1
sound = -1
pos =  -1
movetime = 200
darken = 0

[State 0, Explod]
type = Explod
trigger1 = Time = 1
anim = 8100
ID = 81001
pos = 120,0
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,1
removetime = 30
scale = 1,1
ontop = 1
supermove = 1
pausemove = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 1
anim = 8100
ID = 81002
pos = 120,355
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
removetime = 30
scale = 1,1
ontop = 1
shadow = 0,0,0
supermove = 1
pausemove = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 30
anim = 8100
ID = 81001
pos = 120,30
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = 140
supermove = 1
pausemove = 0
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 30
anim = 8100
ID = 81002
pos = 120,325
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = 140
scale = 1,1
supermove = 1
pausemove = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 160
anim = 8100
ID = 81001
pos = 120,0
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
removetime = 30
scale = 1,1
ontop = 1
supermove = 1
pausemove = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 160
anim = 8100
ID = 81002
pos = 120,355
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,1
removetime = 30
scale = 1,1
ontop = 1
shadow = 0,0,0
supermove = 1
pausemove = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, PalFXWiz]
type = bgPalFX
trigger1 =  time > 0 && time < 200
time = 1
add = 40,40,-100
mul = 200,200,200
sinadd = 40,30,0,100
invertall = 0
color = 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S5,4
volume = 0
channel = -1

[State 0, varset]
type=varset
trigger1= Time > 1
var(19) = 1200

[State 0, ChangeState]
type = ChangeState
trigger1 = Time = 200
value = ifelse(pos y < 0, 107, 0)
ctrl = 1

;===============================================================================
;charge
;===============================================================================
;charge
[Statedef 830]
type = S
physics = S
movetype= I
physics = S
juggle  = 9
velset = 0,0
ctrl = 0
anim = 830
poweradd = 0
facep2 = 1

[State 0]
type	= Helper
trigger1= (Time > 10) && ((GameTime%20) = 0) && (Random < 249) && (NumHelper(4578) < 5)
helpertype= Normal
name= "pedras"
id= 4578
pos= 0,0
postype= p1
facing	 = 0
stateno	 = 4578
keyctrl	 = 0
ownpal	 = 1
supermovetime= 9999
pausemovetime= 9999
size.xscale= (IfElse(Random <= 799,0.75,3))
size.yscale= (IfElse(Random <= 799,0.75,3))

[State 0]
type= Helper
trigger1= (Time > 10) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(1231) < 5)
helpertype= Normal
name	= "pedras1"
id = 1231
pos = 0,0
postype	= p1
facing	= 0
stateno	= 1231
keyctrl	= 0
ownpal	 = 1
supermovetime= 9999
pausemovetime= 9999
size.xscale= (IfElse(Random <= 499,0.75,0.50))
size.yscale= (IfElse(Random <= 499,0.75,0.50))

[State 0]
type= Helper
trigger1= (Time > 10) && ((GameTime%20) = 0) && (Random = [249,749]) && (NumHelper(1232) < 5)
helpertype= Normal
name= "pedras2"
id= 1232
pos= 0,0
postype	= p1
facing	 = 0
stateno = 1232
keyctrl	= 0
ownpal = 1
supermovetime= 9999
pausemovetime= 9999
size.xscale = (IfElse(Random <= 499,0.50,0.75))
size.yscale= (IfElse(Random <= 499,0.50,0.75))

[State 0, Explod]
type = Explod
trigger1= ((Time > 0) && ((GameTime%100) = 0))
anim =  6040
ID =  60090
pos = -8,-56
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 55
supermove
pausemove
scale = 1.8,1.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 2000]
type = Helper
trigger1= ((Time > 0) && ((GameTime%20) = 0))
name = "Tras"
stateno = 1428
postype = p1
pos = -10, 0
keyctrl = 0
ownpal = 1
id = 1428

[State 2000]
type = Helper
trigger1= ((Time > 0) && ((GameTime%20) = 0))
name = "meio"
stateno = 1427
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 1427

[State 2000]
type = Helper
trigger1= ((Time > 0) && ((GameTime%20) = 0))
name = "Frente"
stateno = 1426
postype = p1
pos = 10, 0
keyctrl = 0
ownpal = 1
id = 1426

[State 0]
type= BGPalFX
trigger1= ((Time > 0) && ((GameTime%10) = 0))
time= 15
add = 40,40,-100
mul = 200,200,200
sinadd = 40,30,0,100
invertall = 0
color = 256

[State 0]
type= Helper
trigger1= (Time > 15) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype= Normal
name	= "pedras1"
id = 4578
pos = 0,0
postype	= p1
facing	= 0
stateno	= 4578
keyctrl	= 0
ownpal	 = 1
supermovetime= 99999
pausemovetime= 99999
size.xscale= (IfElse(Random <= 499,1,0.50))
size.yscale= (IfElse(Random <= 499,1,0.50))

[State 0]
type= Helper
trigger1= (Time > 15) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype= Normal
name	= "pedras1"
id = 1231
pos = 50,0
postype	= p1
facing	= 0
stateno	= 1231
keyctrl	= 0
ownpal	 = 1
supermovetime= 9999
pausemovetime= 9999
size.xscale= (IfElse(Random <= 499,0.75,0.50))
size.yscale= (IfElse(Random <= 499,0.75,0.50))

[State 0]
type= Helper
trigger1= (Time > 15) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype= Normal
name= "pedras2"
id= 1232
pos= -50,0
postype	= p1
facing	 = 0
stateno = 1232
keyctrl	= 0
ownpal = 1
supermovetime= 9999
pausemovetime= 9999
size.xscale = (IfElse(Random <= 499,0.50,0.75))
size.yscale= (IfElse(Random <= 499,0.50,0.75))

[State 830, temblor]
type = EnvShake
trigger1 = (Time > 45) && ((GameTime%11) = 0)
time =  10
freq = 60
ampl = -3
phase = 0

[State 830, 1]
type = Poweradd
trigger1 = Time >= 0
value = 12

[State 0, Explod]
type = Explod
trigger1 = time = 6
anim =  60090
ID =  60090
pos = -5 ,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 0.4,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 6
anim =  60091
ID =  60090
pos = 5 ,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 0.4,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 7
anim =  60090
ID =  60090
pos = -22 ,-44
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 0.4,0.6
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 7
anim =  60091
ID =  60090
pos = 22 ,-44
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 0.4,0.6
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 7
anim =  60090
ID =  60090
pos = -30,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 0.4,0.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 7
anim =  60091
ID =  60090
pos = 30,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 0.4,0.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = random > 700
anim =  60094
ID =  60090
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 10,60
removetime = 6
supermove
pausemove
scale = 0.4,0.5
sprpriority = ifelse(random<500,-3,3)
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = random > 700
anim =  60094
ID =  60090
pos = -40,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 10,60
removetime = 6
supermove
pausemove
scale = 0.4,0.4
sprpriority = ifelse(random<500,-3,3)
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = random > 700
anim =  60094
ID =  60090
pos = 40,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999
vel = 0,0
accel = 0,0
random = 10,60
removetime = 6
supermove
pausemove
scale = 0.4,0.4
sprpriority = ifelse(random<500,-3,3)
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 6
anim =  6011
ID =  6011
pos = -2,17
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 9999999999999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
triggerall = pos y = 0
trigger1 = timemod = 12,0
anim =  6015
ID =  6011
pos = -2,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 9999999999999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 0.8,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 6
anim =  8036
ID =  6011
pos = 170,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999999999999999999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 1.3,1.3
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S5,5
volume = 9999999999999999
channel = 14

[State 0, PlaySnd]
type = PlaySnd
trigger1 = power > 3800
value = S3,1
volume = 9999999999999999
channel =15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = ((Time > 0) && ((GameTime%30) = 0))
value = S3,0
volume = 9999999999999999
channel = 16

[State 830, removeAura]
type = removeExplod
ID  = 60090
trigger1 = (command != "ki") || (command != "ki2") || (life = 0) || (stateno != 830) || (power = 4000)

[State 830, removeBase]
type = removeExplod
ID  = 6011
trigger1 = (command != "ki") || (command != "ki2") || (life = 0) || (stateno != 830) || (power = 4000)

[State 830,	StopSnd]
type	= StopSnd
trigger1= (command != "ki") || (command != "ki2") || (life = 0) || (stateno != 830) || (power = 4000)
channel	= 15

[State 830,	StopSnd]
type	= StopSnd
trigger1= (command != "ki") || (command != "ki2") || (life = 0) || (stateno != 830) || (power = 4000)
channel	= 14

[State 830,	StopSnd]
type	= StopSnd
trigger1= (command != "ki") || (command != "ki2") || (life = 0) || (stateno != 830) || (power = 4000)
channel	= 16

[State 830, 4]
type = ChangeState
trigger1 = command != "ki"
trigger1 = command != "ki2"
value = 0
ctrl = 1

[State 830, 4]
type = ChangeState
trigger1 = power = 4000
value = 2600
ctrl = 1
