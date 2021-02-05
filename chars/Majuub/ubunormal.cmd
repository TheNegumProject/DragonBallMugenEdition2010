;-| Super Motions |--------------------------------------------------------
;
[Command]
name = "tflash"
command = ~D, DF, F, D, DF, F, z+y
time = 30


;Gyarric Gun Fire
[Command]
name = "tflash2"
command =~D, DB, B, D, DB, B, z+y
time = 30

[Command]
name = "stagecombo"
command = ~D, DF, F, D, DF, F, a+x
time = 30

[Command]
name = "stagecombo2"
command = ~D, DF, F, D, DF, F, b+y
time = 30


; Final Flash
[Command]
name = "fflash"
command = ~D, DB, B, F, x
time = 30


; Final Flash
[Command]
name = "superkame"
command = ~D, DB, B, F,D, DF, F, x
time = 30

;Gyarric Gun Fire
[Command]
name = "gunfr"
command = ~D, DB, B, F, z+y
time = 30

;Big Bang Attack
[Command]
name = "bigbang"
command = ~F, D, DF, b
time = 30

;50 Renzokus
[Command]
name = "50renzoku"
command = ~D, DB, B, F, a
time = 30

;Suicide
[Command]
name = "suicide"
command = ~D, DF, F, D, DF, F, a+b
time = 30

;Suicide
[Command]
name = "supercombo"
command = ~D,DB, B, D, a+b
time = 30

;Suicide
[Command]
name = "kien"
command = ~B, F, x
;time = 10

;Gyarric soco
[Command]
name = "gunfrsoco"
command = ~D, DB, B, F, b+c
time = 30

; super golpes
[Command]
name = "scg"
command = ~D, DB, B, F, b
time = 30



; super fireballs
[Command]
name = "sfireballs"
command = ~100$x
time = 1

; super fireballs
[Command]
name = "schute"
command = ~50$B, F, y
time = 10

; super fireballs
[Command]
name = "schute"
command = ~50$B, F, z
time = 10

; super fireballs
[Command]
name = "socokame"
command = B, F, x
time = 10

;-| Special Motions |------------------------------------------------------
;-----------------
[Command]
name = "spulo"
command = ~D, U

[Command]
name = "spulofwd"
command = D, UF

[Command]
name = "spulobck"
command = D, UB


[Command]
name = "dash.bomb"
command = ~B, DB, DF, F, a

;[Command]
;name = "jump.bomb"
;command = ~B, DB, DF, F, b

[Command]
name = "5renzoku"
command = ~B, D, DB, a

[Command]
name = "dash.elbow"
command = ~F, D, DF, c

[Command]
name = "back.elbow"
command = ~B, D, DB, x

[Command]
name = "sway.elbow"
command = ~B, D, DB, y


;Driving Elbow
[Command]
name = "elbow"
command = y+b

[Command]
name = "zanzoken"
command = z+y


