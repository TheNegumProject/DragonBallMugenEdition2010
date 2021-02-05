
[Command]
name = "furia de trunks"
command = D,DF,DB,D,DF a+b
time = 30

[Command]
name = "sequencia 1"
command = D, c
time = 15

[Command]
name = "manual 1"
command = D, b
time = 15

[Command]
name = "Fireball"
command = z

[Command]
name = "Fireball 2"
command = z

[Command]
name="Trunks Furioso"
Command= F, c

[Command]
name = "manual 2"
command = D, a
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
Name = "Volar" ;NOMBRE DEL COMANDO
Command = s ;COMANDOS PARA ACTIVAR
time = 1 ; TIEMPO ESN QUE SE ACTIVA

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Hypers |---------------------------------------------------------

[Command]
name = "Burning"
command = ~D, y
time = 15

[Command]
name = "atack"
command = ~D, x
time = 15

;-| Charge |---------------------------------------------------------

[Command]
name="charge"
Command=/a
[Command]
name="charge 1"
Command=/x

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]
[State -1]
type = changestate
value = 719
triggerall = command = "furia de trunks"
;triggerall = power > 1500
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)

[State -1]
type = ChangeState
value = 10000
triggerall = NumExplod(5505) != 1
triggerall = stateno != 250
triggerall = command !="holdfwd"
triggerall = command = "Trunks Furioso"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno != 10000

[State -1]
type = ChangeState
value = 1807
triggerall = command = "sequencia 1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = (movecontact)
trigger3 = stateno != 1807

[State -1]
type = ChangeState
value = 1900
triggerall = command = "manual 1"
triggerall = stateno != 1900
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = (movecontact)

[State -1]
type = ChangeState
value = 2200
triggerall = command = "manual 2"
triggerall = stateno != 2200
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = (movecontact)

[State -1]
type = ChangeState
value = 3200
triggerall = command = "Fireball"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "Burning"
triggerall = command != "atack"
triggerall = stateno != 210
triggerall = stateno != 211
triggerall = stateno != 212
triggerall = stateno != 213
triggerall = stateno != 214
triggerall = command != "holdup"
triggerall = stateno != 600 || stateno = 630
triggerall = stateno != 7200
triggerall = stateno != 8009
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 6
trigger3 = stateno = 3001

;------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = stateno != 10000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = time > 6
trigger3 = stateno = 3001

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 3001

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 2215
triggerall = anim != 6715
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = stateno = 3001

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 3001

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;----------------------------------------------------------------------
[State -1,Charge Ki]
type=ChangeState
value=5500
triggerall=Power>1
triggerall=Ctrl
trigger1 =Command="charge"
trigger1 =Command="charge 1"
trigger1 =statetype=S
triggerall = stateno != 10000

;----------------------------------------
[State -1, Burning]
type = ChangeState
value = 5510
triggerall = command = "Burning"
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------
[State -1, Burning]
type = ChangeState
value = 5610
triggerall = command = "atack"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------
;Volar
[State -1,Volar]
type = ChangeState
value = 3115
trigger1 = command = "Volar"
triggerall = Var(40) = !1
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Volar
[State -1,Volar]
type = ChangeState
value = 3115
trigger1 = command = "Volar"
triggerall = Var(40) = !1
trigger1 = statetype != A
trigger1 = ctrl = 1
;------------------------------------------------------------------------
