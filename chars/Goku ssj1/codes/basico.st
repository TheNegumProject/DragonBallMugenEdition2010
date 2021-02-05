;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------
; Win pose 1

[Statedef 180]
type = S
ctrl = 0
velset = 0,0
anim = 2600
sprpriority = -1

[State 0]
type= PalFX
trigger1= time = 10
time= 55
add = 60,60,0
mul = 255,255,255
sinadd = -20,-20,10,10
invertall = 0
color = 256

[State 0, Explod]
type = Explod
triggerall = pos y = 0
trigger1 = animelem = 2
anim = 6016
ID = 6016
pos = 40,0
postype = p1
facing = -1
vfacing = 1
bindtime = 6
removetime = 64
random = 10,0
scale = .6, .3
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 0, Explod]
type = Explod
triggerall = pos y = 0
trigger1 = animelem = 2
anim = 6016
ID = 6016
pos = -37,0
postype = p1
facing = 1
vfacing = 1
bindtime = 6
removetime = 64
random = 10,0
scale = .6, .3
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
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
removetime = 55
supermove
pausemove
scale = 2,2
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
triggerall = pos y = 0
trigger1 = animelem = 2
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
removetime = 60
supermove
pausemove
scale = 1.5,1.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
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
removetime = 55
supermove
pausemove
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value =6,7
volume = 99999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value =7,29
volume = 99999999
channel = -1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "super explosive wave"
ID =6020
stateno = 6020
pos = 10,-30
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
ownpal = 1
supermove =1
pausemove =1
size.xscale = 1
size.yscale = 1

[State 188, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,70]
flag = roundnotover
;---------------------------------------------------------------------------
; Introduction
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 0, PalFXWiz]
type = bgPalFX
trigger1 =  time > 0 && time < 1700
time = 1
add = 40,40,-100
mul = 200,200,200
sinadd = 40,30,0,100
invertall = 0
color = 256

[State 0, Helper]
type = Helper
trigger1 = animelem = 1 && numhelper(8100) = 0
helpertype = normal
name = "Cinema"
ID = 8100
stateno = 8100
pos = 0,0
postype = front
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= Intro
flag2			= NoBarDisplay
flag3			= NoMusic

[State 0, Explod]
type = Explod
trigger1 =  animelem = 32
trigger2 =  animelem = 41
trigger3 =  animelem = 48
trigger4 =  animelem = 54
trigger5 =  animelem = 66
anim = 8010
ID =  190
pos = -45,-275
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 21
supermove =0
pausemove =0
scale = 1.5,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 32
trigger2 =  animelem = 41
trigger3 =  animelem = 48
trigger4 =  animelem = 54
trigger5 =  animelem = 66
anim =6022
ID =  190
pos = -2,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 25
supermove =0
pausemove =0
scale = 0.7,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 62
anim = 8021
ID =  190
pos = 5,-100
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 200
supermove =0
pausemove =0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 4
anim = 6030
ID =  190
pos = -160,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove =0
pausemove =0
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 10
anim = 6030
ID =  6030
pos = -120,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove =0
pausemove =0
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 16
anim = 6030
ID =  6030
pos = -50,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove =0
pausemove =0
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 22
anim = 6030
ID =  190
pos = 160,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove =0
pausemove =0
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 28
anim = 6030
ID =  190
pos = 120,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove =0
pausemove =0
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 36
anim = 6030
ID =  190
pos = 50,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove =0
pausemove =0
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 44
anim = 6030
ID =  190
pos = -120,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove =0
pausemove =0
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 51
anim = 6030
ID =  190
pos = 120,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove =0
pausemove =0
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 4
trigger2 =  animelem = 10
trigger3 =  animelem = 16
trigger4 =  animelem = 22
trigger5 =  animelem = 28
trigger6 =  animelem = 36
trigger7 =  animelem = 44
trigger8 =  animelem = 51
value = S7,36
volume = 9999999999999
channel = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 580
trigger3 = time = 1200
value = S7,35
volume = 9999999999999
channel = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 60
value = S6,5
volume = 9999999999999
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 79
value = S5,9
volume = 9999999999999
channel = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 32
trigger2 =  animelem = 41
trigger3 =  animelem = 48
trigger4 =  animelem = 54
value = S7,29
volume = 9999999999999
channel = 3