[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z
; Inteligencia Artificial

;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD";Required (do not remove)
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
command = c+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

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

[Command]
name = "counter"
command = a+b
time = 1

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "s"
command = /s
time = 1

[Command]
name = "sv"
command = s
time = 1

[Command]
name = "sf"
command = /x
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddiag1";Required (do not remove)
command = /$UF
time = 1

[Command]
name = "holddiag2";Required (do not remove)
command = /$UB
time = 1

[Command]
name = "holddiag3";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "holddiag4";Required (do not remove)
command = /$DB
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in. 


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
  ; Tira  o  A.I.   var do A.I 6 > 0
  ;var  6 = 9    fica sem A.I
  
[State -1, VarSet ativa sem A.I]
type = Varset
triggerall =(var(6)=[1,2]) || (Var(6)=[30,33])
triggerall = time>=1  && stateno!=[100,105]
trigger1 = random < 359 && (gametime%26)=0
trigger2 = random > 519 && (gametime%26)=0
v = 6
value=9

[State -1, VarSet ativa com A.I]
type = Varset
triggerall =var(6)=9
triggerall = time>=1
trigger1 =(random = [359,519]) && (gametime%26)=0
v = 6
value=2


; unica A.I imposta para não ficar no alto e o outro em baixo
[State -1,AI.Sair.do.Voa]
type = ChangeState
triggerall = Var(6)= 9
triggerall = stateno = 3001
trigger1 = p2statetype = S
trigger1 = p2bodydist Y > 40
value = 50

;esse display é só para ver quanto tempo ele ativa o A.I e fica sem ativar
;mais eu naum ativei , para ativar e só tira o ponto e vírgila (;) 

;[State -1, DEBUG para ver tempo com a.i e normal sem a.i]
;trigger1 =var(6)
;type = DisplayToClipboard
;ignorehitpause = 1
;text ="A.I = %d  Normal= %d "
;params =var(16) , var(17)

[State -1, VarSet com A.I]
type = Varadd
triggerall =(var(6)=[1,2]) || (Var(6)=[30,33]) || Var(6)=8
trigger1 = time>=0
v = 16
value=1

[State -1, VarSet sem A.I]
type = Varadd
triggerall =var(6)=9
trigger1 = time>=0
v = 17
value=1

;---------------------------------------------------------------------------

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742
;---------------------------------------------------------------------------
;[State -1,Fim]
;type = ChangeState
;triggerall = command = "QCF_a" && Var(9) = 0 && power <= 3000
;trigger1 = statetype != A && command != "suicide"
;trigger1 = ctrl = 1
;trigger2 = stateno = 3001
;trigger3 = stateno = 50
;value = 2630
;---------------------------------------------------------------------------
;Instant Fall
[State -1]
type = ChangeState
value = 60
triggerall = command = "DD"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 3001
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;AIR back
[State -1]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;AIR back BACk
[State -1]
type = ChangeState
value = 106
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S && Var(9) = 0
triggerall = ctrl = 1
triggerall = p2bodydist X < 10 ;Near P2
trigger1 = command = "fwd_a";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = ChangeState
value = 700
triggerall = statetype = S && Var(9) = 0
triggerall = ctrl = 1
triggerall = p2bodydist X < 10 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;gokuflah
;[State -1]
;type = ChangeState
;value = 3500
;triggerall = (command = "picoloflash" && NumHelper(3501)=0 && Var(9) = 0 && Pos y = 0 && power >= 2000)
;trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)

;gokuflah
;[State -1]
;type = ChangeState
;value = 9500
;triggerall = (command = "gohanpicoloflash" && NumHelper(3502)=0 && Var(9) = 0 && Pos y = 0 && power >= 2000)
;trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)

;megavelocidadecombo
[State -1]
type = ChangeState
value = 8881
triggerall = (command = "stagecombo" && Var(9) = 0 && Pos y = 0 && Power>=3000 )
trigger1 = (statetype = S && ctrl = 1 )|| (stateno = 3001)

;megavelocidadecombo
[State -1]
type = ChangeState
value = 2300
triggerall = (command = "stagecombo2" && Var(9) = 0 && Pos y = 0 && Power>=3000 )
trigger1 = (statetype = S && ctrl = 1 )|| (stateno = 3001)
;
;;megavelocidadecombo
;[State -1]
;type = ChangeState
;value = 11290
;triggerall = (command = "stagecombo" && Var(9) = 1 && Pos y = 0)
;trigger1 = (statetype = S && ctrl = 1 )|| (stateno = 3001)

;stagecombo
;[State -1]
;type = ChangeState
;value = 4700
;triggerall = (command = "socokame"&& Var(9) = 0 && Pos y = 0 && power >= 2000)
;trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)

;---------------------------------------------------------------------------
;superKamehameha
;[State -1]
;type = ChangeState
;value = 2888
;triggerall = (command = "superkame" && Var(9) = 0 && Pos y = 0 && power >= 3000)
;trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)


;---------------------------------------------------------------------------

