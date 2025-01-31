; ---------------------------------------------------------------------------
; Sound commands list.
; ---------------------------------------------------------------------------

	phase $E1
mus__FirstCmd =			*			; ID of the first sound command
mus_FadeOut			ds.b 1		; $E1 - fade out music
mus_Stop				ds.b 1		; $E2 - stop music and sound effects
mus_MutePSG			ds.b 1		; $E3 - mute all PSG channels
mus_StopSFX			ds.b 1		; $E4 - stop all sound effects
mus_FadeOutOut2			ds.b 1		; $E5 - fade out music (duplicate)
Mus__EndCmd =			*			; next ID after last sound command

mus_FA =				$FA			; $FA - ???
mus_StopSEGA =			$FE			; $FE - Stop SEGA sound
mus_SEGA =				$FF			; $FF - Play SEGA sound

	dephase

; ---------------------------------------------------------------------------
; Music ID's list. These do not affect the sound driver, be careful.

	phase $01
Mus__First =				*			; ID of the first music

; Levels
mus_DEZ1				ds.b 1		; $01

; Bosses
mus_MidBoss			ds.b 1		; $02
mus_ZoneBoss			ds.b 1		; $03

; Misc
mus_Invincible			ds.b 1		; $04
mus_GotThrough			ds.b 1		; $05
mus_Drowning			ds.b 1		; $06
mus_GameOver			ds.b 1		; $07
mus_ExtraLife			ds.b 1		; $08
mus_Continue			ds.b 1		; $09

Mus__End =				*			; next ID after last music

	dephase

; ---------------------------------------------------------------------------
; Sound effect ID's list. These do not affect the sound driver, be careful.

	phase $01
sfx__First =				*			; ID of the first sound effect
sfx_RingRight 		ds.b 1
sfx_RingLeft 		ds.b 1
sfx_RingLoss 		ds.b 1
sfx_Jump 			ds.b 1
sfx_Roll 			ds.b 1
sfx_Skid 			ds.b 1
sfx_Death 			ds.b 1
sfx_SpinDash 		ds.b 1
sfx_Splash 			ds.b 1
sfx_InstaAttack 		ds.b 1
sfx_FireShield 		ds.b 1
sfx_BubbleShield 	ds.b 1
sfx_LightningShield 	ds.b 1
sfx_FireAttack 		ds.b 1
sfx_BubbleAttack 	ds.b 1
sfx_ElectricAttack 	ds.b 1
sfx_SpikeHit 		ds.b 1
sfx_SpikeMove 		ds.b 1
sfx_Drown 			ds.b 1
sfx_StarPost 		ds.b 1
sfx_Spring 			ds.b 1
sfx_Dash 			ds.b 1
sfx_Break 			ds.b 1
sfx_BossHit 		ds.b 1
sfx_AirDing 		ds.b 1
sfx_Bubble 			ds.b 1
sfx_Explode 		ds.b 1
sfx_Signpost 		ds.b 1
sfx_Switch 			ds.b 1
sfx_Register 		ds.b 1
sfx_Grab 			ds.b 1
sfx_Flying 			ds.b 1
sfx_FlyTired 		ds.b 1
sfx_GlideLand 		ds.b 1
sfx_GroundSlide 	ds.b 1
sfx_Laser 			ds.b 1

; Continuous
sfx__FirstContinuous =	*			; ID of the first continuous sound effect


sfx__End =				*			; next ID after the last sound effect

	dephase
	!org 0							; make sure we reset the ROM position to 0