[State 191, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S5,4
volume = 100

[State 195, 2]
type = ChangeState
trigger1 = Time = 20
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Standing Light Punch
; CNS difficulty: easy
  [Statedef 200]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 200				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

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

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,6
sparkno = -1              ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guardsparkno = -1            ;Sound to play on hit           ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "x"
value = 201
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 201]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 210				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 56,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6                ;Damage that move inflicts, guard damage
animtype = Light
pausetime = 2,6             ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "x"
value = 202
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
; CNS difficulty: easy
  [Statedef 202]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 201				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

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

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,6
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1            ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "x"
value = 203
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 203]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 211				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 56,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6              ;Damage that move inflicts, guard damage
animtype = Light
pausetime = 2,6             ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 10
trigger1 =  movehit  && command = "x"
value = 204
ctrl = 1

[Statedef 204]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 202				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 40,-63
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,6
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1            ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "x"
value = 205
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 205]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 218				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 56,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6                 ;Damage that move inflicts, guard damage
animtype = Light
pausetime = 2,8             ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "x"
value = 206
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
; CNS difficulty: easy
  [Statedef 206]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 200				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

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

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1         ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "x"
value = 207
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 207]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 211				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 56,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6               ;Damage that move inflicts, guard damage
animtype = Light
pausetime = 2,15           ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 10  && var (19) = 0
trigger1 =  movehit  && command = "x"
value = 213
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 10  && var (19) > 0
trigger1 =  movehit  && command = "x"
value = 200
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 208]
type = A

[State 190, 3]
type = ChangeState
trigger1 = random <= 449
value = 209

[State 190, 3]
type = ChangeState
trigger1 = random <= 449
value = 213

[Statedef 209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 212                    ;Change animation (Def: no change)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 2
x = p2bodydist x - 120
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 15 && time <= 29
x = 3
y = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 5
time = 11
anim = -1
sound = s7,34
pos = -1
movetime = 0
darken = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s5,7
volume = 9999999999
channel = -1

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 60,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,5
volume = 9999999999
channel = -1

[State 0]
type  = Pause
triggerall = movecontact
trigger1 =  time >= 0
trigger1 = gametime%1 = 0
time = 2

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 20,10               ;Damage that move inflicts, guard damage
animtype = heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF
pausetime = 2,5              ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = -1                    ;Spark anim no (Def: set above)
sparkxy = -25, -40
hitsound = s0,13
guardsound = s0,13
guardsparkno = -1                 ;X-offset for the "hit spark" rel. to p2,             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 30       ;Time that the opponent slides back
ground.hittime  = 20            ;Time opponent is in hit state
ground.velocity = -5        ;Velocity at which opponent is pushed
airguard.velocity = -3    ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 1
fall.recovery = 1          ;Time before opponent regains control in air

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 210, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

  [Statedef 213]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 213				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 5
time = 11
anim = -1
sound = s7,34
pos = -1
movetime = 0
darken = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s6,6
volume = 9999999999
channel = -1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

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

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = time = 10
trigger2 = time = 18
trigger3 = time = 26
trigger4 = time = 34
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 10,5                 ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,6
sparkno = -1              ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guardsparkno = -1            ;Sound to play on hit           ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -1.2,-10            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-5           ;X-velocity at which opponent is pushed,
air.hittime = 12
fall =1

[State 200, 1]
type = HitDef
trigger1 = time = 37
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 10,5                ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,6
sparkno = -1              ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guardsparkno = -1            ;Sound to play on hit           ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -1.2,-10           ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-5         ;X-velocity at which opponent is pushed,
air.hittime = 12
fall =1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = [13,34]
x = 1.1
y = -0.2

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Standing Light Punch
; CNS difficulty: easy
  [Statedef 210]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 210				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 56,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15,7                  ;Damage that move inflicts, guard damage
animtype = Light
pausetime = 6,6              ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
; CNS difficulty: easy
[Statedef 217]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 217				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.8
y = 0

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

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 30,15                 ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,6
sparkno = -1              ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,15
guardsound = s0,15
guardsparkno = -1            ;Sound to play on hit           ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -8          ;Velocity at which opponent is pushed
airguard.velocity = -2,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 1
EnvShake.time =10
EnvShake.freq = 200
EnvShake.ampl = 10
EnvShake.phase = 200

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 219]
type = S
movetype= A
physics= S
velset= 0,0
ctrl= 0
anim = 219

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

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 13
x = p2bodydist x - -50
y = p2bodydist y - 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 13
value = S1,1
volume = 999999999999
channel = -1

[State 0, Turn]
type = Turn
trigger1 = time = 14