;supercombo
[State -1]
type = ChangeState
value = 8810
triggerall = (command = "tflash" && Var(9) = 0 && Pos y = 0 && power >= 2000)
trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)

[State -1]
type = ChangeState
value = 8000
triggerall = (command = "tflash2" && Var(9) = 0 && Pos y = 0 && power >= 2000)
trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;;Final Flash
;[State -1]
;type = ChangeState
;value = 15500
;triggerall = (command = "fflash" && Var(9) = 1 && power >= 2000)
;trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)
;---------------------------------------------------------------------------
;Final Flash
[State -1]
type = ChangeState
value = 2000
triggerall = (command = "fflash" && Var(9) = 0 && power >= 1500)
trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)|| (stateno=[150,155])


;---------------------------------------------------------------------------
;Final Flash
[State -1]
type = ChangeState
value = 2001
triggerall = (command = "fflash" && Var(9) = 0  && power < 1500)
trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)|| (stateno=[150,155])

;---------------------------------------------------------------------------
;Gyarric Gun Fire
[State -1]
type = ChangeState
value = 1291
triggerall = (command = "gunfr" && Var(9) = 0 && Pos y=0 && power >= 0)
trigger1 = (statetype = S && ctrl = 1 )|| (stateno = 3001)
;---------------------------------------------------------------------------
;Gyarric Gun Fire
[State -1]
type = ChangeState
value = 11291
triggerall = (command = "gunfr" && Var(9) = 1 && Pos y=0 && power >= 0)
trigger1 = (statetype = S && ctrl = 1 )|| (stateno = 3001)
;---------------------------------------------------------------------------
;Gyarric soco
[State -1]
type = ChangeState
value = 1290
triggerall = (command = "gunfrsoco" && Var(9) = 0 && Pos y=0 && power >= 0)
trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)


;Gyarric soco
[State -1]
type = ChangeState
value = 11290
triggerall = (command = "gunfrsoco" && Var(9) = 1 && Pos y=0 && power >= 0)
trigger1 = (statetype != A && ctrl = 1 )|| (stateno = 3001)

;---------------------------------------------------------------------------
;Carregamento
[State -1]
type = ChangeState
value = 800
triggerall = command = "charge" && command = "charge1" && Var(6) != 1 && Var(9) = 0
triggerall = Power < 3000 
triggerall = command != "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001

;Carregamento
[State -1]
type = ChangeState
value = 2400
triggerall = command = "elbow" && Var(9) = 0
triggerall = Power = 3000  && numhelper(2401)=0
trigger1= command != "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001
trigger3 = stateno =[5000,5001]


;---------------------------------------------------------------------------
;Carregamento
[State -1]
type = ChangeState
value = 10800
triggerall = command = "charge" && command = "charge1" && Var(6) != 1 && Var(9) = 1
triggerall = Power < 3000
triggerall = command != "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001

;---------------------------------------------------------------------------
;;super combo
;[State -1]
;type = ChangeState
;value = 888
;triggerall = command="QCB_c"  && Var(9) = 0
;triggerall = Power >= 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 151
;---------------------------------------------------------------------------
;super ki
[State -1]
type = ChangeState
value = 987
triggerall = command="QCB_c" && Var(9) = 0
triggerall = Power >= 1500 && Var(10) && NumHelper(976)=0
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Carregamento ssj
[State -1]
type = ChangeState
value = 689
triggerall = command = "sv"  && Var(9) = 0
triggerall = Power > 0
;trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001

;---------------------------------------------------------------------------
;Carregamento normal
[State -1]
type = ChangeState
value = 802
triggerall = command = "sv"  && Var(9) = 1
triggerall = Power > 0
;trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001


;---------------------------------------------------------------------------
;;Dash Elbow
;[State -1]
;type = ChangeState
;value = 2900
;triggerall = command = "QCF_c"&& Var(9) = 0  && Pos Y = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 200
;trigger2 = movecontact = 1
;trigger3 = stateno = 210
;trigger3 = movecontact = 1
;trigger4 = stateno = 220
;trigger4 = movecontact = 1
;trigger5 = stateno = 230
;trigger5 = movecontact = 1
;trigger6 = stateno = 240
;trigger6 = movecontact = 1
;trigger7 = stateno = 400
;trigger7 = movecontact = 1



;---------------------------------------------------------------------------
;Magia_A
[State -1]
type = ChangeState
value = 1000
triggerall = command = "x" && Var(9) = 0 && Power >=  150 
triggerall = command != "holddown"
triggerall = command != "QCF_x"
triggerall = command != "QCB_x"
triggerall = command != "kien" 
triggerall = numproj = 0 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1  
trigger8 = stateno = 410
trigger8 = movecontact = 1  
trigger9 = stateno = 420
trigger9 = movecontact = 1  
trigger10 = stateno = 430
trigger10 = movecontact = 1  
trigger11 = stateno = 3001
;trigger12 = movecontact = 1  
trigger12 = stateno = 1000



;Magia_A
[State -1]
type = ChangeState
value = 11500
triggerall = command ="socokame" && Var(9) = 0 && Power >=  500
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 3001
;trigger12 = movecontact = 1
trigger12 = stateno = 1000

;---------------------------------------------------------------------------
;Magia_A
[State -1]
type = ChangeState
value = 11000
triggerall = command = "x" && Var(9) = 1 && Power >=  150
triggerall = command != "holddown"
triggerall = command != "QCF_x"
triggerall = command != "QCB_x"
triggerall = command != "kien"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1
trigger7 = stateno = 10400
trigger7 = movecontact = 1
trigger8 = stateno = 10410
trigger8 = movecontact = 1
trigger9 = stateno = 10420
trigger9 = movecontact = 1
trigger10 = stateno = 10430
trigger10 = movecontact = 1
trigger11 = stateno = 3001
;trigger12 = movecontact = 1
trigger12 = stateno = 11000

;---------------------------------------------------------------------------
;Magia_B
[State -1]
type = ChangeState
value = 1500
triggerall = command = "QCF_x" && Var(9) = 0 && Power >=  1000
triggerall = command != "holddown"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1  
trigger8 = stateno = 410
trigger8 = movecontact = 1  
trigger9 = stateno = 420
trigger9 = movecontact = 1  
trigger10 = stateno = 430
trigger10 = movecontact = 1  
trigger11 = stateno = 3001
;---------------------------------------------------------------------------
;Magia_B
[State -1]
type = ChangeState
value = 11500
triggerall = command = "QCF_x" && Var(9) = 1 && Power >=  1000
triggerall = command != "holddown"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1
trigger7 = stateno = 10400
trigger7 = movecontact = 1
trigger8 = stateno = 10410
trigger8 = movecontact = 1
trigger9 = stateno = 10420
trigger9 = movecontact = 1
trigger10 = stateno = 10430
trigger10 = movecontact = 1
trigger11 = stateno = 3001
;---------------------------------------------------------------------------
;Big Bang (Chão)
[State -1]
type = ChangeState 
value = 2500
triggerall = command = "QCB_x" && Var(9) = 0 && Power >=  300
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1  
trigger8 = stateno = 410
trigger8 = movecontact = 1  
trigger9 = stateno = 420
trigger9 = movecontact = 1  
trigger10 = stateno = 430
trigger10 = movecontact = 1  