[State 0]
type = HitDef
trigger1 = AnimElem = 8
attr= S, NA
animtype= light
damage = 30,15
guardflag= M
sparkno = -1				;Spark anim no (Def: set above)		;X-offset for the "hit spark" rel. to p2,
guard.sparkno = -1;X-offset for the "hit spark" rel. to p2,
hitsound= s0,15
guard.sound= s0,15
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5, -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -5, -4
fall = 1
fall.recover = 1
kill = 1
EnvShake.time =10
EnvShake.freq = 200
EnvShake.ampl = 10
EnvShake.phase = 200

[State 0, VelAdd]
type = VelAdd
trigger1 = time = [22,35]
x = -1.5
y = 0

[State 210, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Standing Medium Punch
; CNS difficulty: easy
[Statedef 220]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 211				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 56,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6              ;Damage that move inflicts, guard damage
animtype = Light
pausetime = 3,10             ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 9
trigger1 =  movehit  && command = "y"
value = 221
ctrl = 1

[State 210, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 221]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 202				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 40,-63
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 12,6                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 3,10
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1            ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 9
trigger1 =  movehit  && command = "y"
value = 222
ctrl = 1

[State 210, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
; CNS difficulty: easy
[Statedef 222]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 224                    ;Change animation (Def: no change)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 30,-75
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 0,5
volume = 9999999999
channel = -1

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15,7                 ;Damage that move inflicts, guard damage
animtype = heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF
pausetime = 3,10               ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = -1                    ;Spark anim no (Def: set above)
sparkxy = -25, -40
hitsound = s0,13
guardsound = s0,13
guardsparkno = -1                ;X-offset for the "hit spark" rel. to p2,             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10         ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -1          ;Velocity at which opponent is pushed
airguard.velocity = -1,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 0                ;Time before opponent regains control in air

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 11
trigger1 =  movehit  && command = "y"
value = 223
ctrl = 1

[State 210, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 223]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 223                     ;Change animation (Def: no change)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 30,-47
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,5
volume = 9999999999
channel = -1

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15,7                 ;Damage that move inflicts, guard damage
animtype = heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF
pausetime = 3,10               ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = -1                    ;Spark anim no (Def: set above)
sparkxy = -25, -40
hitsound = s0,13
guardsound = s0,13
guardsparkno = -1                ;X-offset for the "hit spark" rel. to p2,             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10         ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -1           ;Velocity at which opponent is pushed
airguard.velocity = -1,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 0                ;Time before opponent regains control in air

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 10
trigger1 =  movehit  && command = "y"
value = 224
ctrl = 1

[State 210, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 224]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 203				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 56,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, Explod]
type = Explod
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
anim = 7006
ID =  7006
pos = 50,-43
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 9999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 12
supermove =1
pausemove =0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 18,9               ;Damage that move inflicts, guard damage
animtype = Light
pausetime = 3,30            ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = s0,10
guardsound = s0,10
guard.sparkno = -1              ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 15         ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -3        ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 24
trigger1 =  movehit  && command = "y"
value = 225
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 225]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 222                    ;Change animation (Def: no change)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 18
anim = -1
sound = s7,34
pos = -1
movetime = 0
darken = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 10,-90
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 1
value = S7,1
volume = 9999999999999
channel = -1

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15,7                 ;Damage that move inflicts, guard damage
animtype = heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF
pausetime = 2,10                ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = -1                    ;Spark anim no (Def: set above)
sparkxy = -25, -40
hitsound = s0,13
guardsound = s0,13
guardsparkno = -1               ;X-offset for the "hit spark" rel. to p2,             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10         ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -2,-8       ;Velocity at which opponent is pushed
airguard.velocity = -1,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2,-10          ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 1                ;Time before opponent regains control in air

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 50
freq = 80
ampl = -4
phase = 90

[State 0]
type  = pause
triggerall = movecontact
trigger1 =  time >= 0
trigger1 = gametime%1 = 0
time = 1

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 23
trigger1 =  movehit && command = "y"
trigger1 = power >= 500
value = 226
ctrl = 1

[State 210, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 226]
type = a
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 622
poweradd = -400

[State 0, SuperPause]
type = SuperPause
trigger1 = animelem = 3
time = 15
anim = -1
sound = s7,34
pos = -1
movetime = 0
darken = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 3
value = S5,17
volume = 9999999999999
channel = -1

[State 0]
type  = pause
trigger1 =  time >= 0
trigger1 = gametime%1 = 0
time = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 7
x = p2bodydist x - 0
y = p2bodydist y - 40

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 50
freq = 80
ampl = -4
phase = 90