;---------------------------------------------------------------------------
;Big Bang (Chão)
[State -1]
type = ChangeState
value = 12500
triggerall = command = "QCB_x" && Var(9) = 1 && Power >=  300
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1
trigger7 = stateno = 10400
trigger7 = movecontact = 1
trigger8 = stateno = 10410
trigger8 = movecontact = 1
trigger9 = stateno = 10420
trigger9 = movecontact = 1
trigger10 = stateno = 10430
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Big Bang (Ar)
[State -1]
type = ChangeState
value = 6000
triggerall = command = "QCB_x" && Var(9) = 0 && Power >=  300
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1  
trigger3 = stateno = 260
trigger3 = movecontact = 1  
trigger4 = stateno = 270
trigger4 = movecontact = 1  
trigger5 = stateno = 280
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;Big Bang (Ar)
[State -1]
type = ChangeState
value = 16000
triggerall = command = "QCB_x" && Var(9) = 1 && Power >=  300
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 10250
trigger2 = movecontact = 1
trigger3 = stateno = 10260
trigger3 = movecontact = 1
trigger4 = stateno = 10270
trigger4 = movecontact = 1
trigger5 = stateno = 10280
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
;Big Bang (Voa)
[State -1]
type = ChangeState
value = 6001
triggerall = command = "QCB_x" && Var(9) = 0 && Power >=  300
trigger1 = stateno = 3001
trigger2 = stateno = 250
trigger2 = movecontact = 1  
trigger3 = stateno = 260
trigger3 = movecontact = 1  
trigger4 = stateno = 270
trigger4 = movecontact = 1  
trigger5 = stateno = 280
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;Big Bang (Voa)
[State -1]
type = ChangeState
value = 16001
triggerall = command = "QCB_x" && Var(9) = 1 && Power >=  300
trigger1 = stateno = 3001
trigger2 = stateno = 10250
trigger2 = movecontact = 1
trigger3 = stateno = 10260
trigger3 = movecontact = 1
trigger4 = stateno = 10270
trigger4 = movecontact = 1
trigger5 = stateno = 10280
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
;Bakuhatsu Ha
[State -1]
type = ChangeState
value = 2600
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = numprojid(2650) = 0 && Var(9) = 0 && Pos y=0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Bakuhatsu Ha
[State -1]
type = ChangeState
value = 12600
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = numprojid(2650) = 0 && Var(9) = 1 && Pos y=0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1
trigger7 = stateno = 10400
trigger7 = movecontact = 1
trigger8 = stateno = 10410
trigger8 = movecontact = 1
trigger9 = stateno = 10420
trigger9 = movecontact = 1
trigger10 = stateno = 10430
trigger10 = movecontact = 1

;---------------------------------------------------------------------------
;Voa
[State -1]
type = ChangeState
value = 3001
triggerall = command = "fly" 
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = stateno = 60
;---------------------------------------------------------------------------
;Voa
[State -1]
type = ChangeState
value = 3115
trigger1 = command = "fly" && Power >=  100
trigger1 = ctrl = 1
trigger1 = statetype != A
;---------------------------------------------------------------------------
;Knee Attack Counter
[State -1]
type = ChangeState
value = 2702
triggerall = Var(9) = 0
triggerall = command = "y" || command = "z"  && life != 0
triggerall = command != "holddown"
;triggerall = P2StateType != A
triggerall = P2MoveType = A 
trigger1 = !Var(6) =1 || !Var(6) =2
trigger1 = stateno = [150,151]
trigger2 = stateno = 155


;Knee Attack Counter
[State -1]
type = ChangeState
value = 2703
triggerall = Var(9) = 0
triggerall = command = "b" || command = "c"  && life != 0
triggerall = command != "holddown"
;triggerall = P2StateType != A
triggerall = P2MoveType = A
trigger1 = !Var(6) =1 || !Var(6) =2
trigger1 = stateno = [150,151]
trigger2 = stateno = 155


;---------------------------------------------------------------------------
;Renzoku Energy Dan (Ar)
[State -1]
type = ChangeState
value = 2800
triggerall = Var(9) = 0 && command = "QCB_a" || command = "QCB_b"  && Var(9) = 0 || command = "QCB_c"  && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = StateNo = 3001

;---------------------------------------------------------------------------
;Renzoku Energy Dan (Ar)
[State -1]
type = ChangeState
value = 2801
triggerall = Var(9) = 0 && command = "QCB_y"  && Var(9) = 0 || command = "QCB_z"  && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = StateNo = 3001

;---------------------------------------------------------------------------
;;Slide
;[State -1]
;;type = ChangeState
;value = 2900
;triggerall = command = "QCF_c"  || command = "QCF_b"&& Var(9) = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 200
;trigger2 = movecontact = 1
;trigger3 = stateno = 210
;trigger3 = movecontact = 1
;trigger4 = stateno = 220
;trigger4 = movecontact = 1
;trigger5 = stateno = 230
;trigger5 = movecontact = 1
;trigger6 = stateno = 240
;trigger6 = movecontact = 1
;trigger7 = stateno = 3001

;---------------------------------------------------------------------------
;;Strong Slide
;[State -1]
;type = ChangeState
;value = 8300
;triggerall = command = "QCF_y" && Pos Y = 0 || command = "QCF_z" && Var(9) = 0 && Pos Y = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 200
;trigger2 = movecontact = 1
;trigger3 = stateno = 210
;trigger3 = movecontact = 1
;trigger4 = stateno = 220
;trigger4 = movecontact = 1
;trigger5 = stateno = 230
;trigger5 = movecontact = 1
;trigger6 = stateno = 240
;trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;chute corrida
[State -1]
type = ChangeState
value = 8301
triggerall = command = "schute"&& Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;chute corrida
[State -1]
type = ChangeState
value = 18301
triggerall = command = "schute"&& Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;Zanzoken
[State -1]
type = ChangeState
value = 4000
triggerall = command = "zanzoken" && Var(9) = 0 
trigger1 = ctrl = 1
trigger2 = stateno = [200,240] 
trigger2 = movecontact = 1
trigger3 = stateno = [400,430] 
trigger3 = movecontact = 1
trigger4 = stateno = 3001

;---------------------------------------------------------------------------
;Zanzoken
[State -1]
type = ChangeState
value = 14000
triggerall = command = "zanzoken" && Var(9) = 1
trigger1 = ctrl = 1
trigger2 = stateno = [10200,10240]
trigger2 = movecontact = 1
trigger3 = stateno = [10400,10430]
trigger3 = movecontact = 1
trigger4 = stateno = 3001

;---------------------------------------------------------------------------
;Super Pulo
[State -1]
type = ChangeState
value = 70
triggerall = statetype != A 
trigger1 = command = "spulo"
;trigger1 = command = "hold_c"
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super Pulo Frente
[State -1]
type = ChangeState
value = 70
triggerall = statetype != A 
trigger1 = command = "spulofwd"
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super Pulo Tras
[State -1]
type = ChangeState
value = 70
triggerall = statetype != A 
trigger1 = command = "spulobck"
trigger1 = ctrl = 1
;===========================================================================


;----------------------------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 270
triggerall = command = "sfireballs" && Var(9) = 0
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 3001
trigger7 = stateno = 201
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
;----------------------------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 10270
triggerall = command = "sfireballs" && Var(9) = 1
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10230
trigger4 = movecontact = 1
trigger5 = stateno = 10240
trigger5 = movecontact = 1
trigger6 = stateno = 3001
trigger7 = stateno = 10201
trigger7 = movecontact = 1
trigger8 = stateno = 10250
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a" && Var(9) = 0
triggerall = command != "holddown" && command != "QCF_a" 
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 3001
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1


;-------------------------------------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b" && Var(9) = 0
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 3001
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1

;----------------------------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 201
triggerall = command = "c" && Var(9) = 0
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 3001
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1

;-------------------------------------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 230
triggerall = command = "y" && Var(9) = 0 && P2bodydist x > 20
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 3001
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1

;Stand_Y
[State -1]
type = ChangeState
value = 240
triggerall = command = "y" && Var(9) = 0  && P2bodydist x < 21
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 3001
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
;-------------------------------------------------------------------------------------------------------
;Stand_Z
[State -1]
type = ChangeState
value = 250
triggerall = command = "z" && Var(9) = 0
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 3001
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1