[State 620, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = 30,15
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno=  -1
guard.sparkno = -1
hitsound = -1
guard.sound=-1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -1
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,5
air.hittime = 12
fall=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  movecontact = 1
value = S7,33
volume = 9999999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 36,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 1113, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 230

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 32,-22
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 3,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "a"
value = 231
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
; CNS difficulty: easy
[Statedef 231]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 231

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 30,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 3,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "a"
value = 232
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
; CNS difficulty: easy
[Statedef 232]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 232

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 24,-83
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 3,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=8
trigger1 =  movehit  && command = "a"
value = 233
ctrl = 1

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
; CNS difficulty: easy
[Statedef 233]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 231

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 30,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 3,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "a"
value = 234
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 234]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 230

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 32,-22
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 3,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "a"
value = 235
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
; CNS difficulty: easy
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 231

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 30,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 3,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 8
trigger1 =  movehit  && command = "a"
value = 236
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
; CNS difficulty: easy
[Statedef 236]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 232

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 24,-83
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 3,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=8 && var (19) = 0
trigger1 =  movehit  && command = "a"
value = 237
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=8 && var (19) > 0
trigger1 =  movehit  && command = "a"
value = 230
ctrl = 1

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 237]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 233

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 30,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 13,6                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 3,30
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -10              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1               ;Sound to play on hit
guardsound = -1             ;Sound to play on guard
ground.type = high             ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10           ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -1             ;Velocity at which opponent is pushed
airguard.velocity = -1,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=10
trigger1 =  movehit  && command = "a"
value = 238
ctrl = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 238]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 250

[State 0]
type  = Pause
triggerall = movecontact
trigger1 =  time >= 0
trigger1 = gametime%1 = 0
time = 2

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 15
anim = -1
sound = s7,34
pos = -1
movetime = 0
darken = 1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 30,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = s5,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 13,6                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 3,7
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -10              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1               ;Sound to play on hit
guardsound = -1             ;Sound to play on guard
ground.type = high             ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 6            ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -6            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = [6,17]
x = -1.2
y = 0

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 240

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos =40,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =3
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,6
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 14
trigger1 =  movehit  && command = "b"
value = 246
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 246]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 233

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 35,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 13,6                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 3,30
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -10              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1               ;Sound to play on hit
guardsound = -1             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=9
trigger1 =  movehit  && command = "b"
value = 247
ctrl = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 247]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 248

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 0
x = 0.5
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 35,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 13,6                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 3,10
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -10              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1               ;Sound to play on hit
guardsound = -1             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=14
trigger1 =  movehit  && command = "b"
value = 248
ctrl = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 248]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 248

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 0
x = 0.5
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 35,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 13,6                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 3,10
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -10              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1               ;Sound to play on hit
guardsound = -1             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=14
trigger1 =  movehit  && command = "b"
value = 249
ctrl = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 249]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 248

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 0
x = 0.5
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 35,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 13,6                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 3,10
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -10              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1               ;Sound to play on hit
guardsound = -1             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=14
trigger1 =  movehit  && command = "b"
value = 250
ctrl = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 251

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 1
value = S5,7
volume = 999999999
channel = -1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 15
anim = -1
sound = s7,34
pos = -1
movetime = 0
darken = 1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos =20,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,6
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10         ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -2,-8       ;Velocity at which opponent is pushed
airguard.velocity = -1,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2,-10          ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 1

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >=16
trigger1 =  movehit  && command = "b"
trigger1 = power >= 500
value = 226
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 241

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 15,-47
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,9
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 12
trigger1 =  movehit  && command = "b"
value = 242
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 242]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 242

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 15,-47
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,9
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 12
trigger1 =  movehit  && command = "b"
value = 243
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 243]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 243

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 15,-47
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,9
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 12
trigger1 =  movehit  && command = "b"
value = 244
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 244]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 243

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 15,-47
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =2
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,11
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall =time >= 12
trigger1 =  movehit  && command = "b"
value = 245
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 245

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.1
y = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 18
anim = -1
sound = s7,34
pos = -1
movetime = 0
darken = 1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 15,-47
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact = 1
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =4
attr = S, NA
damage = 13,6
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,9
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = -1                ;Sound to play on hit
guardsound = -1               ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10          ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -2,-5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2,-5           ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 1

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouching Light Punch
; CNS difficulty: easy
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 400
velset = 0,0
sprpriority = 1;2

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7001
pos = 32,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 400, 2]
type = HitDef
trigger1 = AnimElem =2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 10, 5			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 6, 6			;Time attacker pauses, time opponent shakes
sparkno = -1				;Spark anim no (Def: set above)
sparkxy = -20, -30		;X-offset for the "hit spark" rel. to p2,
hitsound = -1		;Sound to play on hit
guardsound = -1			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -2		;Velocity at which opponent is pushed
airguard.velocity = -9,-.8	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air