;-------------------------------------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a" && Var(9) = 0 && Pos y=0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b" && Var(9) = 0  && Pos y=0
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = C
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 420
triggerall = command = "c" && Var(9) = 0 && Pos y=0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 430
triggerall = command = "y" && Var(9) = 0 && Pos y=0|| command = "z" && Var(9) = 0 && Pos y=0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1


;-------------------------------------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 10400
triggerall = command = "a" && Var(9) = 1 && Pos y=0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1
trigger7 = stateno = 10400
trigger7 = movecontact = 1
trigger8 = stateno = 10410
trigger8 = movecontact = 1
trigger9 = stateno = 10420
trigger9 = movecontact = 1
trigger10 = stateno = 10430
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 10410
triggerall = command = "b" && Var(9) = 1  && Pos y=0
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = C
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1
trigger7 = stateno = 10400
trigger7 = movecontact = 1
trigger8 = stateno = 10410
trigger8 = movecontact = 1
trigger9 = stateno = 10420
trigger9 = movecontact = 1
trigger10 = stateno = 10430
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 10420
triggerall = command = "c" && Var(9) = 1 && Pos y=0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1
trigger7 = stateno = 10400
trigger7 = movecontact = 1
trigger8 = stateno = 10410
trigger8 = movecontact = 1
trigger9 = stateno = 10420
trigger9 = movecontact = 1
trigger10 = stateno = 10430
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 10430
triggerall = command = "y"&& Var(9) = 1  && Pos y=0|| command = "z" && Var(9) = 1 && Pos y=0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 10200
trigger2 = movecontact = 1
trigger3 = stateno = 10210
trigger3 = movecontact = 1
trigger4 = stateno = 10220
trigger4 = movecontact = 1
trigger5 = stateno = 10230
trigger5 = movecontact = 1
trigger6 = stateno = 10240
trigger6 = movecontact = 1
trigger7 = stateno = 10400
trigger7 = movecontact = 1
trigger8 = stateno = 10410
trigger8 = movecontact = 1
trigger9 = stateno = 10420
trigger9 = movecontact = 1
trigger10 = stateno = 10430
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 610
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 620
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 630
trigger4 = movecontact = 1

;--------------------------------------------------------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
triggerall = command = "b" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 600
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 620
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 630
trigger4 = movecontact = 1

;--------------------------------------------------------------------------------------------------------------------------;Jump_X
[State -1]
type = ChangeState
value = 600
triggerall = command = "c" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 600
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 610
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 630
trigger4 = movecontact = 1

;--------------------------------------------------------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 630
triggerall = command = "y" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 600
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 610
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 620
trigger4 = movecontact = 1

;--------------------------------------------------------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 620
triggerall = command = "z" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 600
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 610
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 620
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 10600
triggerall = command = "a" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 10610
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 10620
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 10630
trigger4 = movecontact = 1

;--------------------------------------------------------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 10610
triggerall = command = "b" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 10600
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 01620
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 10630
trigger4 = movecontact = 1

;--------------------------------------------------------------------------------------------------------------------------;Jump_X
[State -1]
type = ChangeState
value = 10600
triggerall = command = "c" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 10600
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 10610
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 10630
trigger4 = movecontact = 1

;--------------------------------------------------------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 10630
triggerall = command = "y" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 10600
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 10610
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 10620
trigger4 = movecontact = 1

;--------------------------------------------------------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 10620
triggerall = command = "z" && Var(9) =1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = P2StateType = A
trigger2 = Stateno = 10600
trigger2 = movecontact = 1
trigger3 = P2StateType = A
trigger3 = Stateno = 10610
trigger3 = movecontact = 1
trigger4 = P2StateType = A
trigger4 = Stateno = 10620
trigger4 = movecontact = 1
;--------------------------------------------------------------------------------------------------------------------------;Jump_Y
;--------------------------------------------------------------------------------------------------------------------------[State -1]