[State 200,5]
type = ChangeState
triggerall =time >= 13
trigger1 =  movehit  && command = "x"
value = 410
ctrl = 1

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 40,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 12, 6			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 6			;Time attacker pauses, time opponent shakes
sparkno = -1				;Spark anim no (Def: set above)
sparkxy = -20, -30		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = -1		;Sound to play on hit
guardsound = -1			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -2		;Velocity at which opponent is pushed
airguard.velocity = -.9,-.8	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12
fall = 0			;Time before opponent regains control in air

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,4
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 40,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 12, 6			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 6			;Time attacker pauses, time opponent shakes
sparkno = -1				;Spark anim no (Def: set above)
sparkxy = -20, -30		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = -1		;Sound to play on hit
guardsound = -1			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -2		;Velocity at which opponent is pushed
airguard.velocity = -.9,-.8	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12
fall = 0			;Time before opponent regains control in air

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90
[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 1000,2
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,3
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -10,-50
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 420, 2]
type = hitdef
trigger1 = animelem = 2
attr = S, NA
damage    = 40, 5
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,5
sparkno =-1
sparkxy = -10,-50;70
hitsound = S5,2
guardsound = 5,2
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -10,-5
air.velocity = -10,-5
air.hittime = 100
fall = 0
air.cornerpush.veloff = 0

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 430

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,11
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 1000,1
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,5
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 36,-0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 12, 6			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default				;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 6			;Time attacker pauses, time opponent shakes
sparkno =-1			;Spark anim no (Def: set above)
sparkxy = -20, -5		;X-offset for the "hit spark" rel. to p2,				;Y-offset for the spark rel. to p1
hitsound = -1		;Sound to play on hit
guardsound = -1			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -2
airguard.velocity = -9,-.8
air.type = High
air.velocity = -.4,-3
air.hittime = 12		;Time before opponent regains control in air

[State 200,5]
type = ChangeState
triggerall =time >= 13
trigger1 =  movehit  && command = "a"
value = 431
ctrl = 1

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 431]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 431

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,11
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 1000,1
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,5
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 50,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 12, 6			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default				;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 6			;Time attacker pauses, time opponent shakes
sparkno =-1			;Spark anim no (Def: set above)
sparkxy = -20, -5		;X-offset for the "hit spark" rel. to p2,				;Y-offset for the spark rel. to p1
hitsound = -1		;Sound to play on hit
guardsound = -1			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -2
airguard.velocity = -9,-.8
air.type = High
air.velocity = -.4,-3
air.hittime = 12		;Time before opponent regains control in air

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Medium Kick
; CNS difficulty: easy
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 440

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 32,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 12, 6			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default				;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 6			;Time attacker pauses, time opponent shakes
sparkno = -1				;Spark anim no (Def: set above)
sparkxy = -30, -5		;X-offset for the "hit spark" rel. to p2					;Y-offset for the spark rel. to p1
hitsound = -1		;Sound to play on hit
guardsound = -1			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,				;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 440, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 450

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7003
pos = 35,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,12
volume = 9999999999
channel = -1

[State 450, 2]
type = HitDef
trigger1 = AnimElem =2
attr = S, NA
damage = 13, 7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, -5
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2
airguard.velocity = -9,-.8
air.type = High
air.velocity = -.4,-3
air.hittime = 12

[State 450, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 600

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 45,-15
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 10, 5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 6
sparkno = -1
sparkxy = -10, -15
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Medium Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 610

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,4
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 30,-10
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 12, 6
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 6
sparkno = -1
sparkxy = -10, -15
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Strong Punch
; CNS difficulty: easy
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 70
ctrl = 0
anim = 620

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 1000,2
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,3
volume = 9999999999
channel = -1

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 2
;trigger1 = Time = 0
attr = S, NA
damage = 70, 7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, -50
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -15, -55
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,11
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 45,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 630, 2]
type = HitDef
trigger1 = AnimElem =2
attr = S, NA
damage = 10, 5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 6
sparkno = -1
sparkxy = -40, -50
hitsound = -1
guardsound =-1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200,5]
type = ChangeState
triggerall =time >= 11
trigger1 =  movehit  && command = "a"
value = 631
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 631]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 631

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,11
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 45,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 630, 2]
type = HitDef
trigger1 = AnimElem =2
attr = S, NA
damage = 10, 5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 6
sparkno = -1
sparkxy = -40, -50
hitsound = -1
guardsound =-1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200,5]
type = ChangeState
triggerall =time >= 11
trigger1 =  movehit  && command = "a"
value = 630
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
;---------------------------------------------------------------------------
; Jump Medium Kick
; CNS difficulty: easy
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,11
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 45,-15
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 630, 2]
type = HitDef
trigger1 = AnimElem =2
attr = S, NA
damage = 10, 5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 6
sparkno = -1
sparkxy = -40, -50
hitsound = -1
guardsound =-1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Strong Kick
; CNS difficulty: easy
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 70
ctrl = 0
anim = 650

[State 0, EnvShake]
type = EnvShake
trigger1 = movecontact
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = 0,11
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
triggerall = p2stateno =[5000,5999]
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 7000
stateno = 7004
pos = 45,-55
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =1
pausemove=0

[State 650, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 15, 6
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -40, -35
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 1000
id = 6549

[State 0, PalFXWiz]
type = allPalFX
trigger1 = stateno = [2200,2204]
time = 1
add = 5,5,256
mul = 256,256,256
sinadd = 0,0,10,10
invertall = 0
color = 256

[State 0, PalFXWiz]
type = allPalFX
trigger1 = stateno =2300
trigger2 = stateno = [23001,23004]
trigger3 = stateno =2310
trigger4 = stateno = [23101,23104]
time = 1
add = 10,10,10
mul = 250,250,250
sinadd = 0,0,10,10
invertall = 0
color = 256

[State 0, PalFXWiz]
type = bgPalFX
trigger1 = stateno =2400
time = 1
add = 10,10,10
mul = 256,256,256
sinadd = 0,0,10,10
invertall = 0
color = 256

[State 0, PalFXWiz]
type = PalFX
trigger1 = stateno =2400
time = 1
add = 10,10,10
mul = 256,256,256
sinadd = 0,0,10,10
invertall = 0
color = 256

[State 0, varset]
type = varset
trigger1 = var(19) <= 0
var(19) = 0
ignorehitpause = 1

[State 0, varadd]
type = varadd
trigger1 = var(19) > 0
var(19) = -1
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(19) > 1 && Timemod = 10,1
time = 30
add = 50,50,0
mul = 255,255,255
sinadd = -20,-20,0,30
invertall = 0
color = 256

[State 0, ChangeState]
type = ChangeState
trigger1 = var(19) = 1 && ctrl = 1
value = 0
ctrl = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = var(19) > 0 && Time = 1 && movetype = A && statetype = S
time = 10
freq = 80
ampl = -4

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = var(19) > 0 && Time = 1 && stateno = [0,9999]
time = 100
value = 1.5

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = (command != "hold_c" && Time > 20) || (stateno != 2200 )
id = 6070

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = (command != "hold_c" && Time > 20) || (stateno != 2300 && stateno != 2310)
id = 6215

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 2201 && stateno != 2202 && stateno != 2203 && stateno != 2204
id = 6211

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = (command != "hold_c" && Time > 20) || (stateno != 2300 && stateno != 2310)
id = 60405

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 3500 && stateno != 3501
id = 60066

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 190
ID =  190

[State 0, StopSnd]
type = StopSnd
trigger1 =  stateno != 190
channel = 3

[State 0, StopSnd]
type = StopSnd
trigger1 =  stateno != 190
channel = 6

[State 0, StopSnd]
type = StopSnd
trigger1 =  stateno != 190
channel = 2

[State 0, StopSnd]
type = StopSnd
trigger1 =  stateno != 190
channel = 8

[State 0, StopSnd]
type = StopSnd
trigger1 =  stateno != 2200
channel = 17

[State 0, StopSnd]
type = StopSnd
trigger1 =  stateno != [2201,2204]
channel = 18

[State 0, Explod]
type = Explod
triggerall = stateno = 190
trigger1 = time >= 1459 && time <= 1698
trigger1 =  timemod = 15,1
anim = 8018
ID =  190
pos = -4,-45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove =0
pausemove =0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3,]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 100
trigger2 = stateno = 105
value = S1,4

[State -3,]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
value = 1, 2

