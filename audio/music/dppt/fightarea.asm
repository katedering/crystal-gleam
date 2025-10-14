;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_FightAreaDay:
	channel_count 4
	channel 1, Music_FightArea_Ch1
	channel 2, Music_FightArea_Ch2
	channel 3, Music_FightArea_Ch3
	channel 4, Music_FightArea_Ch4

Music_FightArea_Ch1:
	volume 7, 7
	duty_cycle $3
	stereo_panning FALSE, TRUE
	note_type 12, 10, 7
	tempo 126
;Bar 1
	octave 3
	volume_envelope 11, 7
	note C_, 1
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	note __, 1
	volume_envelope 11, 7
	note C_, 1
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	volume_envelope 11, 7
	note F_, 1
	note F_, 1
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	volume_envelope 11, 7
	note C_, 1
	note F_, 1
	note G_, 1
	volume_envelope 4, 7
	note G_, 1
	octave 4
	volume_envelope 11, 7
	note C_, 5
;Bar 2
	octave 3
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	note __, 2
	volume_envelope 11, 7
	note C_, 1
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	note __, 5
;Bar 3
Music_FightArea_Ch1_loop:
	stereo_panning FALSE, TRUE
	note __, 3
	duty_cycle $0
	sound_call Music_FightArea_Ch1_Type1
;Bar 4
	octave 2
	sound_call Music_FightArea_Ch1_As
	sound_call Music_FightArea_Ch1_F
	note __, 2
	volume_envelope 10, 7
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	sound_call Music_FightArea_Ch1_As
	octave 3
	sound_call Music_FightArea_Ch1_F
;Bar 5
	sound_call Music_FightArea_Ch1_G
	volume_envelope 10, 7
	note F_, 1
	sound_call Music_FightArea_Ch1_Type1
;Bar 6
	sound_call Music_FightArea_Ch1_As
	octave 4
	volume_envelope 10, 7
	note C#, 1
	volume_envelope 3, 7
	note C#, 1
	volume_envelope 10, 7
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	octave 3
	sound_call Music_FightArea_Ch1_As
	octave 4
	volume_envelope 10, 7
	note C#, 1
	volume_envelope 3, 7
	note C#, 1
	volume_envelope 10, 7
	note C_, 8
;Bar 7
	octave 3
	note F_, 1
	note G_, 1
	note A_, 1
	volume_envelope 3, 7
	note A_, 1
	sound_call Music_FightArea_Ch1_G
	sound_call Music_FightArea_Ch1_F
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 3, 7
	note C_, 1
;Bar 8
	sound_call Music_FightArea_Ch1_F
	volume_envelope 10, 7
	note E_, 1
	volume_envelope 3, 7
	note E_, 1
	volume_envelope 10, 7
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	duty_cycle $3
	volume_envelope 10, 7
	note D_, 4
	note D_, 2
	note F_, 2
	note A_, 2
;Bar 9
	note A#, 2
	volume_envelope 3, 7
	note A#, 1
	sound_call Music_FightArea_Ch1_As
	note __, 3
	octave 4
	volume_envelope 10, 7
	note C_, 2
	volume_envelope 3, 7
	note C_, 1
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 3, 7
	note C_, 1
	note __, 3
;Bar 10
	octave 3
	volume_envelope 10, 7
	note A_, 2
	volume_envelope 3, 7
	note A_, 1
	note __, 1
	volume_envelope 10, 7
	note G_, 2
	volume_envelope 3, 7
	note G_, 1
	note __, 3
	volume_envelope 10, 7
	note F_, 1
	note F_, 1
	note E_, 1
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	note __, 3
;Bar 11
	duty_cycle $0
	volume_envelope 9, 7
	note A#, 2
	octave 4
	note D_, 2
	note F_, 2
	note E_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	note A_, 1
	note G_, 1
;Bar 12
	note A_, 2
	note A#, 2
	note A_, 2
	note F_, 4
	note C_, 4
	note G_, 2
;Bar 13
	note A_, 2
	duty_cycle $3
	volume_envelope 11, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 11, 7
	note F_, 1
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 11, 7
	note F_, 2
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 11, 7
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	volume_envelope 11, 7
	note D#, 1
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	volume_envelope 10, 7
	note D#, 1
;Bar 14
	note __, 2
	duty_cycle $0
	note_type 6, 8, 7
	note F_, 1
	note __, 3
	note F_, 8
	note F_, 1
	note __, 3
	note_type 12, 10, 7
	note G_, 4
	note A_, 1
	note A#, 1
;Bar 15
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note G_, 1
	note F#, 1
	note F_, 1
	volume_envelope 7, 7
	note F_, 1
	note F_, 2
	volume_envelope 10, 7
	note F_, 2
	volume_envelope 7, 7
	note F_, 1
	volume_envelope 10, 7
	note F_, 3
;Bar 16
	octave 4
	note C_, 2
	volume_envelope 7, 7
	note C_, 2
	octave 3
	volume_envelope 10, 7
	note A_, 4
	volume_envelope 7, 7
	note A_, 2
	volume_envelope 10, 7
	note G_, 4
	note A_, 1
	note A#, 1
;Bar 17
	octave 4
	note C_, 2
	volume_envelope 7, 7
	note C_, 1
	volume_envelope 10, 7
	note C_, 2
	volume_envelope 7, 7
	note C_, 3
	volume_envelope 10, 7
	note E_, 2
	volume_envelope 7, 7
	note E_, 1
	volume_envelope 10, 7
	note E_, 2
	note C_, 2
	octave 3
	note A#, 1
;Bar 18
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 4
	note A_, 2
	note A#, 2
	note G_, 2
;Bar 19
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 4
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note B_, 2
;Bar 20
	octave 4
	note C_, 2
	octave 3
	note C_, 1
	volume_envelope 7, 7
	note C_, 1
	volume_envelope 10, 7
	note C_, 2
	note F_, 1
	volume_envelope 7, 7
	note F_, 1
	volume_envelope 10, 7
	note F_, 2
	note C_, 1
	volume_envelope 7, 7
	note C_, 1
	volume_envelope 10, 7
	note F_, 1
	note G_, 1
	volume_envelope 7, 7
	note G_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 9
;Bar 21
	volume_envelope 7, 7
	note C_, 2
	volume_envelope 10, 7
	note C_, 2
	note_type 6, 7, 7
	note C_, 1
	note __, 1
	note_type 12, 10, 7
	note C_, 2
	note_type 6, 6, 7
	note C_, 1
	note __, 1
	note_type 12, 8, 8
;Bar 22
	octave 3
	duty_cycle $2
	note C_, 8
	note F_, 8
;Bar 23
	note A#, 8
	octave 4
	note D_, 8
;Bar 24
	octave 3
	note C_, 8
	note F_, 8
;Bar 25
	note F_, 8
	note A_, 8
;Bar 26
	note F#, 8
	note D_, 8
;Bar 27
	note D_, 8
	note F_, 8
;Bar 28
	note C#, 8
	note D#, 4
	note F_, 12
;Bar 29
	octave 2
	note G_, 8
;Bar 30
	note A_, 8
	octave 3
	note C_, 8
;Bar 31
	note C#, 8
	note D_, 8
;Bar 32
	note C_, 8
	octave 2
	note A_, 8
;Bar 33
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	note F_, 4
	note A_, 4
;Bar 34
	note A_, 1
	volume_envelope 3, 8
	note A_, 1
	volume_envelope 9, 8
	note A_, 1
	volume_envelope 3, 8
	note A_, 1
	note __, 4
	volume_envelope 9, 8
	note E_, 1
	volume_envelope 3, 8
	note E_, 1
	volume_envelope 9, 8
	note E_, 1
	volume_envelope 3, 8
	note E_, 1
	note __, 4
;Bar 35
	volume_envelope 9, 8
	note A_, 4
	note F_, 2
	note A_, 2
	volume_envelope 3, 8
	note A_, 1
	note __, 1
	volume_envelope 9, 8
	note G_, 6
;Bar 36
	note E_, 16
;Bar 37
	note F_, 16
;Bar 38
	duty_cycle $3
	note E_, 4
	sound_call Music_FightArea_Ch1_End
	sound_jump Music_FightArea_Ch1_loop

Music_FightArea_Ch1_As:
	volume_envelope 10, 7
	note A#, 1
	volume_envelope 3, 7
	note A#, 1
	sound_ret

Music_FightArea_Ch1_F:
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	sound_ret

Music_FightArea_Ch1_G:
	volume_envelope 10, 7
	note G_, 1
	volume_envelope 3, 7
	note G_, 1
	sound_ret

Music_FightArea_Ch1_Type1:
	octave 2
	note_type 6, 10, 7
	note __, 1
	note G#, 1
	note_type 12, 10, 7
	note A_, 2
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	note __, 2
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 3, 7
	note C_, 1
	volume_envelope 10, 7
	note A_, 1
	volume_envelope 3, 7
	note A_, 1
	octave 3
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 10, 7
	note G_, 1
	volume_envelope 3, 7
	note G_, 1
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	sound_ret

Music_FightArea_Ch1_End:
	volume_envelope 4, 7
	note E_, 1
	note __, 1
	volume_envelope 10, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 1
	note __, 1
	volume_envelope 10, 7
	note E_, 1
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
	note __, 3
;Bar 39
	volume_envelope 10, 7
	note F_, 4
	volume_envelope 4, 7
	note F_, 1
	note __, 1
	volume_envelope 10, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 1
	note __, 1
	volume_envelope 10, 7
	note F_, 1
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	note __, 3
	sound_ret

; ============================================================================================================

Music_FightArea_Ch2:
	duty_cycle $0
	vibrato $8, $22
	stereo_panning TRUE, FALSE
	note_type 12, 10, 7
;Bar 1
	volume_envelope 4, 7
	note __, 4
	octave 4
	volume_envelope 13, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	volume_envelope 13, 7
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	note __, 2
	volume_envelope 13, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	octave 5
	volume_envelope 13, 7
	note C_, 1
	note C_, 1
	octave 4
	duty_cycle $1
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	duty_cycle $0
;Bar 2
	octave 5
	volume_envelope 13, 7
	note C_, 4
	note C_, 1
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	note __, 1
	octave 3
	volume_envelope 11, 7
	note E_, 1
	note E_, 1
	octave 4
	volume_envelope 13, 7
	note C_, 1
	volume_envelope 12, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	note __, 1
Music_FightArea_Ch2_loop:
	octave 3
	duty_cycle $1
	volume_envelope 12, 7
	note C_, 2
;Bar 3
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	volume_envelope 12, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	sound_call Music_FightArea_Ch1_G
	volume_envelope 12, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	note __, 2
	octave 4
	volume_envelope 12, 7
	note C_, 5
	volume_envelope 4, 7
	note C_, 1
;Bar 4
Music_FightArea_Ch2_Bar4_5:
	note __, 2
	octave 3
	sound_call Music_FightArea_Ch1_As
	octave 4
	volume_envelope 12, 7
	note D_, 1
	volume_envelope 4, 7
	note D_, 1
	sound_call Music_FightArea_Ch1_F
	sound_call Music_FightArea_Ch1_G
	sound_call Music_FightArea_Ch1_F
	sound_call Music_FightArea_Ch1_As
	volume_envelope 11, 8
	note A_, 3
	volume_envelope 11, 2
	note A_, 1
	volume_envelope 8, 8
	note A_, 2
	volume_envelope 8, 10
	note A_, 2
;Bar 5
	volume_envelope 12, 7
	note A_, 1
	note A#, 1
	octave 5
	note C_, 4
	octave 4
	note C_, 4
	sound_loop 2, Music_FightArea_Ch2_Bar4_5
;Bar 8
	note D_, 1
	volume_envelope 4, 7
	note D_, 1
	octave 3
	volume_envelope 12, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	octave 4
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
	volume_envelope 12, 7
	note F_, 4
	note D_, 4
	note F_, 1
	volume_envelope 9, 7
	note A_, 1
;Bar 9
	volume_envelope 12, 7
	note F_, 8
	note E_, 6
	note F_, 1
	note G_, 1
;Bar 10
	note A_, 2
	volume_envelope 4, 7
	note A_, 1
	note __, 1
	volume_envelope 12, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 1
	note __, 1
	volume_envelope 12, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 1
	note __, 1
	volume_envelope 12, 7
	note C_, 2
	note D_, 1
	note E_, 1
;Bar 11
	note F_, 8
	note G_, 6
	note D_, 1
	note E_, 1
;Bar 12
	volume_envelope 11, 8
	note F_, 1
	volume_envelope 11, 2
	note F_, 1
	volume_envelope 7, 8
	note F_, 3
	volume_envelope 7, 11
	note F_, 1
	volume_envelope 11, 8
	note F_, 8
	volume_envelope 11, 3
	note F_, 2
;Bar 13
	volume_envelope 4, 7
	note F_, 1
	note __, 1
	sound_call Music_FightArea_Ch1_F
	volume_envelope 12, 7
	note F_, 1
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	sound_call Music_FightArea_Ch1_F
	note __, 1
	duty_cycle $0
	volume_envelope 15, 7
	note C_, 2
	note D_, 1
	note C#, 1
	note C_, 2
;Bar 14
	octave 5
	note C_, 2
	volume_envelope 4, 7
	note C_, 1
	note __, 1
	octave 4
	volume_envelope 15, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 1
	note __, 1
	volume_envelope 15, 7
	note C_, 2
	note G_, 4
	note F_, 1
	note G_, 1
;Bar 15
	note E_, 2
	note C_, 2
	note D_, 2
	octave 3
	note A_, 2
	volume_envelope 4, 7
	note A_, 1
	note __, 1
	octave 4
	volume_envelope 15, 7
	note C_, 2
	note D_, 1
	note C#, 1
	note C_, 2
;Bar 16
	octave 5
	note C_, 2
	volume_envelope 4, 7
	note C_, 1
	note __, 1
	octave 4
	volume_envelope 15, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 1
	note __, 1
	volume_envelope 15, 7
	note E_, 2
	note F_, 4
	note G_, 1
	note F_, 1
;Bar 17
	note A_, 2
	note A#, 2
	note A_, 2
	note G_, 2
	volume_envelope 4, 7
	note G_, 1
	note __, 1
	volume_envelope 13, 7
	note F_, 4
	note E_, 1
	note F_, 1
;Bar 18
	note C_, 4
	note F_, 2
	note E_, 4
	note F_, 2
	note G_, 2
	note A#, 2
;Bar 19
	note A_, 2
	note G#, 2
	note G_, 2
	note F_, 4
	note E_, 1
	note F_, 1
	octave 5
	note D_, 2
	volume_envelope 11, 8
	note C_, 5
;Bar 20
	volume_envelope 11, 6
	note C_, 5
	volume_envelope 6, 8
	note C_, 8
	volume_envelope 6, 14 ;maybe slower
	note C_, 5
	volume_envelope 11, 8
	note C_, 3
	volume_envelope 12, 2 ;maybe 2
	note C_, 2
;Bar 21
	volume_envelope 12, 7
	note C_, 2
	note __, 1
	volume_envelope 12, 7
	note C_, 2
	note __, 5
;Bar 22
	duty_cycle $3 ;maybe 2?
	octave 3
	note C_, 4
	note F_, 4
	note A_, 4
;Bar 23
	note A#, 4
	note A_, 4
	note F_, 4
	octave 4
	note D_, 4
;Bar 24
	note C_, 4
	volume_envelope 4, 7
	note C_, 1
	note __, 1
	octave 3
	volume_envelope 12, 7
	note F_, 2
	note F_, 4
	note C_, 2
	note G_, 2
;Bar 25
	volume_envelope 4, 7
	note G_, 1
	note __, 1
	volume_envelope 12, 7
	note G_, 2
	note F_, 4
	octave 4
	note C_, 4
	note D_, 4
;Bar 26
	note D#, 4
	octave 3
	note A_, 4
	octave 4
	note C_, 4
	note D_, 2
	note C_, 2
;Bar 27
	volume_envelope 4, 7
	note C_, 1
	note __, 1
	volume_envelope 12, 7
	note C_, 2
	octave 3
	note A#, 4
	note A_, 4
	note A#, 4
;Bar 28
	octave 4
	note F_, 4
	note C#, 4
	note C_, 4
	octave 3
	note A#, 4
;Bar 29
	note A_, 4
	note G_, 4
	note F_, 4
	note G_, 2
	volume_envelope 14, 7
	note F_, 6
;Bar 30
	duty_cycle $0
	note C_, 4
	note G_, 4
	note A_, 4
;Bar 31
	note A#, 4
	note A_, 4
	note F_, 4
	octave 4
	note D_, 4
;Bar 32
	note C_, 4
	volume_envelope 4, 7
	note C_, 1
	note __, 1
	volume_envelope 14, 7
	note F_, 2
	note F_, 4
	note C_, 2
	note G_, 2
;Bar 33
	volume_envelope 4, 7
	note G_, 1
	note __, 1
	volume_envelope 14, 7
	note G_, 2
	note F_, 4
	note E_, 4
	note F_, 4
;Bar 34
	octave 5
	note C_, 2
	volume_envelope 4, 7
	note C_, 1
	note __, 1
	octave 4
	volume_envelope 14, 7
	note F_, 2
	volume_envelope 4, 7
	note F_, 1
	note __, 1
	volume_envelope 14, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 1
	note __, 1
	volume_envelope 14, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	volume_envelope 14, 7
	note F_, 4
;Bar 35
	note G_, 2
	note A_, 2
	note A#, 2
	note A_, 2
	note C_, 2
	note F_, 2
	note G_, 1
	;37
	volume_envelope 12, 8
	note F_, 4
	volume_envelope 12, 7
	note F_, 7
	volume_envelope 6, 8
	note F_, 11
	volume_envelope 6, 12
	note F_, 4
	volume_envelope 12, 8
	note F_, 7
	volume_envelope 12, 3
	note F_, 4
;Bar 37
;Bar 38
	volume_envelope 15, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	volume_envelope 15, 7
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	note __, 2
	volume_envelope 15, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	octave 5
	volume_envelope 15, 7
	note C_, 1
	note C_, 1
	octave 4
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
;Bar 39
	note __, 2
	volume_envelope 15, 7
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	volume_envelope 15, 7
	note F_, 1
	note F_, 1
	volume_envelope 4, 7
	note F_, 1
	note __, 7
	sound_jump Music_FightArea_Ch2_loop

; ============================================================================================================

Music_FightArea_Ch3:
	note_type 12, 1, 6
;Bar 1
	octave 2
	volume_envelope 1, 6
	sound_call Music_FightArea_Ch3_Type2
	sound_call Music_FightArea_Ch3_Type3
	sound_call Music_FightArea_Ch3_Type3
	volume_envelope 1, 6
	note C_, 2
;Bar 2
	note G_, 2
	note G_, 2
	note C_, 2
	note C_, 2
	octave 3
	note C_, 1
	note C_, 1
	octave 2
	note C_, 2
	volume_envelope 2, 6
	note C_, 1
	note __, 1
	volume_envelope 1, 6
	note C_, 2
;Bar 3
Music_FightArea_Ch3_loop:
	sound_call Music_FightArea_Ch3_Type4
	note __, 11
;Bar 4
	sound_call Music_FightArea_Ch3_Type4
	note __, 11
;Bar 5
	sound_call Music_FightArea_Ch3_Type4
	note __, 11
;Bar 6
	sound_call Music_FightArea_Ch3_Type4
	note __, 5
	sound_call Music_FightArea_Ch3_Type5
;Bar 7
	sound_call Music_FightArea_Ch3_Type4
	note __, 5
	sound_call Music_FightArea_Ch3_Type5
;Bar 8
	note D_, 2
	note D_, 2
	volume_envelope 2, 6
	note D_, 1
	note __, 1
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 1
	note __, 1
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 1
	note __, 1
	volume_envelope 1, 6
	note D_, 2
;Bar 9
	note G_, 2
	note G_, 2
	volume_envelope 2, 6
	note G_, 1
	note __, 1
	volume_envelope 1, 6
	note G_, 2
	sound_call Music_FightArea_Ch3_Type2
	volume_envelope 1, 6
	note C_, 2
;Bar 10
	note D_, 2
	note D_, 2
	volume_envelope 2, 6
	note D_, 1
	note __, 1
	volume_envelope 1, 6
	note D_, 2
	sound_call Music_FightArea_Ch3_Type2
	octave 1
	volume_envelope 1, 6
	note A_, 2
;Bar 11
	note A#, 2
	note A#, 2
	volume_envelope 2, 6
	note A#, 1
	note __, 1
	volume_envelope 1, 6
	note A#, 2
	octave 2
	sound_call Music_FightArea_Ch3_Type2
	volume_envelope 1, 6
	note C_, 2
;Bar 12
	sound_call Music_FightArea_Ch3_Type4
	note __, 1
	sound_call Music_FightArea_Ch3_Type3
	volume_envelope 1, 6
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
;Bar 13
	volume_envelope 2, 6
	note C_, 1
	note __, 1
Music_FightArea_Ch3_miniloop1:
	volume_envelope 1, 6
	note F_, 1
	volume_envelope 2, 6
	note F_, 1
	sound_loop 3, Music_FightArea_Ch3_miniloop1
	volume_envelope 1, 6
	note F_, 2
	note F_, 2
	note G_, 1
	note F_, 1
	note C_, 1
	note F_, 1
;Bar 14
	sound_call Music_FightArea_Ch3_Bar14
;Bar 15
	note F_, 4
	volume_envelope 2, 6
	note F_, 1
	volume_envelope 1, 6
	note F_, 2
	note C_, 1
	volume_envelope 2, 6
	note C_, 1
	note __, 1
	volume_envelope 1, 6
	note C_, 2
	note F_, 1
	note C_, 2
	note A_, 1
;Bar 16
	sound_call Music_FightArea_Ch3_Bar14
;Bar 17
	note D_, 3
	note D_, 1
	volume_envelope 2, 6
	note D_, 1
	note __, 1
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 1
	volume_envelope 1, 6
	note F_, 2
	note F_, 1
	note A_, 1
	note C_, 2
	note F_, 1
;Bar 18
	octave 1
	note A#, 3
	note A#, 1
	volume_envelope 2, 6
	note A#, 1
	note __, 1
	volume_envelope 1, 6
	note A#, 2
	note A_, 2
	octave 2
	note C#, 1
	note E_, 2
	note A_, 2
	note G_, 1
;Bar 19
	note D_, 4
	volume_envelope 2, 6
	note D_, 1
	note __, 1
	volume_envelope 1, 6
	note D_, 2
	note G_, 2
	note G_, 2
	note B_, 1
	octave 3
	note D_, 2
	octave 2
	note G_, 1
;Bar 20
	octave 3
	sound_call Music_FightArea_Ch3_Type2
	volume_envelope 1, 6
	sound_call Music_FightArea_Ch3_Type6
	note __, 1
	volume_envelope 1, 6
	note C_, 2
	sound_call Music_FightArea_Ch3_Type6
	volume_envelope 1, 6
	note C_, 1
;Bar 21
	octave 2
	sound_call Music_FightArea_Ch3_Type6
	note __, 3
	volume_envelope 1, 6
	sound_call Music_FightArea_Ch3_Type6
	note __, 1
	volume_envelope 1, 6
	note C_, 2
	volume_envelope 2, 6
	note C_, 1
	volume_envelope 1, 6
	note C_, 2
	note C_, 1
;Bar 22
	sound_call Music_FightArea_Ch3_Type1
	volume_envelope 1, 6
	note F_, 2
;Bar 23
	sound_call Music_FightArea_Ch3_Type1
	volume_envelope 1, 6
	note F_, 2
;Bar 24
	sound_call Music_FightArea_Ch3_Type1
	volume_envelope 1, 6
	note F_, 2
;Bar 25
	volume_envelope 2, 6
	note F_, 1
	note __, 1
	volume_envelope 1, 6
	note F_, 2
	note F_, 4
	volume_envelope 2, 6
	note F_, 1
	note __, 1
	sound_call Music_FightArea_Ch3_Type5
;Bar 26
	note D_, 4
	volume_envelope 2, 6
	note D_, 1
	note __, 1
	volume_envelope 1, 6
	note D_, 2
	volume_envelope 2, 6
	note D_, 1
	note __, 1
	volume_envelope 1, 6
	note F#, 2
	volume_envelope 2, 6
	note F#, 1
	note __, 1
	volume_envelope 1, 6
	note F#, 2
;Bar 27
	note G_, 4
	volume_envelope 2, 6
	note G_, 1
	note __, 1
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 1
	note __, 1
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note G_, 1
	note __, 1
	volume_envelope 1, 6
	note D_, 2
;Bar 28
	note_type 6, 1, 6
	note D#, 4
	note D#, 4
	note G_, 4
	note G_, 4
	note A#, 4
	note A#, 4
	octave 3
	note C#, 4
	note C#, 4
	note_type 12, 1, 6
;Bar 29
	note C_, 6
	octave 2
	note C_, 4
	note C_, 4
	note G_, 2
;Bar 30
	note F_, 6
	note C_, 2
	note F_, 4
	note F_, 2
	octave 3
	note C_, 2
;Bar 31
	octave 2
	note F_, 6
	octave 1
	note A#, 4
	octave 2
	note F_, 4
	note A#, 2
;Bar 32
	note A_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note C_, 4
	note C_, 2
	octave 2
	note F_, 2
	note A_, 2
;Bar 33
	note A#, 4
	octave 3
	note D_, 2
	octave 2
	note F_, 4
	note F_, 2
	note C_, 2
	note F_, 2
;Bar 34
	note A#, 2
	note A#, 2
	volume_envelope 2, 6
	note A#, 1
	note __, 3
	volume_envelope 1, 6
	note A_, 2
	note A_, 2
	volume_envelope 2, 6
	note A_, 1
	note __, 3
;Bar 35
	volume_envelope 1, 6
	note G_, 4
	note A_, 2
	note A#, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	note G_, 2
	note C_, 2
;Bar 36
	sound_call Music_FightArea_Ch3_Type1
	volume_envelope 1, 6
	note C_, 2
;Bar 37
	sound_call Music_FightArea_Ch3_Type1
	octave 1
	volume_envelope 1, 6
	note A#, 2
;Bar 38
	octave 2
	sound_call Music_FightArea_Ch3_Type1
	volume_envelope 1, 6
	note F_, 2
;Bar 39
	sound_call Music_FightArea_Ch3_Type1
	volume_envelope 1, 6
	note F_, 2
	sound_jump Music_FightArea_Ch3_loop

Music_FightArea_Ch3_Type1:
	note F_, 4;
	volume_envelope 2, 6
	note F_, 1
	note __, 1
	volume_envelope 1, 6;
	note F_, 2
	volume_envelope 2, 6
	note F_, 1
	note __, 1
	volume_envelope 1, 6
	note F_, 2
	volume_envelope 2, 6
	note F_, 1
	note __, 1
	sound_ret

Music_FightArea_Ch3_Bar14:
	note A#, 2;
	volume_envelope 2, 6
	note A#, 1
	note __, 1
	octave 1
	volume_envelope 1, 6
	note A#, 3
	note A#, 1
	octave 2
	note C_, 2
	note C_, 2
	note G_, 1
	note C_, 2
	note C_, 1
	sound_ret

Music_FightArea_Ch3_Type2:
	note C_, 2;
	note C_, 2
	volume_envelope 2, 6
	note C_, 1
	note __, 1
	sound_ret

Music_FightArea_Ch3_Type3:
	volume_envelope 1, 6;
	note C_, 2
	volume_envelope 2, 6
	note C_, 1
	note __, 1
	sound_ret

Music_FightArea_Ch3_Type4:
	volume_envelope 1, 6;
	note F_, 2;
	note F_, 2
	volume_envelope 2, 6
	note F_, 1
	sound_ret

Music_FightArea_Ch3_Type5:
	volume_envelope 1, 6;
	note F_, 2
	volume_envelope 2, 6
	note F_, 1
	note __, 1
	volume_envelope 1, 6
	note F_, 2
	sound_ret

Music_FightArea_Ch3_Type6:
	note C_, 1;
	note C_, 1
	volume_envelope 2, 6
	note C_, 1
	sound_ret

; ============================================================================================================

Music_FightArea_Ch4:
	toggle_noise 3
	note_type 12
;Bar 1
	note B_, 2
	note D#, 2
	note D#, 2
	sound_call Music_FightArea_Ch4_Type4
	note D#, 2
	sound_call Music_FightArea_Ch4_Type4
;Bar 2
	sound_call Music_FightArea_Ch4_Type4
	toggle_noise
    toggle_noise 3
	note C_, 2
	toggle_noise
    toggle_noise 1
	note C_, 2
	note C_, 2
	note C_, 2
	toggle_noise
    toggle_noise 3
	note B_, 2
	toggle_noise
    toggle_noise 1
	note C_, 2
;Bar 3
Music_FightArea_Ch4_loop:
	sound_call Music_FightArea_Ch4_Bar3
;Bar 4
	sound_call Music_FightArea_Ch4_Bar3
;Bar 5
	sound_call Music_FightArea_Ch4_Bar3
;Bar 6
	sound_call Music_FightArea_Ch4_Bar3
;Bar 7
	sound_call Music_FightArea_Ch4_Bar7
;Bar 8
	sound_call Music_FightArea_Ch4_Type1
	toggle_noise
    toggle_noise 1
	note C_, 1
	note B_, 1
;Bar 9
	toggle_noise
    toggle_noise 3
	note D#, 2
	toggle_noise
    toggle_noise 1
	note C_, 2
	note B_, 2
	note C_, 2
	note B_, 1
	note B_, 1
	note C_, 1
	toggle_noise
    toggle_noise 3
	note D#, 1
	note F_, 2
	toggle_noise
    toggle_noise 1
	note C_, 2
;Bar 10
	sound_call Music_FightArea_Ch4_Bar7
;Bar 11
	sound_call Music_FightArea_Ch4_Type1
	toggle_noise
    toggle_noise 1
	note C_, 2
;Bar 12 v
Music_FightArea_Ch4_Type2:
	toggle_noise
    toggle_noise 3
	note F_, 2
	toggle_noise
    toggle_noise 1
	note C_, 2
	sound_loop 3, Music_FightArea_Ch4_Type2
	toggle_noise
    toggle_noise 3
	note C_, 1
	note C_, 1
	toggle_noise
    toggle_noise 1
	note C_, 2
;Bar 13 v
	toggle_noise
    toggle_noise 3
	note F_, 1
	note F_, 1
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 1
	note D#, 2
	stereo_panning FALSE, TRUE
	note D#, 2
	toggle_noise
    toggle_noise 1
	note A_, 1
	toggle_noise
    toggle_noise 3
	note C_, 1
	stereo_panning TRUE, TRUE
	note D#, 1
;Bar 14 v
	sound_call Music_FightArea_Ch4_Bar14
;Bar 15 v
	toggle_noise
    toggle_noise 3
	note D#, 2
	note D#, 2
	sound_call Music_FightArea_Ch4_Type4
	toggle_noise
    toggle_noise 1;
	stereo_panning FALSE, TRUE
	note A_, 1
	note A_, 1
	stereo_panning TRUE, TRUE
	toggle_noise
    toggle_noise 3
	note D#, 1
	note C_, 1
	toggle_noise
    toggle_noise 1
	note F_, 2
	note D#, 1
	note D#, 1
;Bar 16 v
	sound_call Music_FightArea_Ch4_Bar14
;Bar 17 v
	toggle_noise
    toggle_noise 3
	note D#, 2
	note D#, 2
	note C_, 1
	note C_, 1
	stereo_panning TRUE, FALSE
	note D#, 1
	stereo_panning TRUE, TRUE
	note D#, 1
	note C_, 1
	note D#, 2
	note D#, 1
	sound_call Music_FightArea_Ch4_Type4
;Bar 18 v
	toggle_noise
    toggle_noise 3
	note D#, 2
	note D#, 2
	note C_, 1
	note D#, 1
	stereo_panning TRUE, FALSE
	note D#, 1
	stereo_panning TRUE, TRUE
	note D#, 1
	note D#, 2
	note D#, 2
	note C_, 1
	note D#, 1
	stereo_panning TRUE, FALSE
	note D#, 1
	stereo_panning TRUE, TRUE
	note D#, 1
;Bar 19 v
	note D#, 2
	note D#, 2
	sound_call Music_FightArea_Ch4_Type4
	note C_, 1
	toggle_noise
    toggle_noise 3
	note C_, 1
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	stereo_panning TRUE, FALSE
	note D#, 1
	stereo_panning TRUE, TRUE
	toggle_noise
    toggle_noise 3
	note C_, 1
	toggle_noise
    toggle_noise 1
;Bar 20 v
	note C#, 2
	toggle_noise
    toggle_noise 3
	note D#, 2
	toggle_noise
    toggle_noise 1
	stereo_panning TRUE, FALSE
	note A_, 1
	note A_, 1
	stereo_panning TRUE, TRUE
	toggle_noise
    toggle_noise 3
	note D#, 1
	stereo_panning TRUE, FALSE
	note D#, 1
	stereo_panning TRUE, TRUE
	note D#, 2
	note D#, 2
	note C_, 1
	note C_, 1
	note D#, 2
;Bar 21 v
	note D#, 2
	stereo_panning TRUE, FALSE
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	stereo_panning TRUE, TRUE
	note D#, 2
	note C_, 1
	note D#, 1
	sound_call Music_FightArea_Ch4_Type5
	sound_call Music_FightArea_Ch4_Type5
;Bar 22 v
	toggle_noise
    toggle_noise 1
	note C#, 2
	toggle_noise
    toggle_noise 3
	note D#, 2
	sound_call Music_FightArea_Ch4_Type4
	toggle_noise
    toggle_noise 1
	note A#, 2
	toggle_noise
    toggle_noise 3
	note D#, 2
	sound_call Music_FightArea_Ch4_Type4
;Bar 23 v
	sound_call Music_FightArea_Ch4_Bar23
;Bar 24 v
	sound_call Music_FightArea_Ch4_Bar24
;Bar 25 v
	toggle_noise
    toggle_noise 3
	note E_, 2
	stereo_panning TRUE, FALSE
	note D#, 2
	stereo_panning TRUE, TRUE
	note D#, 2
	sound_call Music_FightArea_Ch4_Type4
	note D#, 2
	toggle_noise
    toggle_noise 3
	note C_, 2
	note C_, 2
	toggle_noise
    toggle_noise 1
;Bar 26 v
Music_FightArea_Ch4_Bar26:
	toggle_noise
    toggle_noise 3
	note A#, 2
	note A#, 2
	note D_, 2
	note A#, 2
	note D_, 2
	note A#, 2
	note D_, 2
	note A#, 2
	sound_loop 2, Music_FightArea_Ch4_Bar26
;Bar 27 v
;Bar 28 v
	toggle_noise
    toggle_noise 3
	note A#, 2
	note A#, 2
	note D_, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note D_, 2
	note A#, 2
;Bar 29
	toggle_noise
    toggle_noise 1
	note C_, 2
	note C_, 2
	toggle_noise
    toggle_noise 3
	note D#, 2
	note D#, 2
	note C_, 1
	note C_, 1
	note D#, 2
	note B_, 4
	toggle_noise
    toggle_noise 1
;Bar 30
	sound_call Music_FightArea_Ch4_Bar24
;Bar 31
	sound_call Music_FightArea_Ch4_Bar23
;Bar 32
	sound_call Music_FightArea_Ch4_Bar24
;Bar 33
	sound_call Music_FightArea_Ch4_Bar23
;Bar 34
	toggle_noise
    toggle_noise 3
	note C_, 2
	note C_, 2
	note B_, 4
	note C_, 2
	note C_, 2
	note B_, 4
;Bar 35
	note C_, 2
	note B_, 4
	toggle_noise
    toggle_noise 1
	stereo_panning FALSE, TRUE
	note A_, 4
	note A_, 2
	toggle_noise
    toggle_noise 3
	stereo_panning TRUE, FALSE
	note D#, 1
	note D#, 1
	stereo_panning FALSE, TRUE
	note D#, 2
	stereo_panning TRUE, TRUE
;Bar 36
Music_FightArea_Ch4_Bar36:
	toggle_noise
    toggle_noise 3
	note D#, 2
	note D#, 2
	stereo_panning TRUE, FALSE
	note F#, 2
	stereo_panning TRUE, TRUE
	note D#, 2
	sound_loop 4, Music_FightArea_Ch4_Bar36
;Bar 38
Music_FightArea_Ch4_Bar38:
	toggle_noise
    toggle_noise 3
	note D#, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 1
	note C_, 1
	note D#, 2
	sound_loop 2, Music_FightArea_Ch4_Bar38
	sound_jump Music_FightArea_Ch4_loop

Music_FightArea_Ch4_Bar3:
	toggle_noise
    toggle_noise 3;
	note D#, 2
	toggle_noise
    toggle_noise 1
	note C_, 4
	note C_, 4
	note C_, 2
	toggle_noise
    toggle_noise 3
	note F_, 2
	toggle_noise
    toggle_noise 1
	note C_, 2
	sound_ret

Music_FightArea_Ch4_Bar7:
	toggle_noise
    toggle_noise 3
	note D#, 2
	toggle_noise
    toggle_noise 1
	note C_, 2
	note B_, 2
	note C_, 2
	note B_, 2
	note C_, 2
	toggle_noise
    toggle_noise 3
	note F_, 1
	toggle_noise
    toggle_noise 1
	note B_, 1
	note C_, 1
	toggle_noise
    toggle_noise 3
	note D#, 1
	sound_ret

Music_FightArea_Ch4_Bar14:
	toggle_noise
    toggle_noise 3
	note D#, 4;
	note F_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 1
	note D#, 1
	stereo_panning TRUE, FALSE
	note D#, 1
	stereo_panning TRUE, TRUE
	note D#, 1
	sound_ret

Music_FightArea_Ch4_Bar23:
	toggle_noise
    toggle_noise 3
	note E_, 2
	stereo_panning TRUE, FALSE
	note D#, 2
	stereo_panning TRUE, TRUE
	note C_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 2
	note D#, 2
	sound_ret

Music_FightArea_Ch4_Bar24:
	toggle_noise
    toggle_noise 3
	note B_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 2
	note D#, 2
	sound_ret

Music_FightArea_Ch4_Type1:
	toggle_noise
    toggle_noise 3;
	note D#, 2
	toggle_noise
    toggle_noise 1
	note C_, 2
	note B_, 2
	note C_, 2
	note B_, 2
	note C_, 2
	toggle_noise
    toggle_noise 3
	note F_, 2
	sound_ret

Music_FightArea_Ch4_Type3:
	toggle_noise
    toggle_noise 1;
	note C_, 2
	toggle_noise
    toggle_noise 3
	note D#, 2
	sound_ret

Music_FightArea_Ch4_Type4:
	toggle_noise
    toggle_noise 3
	note C_, 2
	note D#, 2
	sound_ret

Music_FightArea_Ch4_Type5:
	toggle_noise
    toggle_noise 1;
	note C#, 2
	toggle_noise
    toggle_noise 3
	note D#, 1
	sound_ret

; ============================================================================================================
; ============================================================================================================

Music_FightAreaNight:
	channel_count 4
	channel 1, Music_FightAreaNight_Ch1
	channel 2, Music_FightArea_Ch2
	channel 3, Music_FightArea_Ch3
	channel 4, Music_FightArea_Ch4

Music_FightAreaNight_Ch1:
	volume 7, 7
	duty_cycle $2
	stereo_panning FALSE, TRUE
	note_type 12, 8, 8
	tempo 128
;Bar 1
	octave 2
	note G_, 4
	octave 3
	note C_, 4
	note F_, 4
	note G_, 4
;Bar 2
	note C_, 4
	octave 2
	note G_, 10
	volume_envelope 8, 3
	note C_, 1
	note C_, 1
;Bar 3
Music_FightAreaNight_Ch1_loop:
	stereo_panning FALSE, TRUE
	duty_cycle $2
	octave 2
	volume_envelope 8, 2
	note F_, 1
	note F_, 1
	note C_, 1
	note C_, 1
	note G_, 1
	note G_, 1
	note A_, 1
	note A_, 1
	octave 3
	note C_, 1
	note C_, 1
	sound_call Music_FightAreaNight_Ch1_Type3
;Bar 4
	sound_call Music_FightAreaNight_Ch1_Type2
	note D_, 1
	note D_, 1
	sound_call Music_FightAreaNight_Ch1_Type3
;Bar 5
	octave 2
	note F_, 1
	note F_, 1
	note C_, 1
	note C_, 1
	note G_, 1
	note G_, 1
	note A_, 1
	note A_, 1
	octave 3
	note C_, 1
	note C_, 1
	sound_call Music_FightAreaNight_Ch1_Type1
;Bar 6
	sound_call Music_FightAreaNight_Ch1_Type2
	note C#, 1
	note C#, 1
	sound_call Music_FightAreaNight_Ch1_Type1
;Bar 7
	note C_, 1
	note C_, 1
	octave 2
	note A_, 1
	note A_, 1
	octave 3
	note C_, 1
	note C_, 1
	sound_call Music_FightAreaNight_Ch1_Type1
	note C_, 1
	note C_, 1
	octave 2
	note A_, 1
	note A_, 1
;Bar 8
	note D_, 1
	note F_, 1
	note A_, 1
	octave 3
	note D_, 1
	note F_, 1
	note A_, 1
	octave 4
	note D_, 1
	note F_, 1
	octave 2
	note F_, 1
	note A_, 1
	octave 3
	note D_, 1
	note F_, 1
	note A_, 1
	octave 4
	note D_, 1
	note F_, 1
	note A_, 1
;Bar 9
	octave 3
	note G_, 1
	note G_, 1
	note A#, 1
	note A#, 1
	octave 4
	note D_, 1
	note D_, 1
	octave 3
	note F_, 1
	note F_, 1
	note C_, 1
	note C_, 1
	note E_, 1
	note E_, 1
	note G_, 1
	note G_, 1
	octave 2
	note A#, 1
	note A#, 1
;Bar 10
	note A_, 1 ; WARNING: Auto-Sync says: Rounded down!
	note F_, 1 ; WARNING: Auto-Sync says: Rounded down!
	note A_, 1 ; WARNING: Auto-Sync says: Rounded down!
	octave 3
	note F_, 1 ; WARNING: Auto-Sync says: Rounded down!
	octave 2
	note G_, 1 ; WARNING: Auto-Sync says: Rounded down!
	note E_, 1 ; WARNING: Auto-Sync says: Rounded down!
	note G_, 1
	octave 3
	note E_, 1
	note F_, 1
	note F_, 1
	note A_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note A#, 1
	octave 4
	note C_, 1
;Bar 11
	octave 3
	note A#, 1
	note A#, 1
	note F_, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note A#, 1
	note F_, 1
	note E_, 1
	note C_, 1
	octave 2
	note G_, 1
	note G_, 1
	octave 3
	note C_, 1
	note C_, 1
	note G_, 1
	note G_, 1
;Bar 12
	note A_, 1
	note A_, 1
	note F_, 1
	note F_, 1
	note C_, 1
	note C_, 1
	note F_, 1
	note F_, 1
	note A_, 1
	note F_, 1
	note C_, 1
	octave 2
	note A_, 1
	octave 3
	note F_, 1
	note C_, 1
	octave 2
	note A_, 1
	volume_envelope 8, 3
	note F_, 1
;Bar 13
	note C_, 1
	note F_, 1
	note A_, 1
	octave 3
	note C_, 1
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
	note F_, 1
	note C_, 1
	octave 3
	note F_, 1
	octave 4
	note C_, 1
	note F_, 1
	note C_, 1
	note F_, 1
	note A_, 1
	octave 5
	volume_envelope 7, 3
	note C_, 1
;Bar 14
	sound_call Music_FightAreaNight_Ch1_Bar14
;Bar 15
	note E_, 2
	note F_, 2
	note G_, 2
	note C_, 2
	note __, 2
	note F_, 2
	note G_, 2
	note A_, 2
	octave 5
;Bar 16
	sound_call Music_FightAreaNight_Ch1_Bar14
;Bar 17
	note D_, 2
	note F_, 2
	note D_, 2
	octave 3
	note A_, 2
	note __, 2
	octave 4
	note F_, 2
	note G_, 2
	note A_, 2
;Bar 18
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note F_, 2
	note A#, 2
	octave 5
	note C#, 2
;Bar 19
	note D_, 2
	note C#, 2
	note C_, 2
	note D_, 4
	note F_, 2
	note G_, 2
	volume_envelope 8, 2
	note C_, 2
;Bar 20
	note __, 2
	octave 4
	note C_, 2
	note C_, 2
	note F_, 2
	note F_, 2
	note G_, 2
	note G_, 2
	octave 5
	note C_, 2
;Bar 21
	note C_, 2
	note G_, 2
	note G_, 2
	octave 6
	note C_, 2
	volume_envelope 7, 3
	duty_cycle $1
	note C_, 2
	note __, 10
;Bar 22
	octave 4
	note F_, 2
	note C_, 2
	note G_, 2
	note A_, 4
	octave 5
	note C_, 4
;Bar 23
	octave 4;
	note A#, 2
	octave 5
	note D_, 2
	sound_call Music_FightAreaNight_Ch1_Bar23
	octave 5
	note C_, 4
;Bar 25
	note __, 2
	octave 4;
	note A#, 2
	octave 5
	note D_, 2
	sound_call Music_FightAreaNight_Ch1_Bar23
	octave 5
	note F#, 2
	note G_, 4
;Bar 27
	note G_, 2
	note D_, 4
	note G_, 2
	note A_, 4
	octave 6
	note C_, 4
;Bar 28
	note C_, 2
	octave 5
	note A#, 4
	note F_, 4
	note C#, 4
;Bar 29
	octave 3
	note C_, 1
	note F_, 1
	note G_, 1
	note F_, 1

	note C_, 1
	octave 2
	note G_, 1
	octave 3
	note_type 8, 7, 3
	note C_, 1
	note F_, 1
	note G_, 1

	note F_, 1
	note C_, 1
	note F_, 1
	note G_, 1
	octave 4
	note C_, 1
	note F_, 1
	
	note G_, 1
	note C_, 1
	note F_, 1
	note G_, 1
	octave 5
	note C_, 1
	note G_, 1
;Bar 30
	note_type 12, 7, 3
	note A_, 4
	octave 4
	note F_, 2
	note C_, 2
	note G_, 2
	note A_, 4
	octave 5
	note C_, 4
;Bar 31
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	sound_call Music_FightAreaNight_Ch1_Bar23
	octave 5
	note C_, 4
;Bar 33
	note __, 2
	octave 4
	note A#, 2
	octave 5
	note D_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note A#, 2
	note A_, 4
;Bar 34
	octave 6
	note C_, 4
	octave 5
	note F_, 4
	note G_, 2
	note C_, 2
	note F_, 4
;Bar 35
	note C_, 2
	note F_, 2
	note G_, 2
	note F_, 4
	note A#, 4
;Bar 36
	stereo_panning TRUE, FALSE
	note A_, 1
	note F_, 1
	stereo_panning TRUE, TRUE
	note C_, 1
	stereo_panning FALSE, TRUE
	octave 4
	note A#, 1
	note A_, 1
	note F_, 1
	note C_, 1
	octave 3
	note A#, 1
	note_type 8, 7, 3
	note A_, 1
	note A#, 1
	note A_, 1
	note F_, 1
	note C_, 1
	note F_, 1
	stereo_panning TRUE, TRUE
	note C_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	stereo_panning TRUE, FALSE
	octave 4
	note C_, 1
	note F_, 1
;Bar 37
	octave 3
	note A#, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note A#, 1
	note A_, 1

	note A#, 1
	octave 4
	note D_, 1
	stereo_panning TRUE, TRUE
	note F_, 1
	note A#, 1
	stereo_panning FALSE, TRUE
	note A_, 1
	note A#, 1

	octave 5
	note D_, 1
	octave 4
	note A_, 1
	note A#, 1
	octave 5
	note D_, 1
	note F_, 1
	stereo_panning TRUE, TRUE
	note A#, 1
	note A_, 1
	stereo_panning TRUE, FALSE
	note A#, 1
	octave 6
	note D_, 1
	note F_, 9
	note_type 12, 7, 3
	duty_cycle $3
	octave 3
	stereo_panning FALSE, TRUE
	sound_call Music_FightArea_Ch1_End
	sound_jump Music_FightAreaNight_Ch1_loop

Music_FightAreaNight_Ch1_Bar14:
	note __, 4;
	note C_, 2
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
	note __, 2
	note C_, 2
	sound_ret

Music_FightAreaNight_Ch1_Bar23:
	note F_, 2;
	note G_, 2
	note F_, 2
	note A#, 2
	note A_, 8
	note A_, 1
	note A#, 1
	octave 6
	note C_, 4
	sound_ret

Music_FightAreaNight_Ch1_Type1:
	note F_, 1;
	note F_, 1
	note G_, 1
	note G_, 1
	note F_, 1
	note F_, 1
	sound_ret

Music_FightAreaNight_Ch1_Type2:
	octave 2;
	note F_, 1
	note F_, 1
	octave 1
	note A#, 1
	note A#, 1
	octave 2
	note F_, 1
	note F_, 1
	note A#, 1
	note A#, 1
	octave 3
	sound_ret

Music_FightAreaNight_Ch1_Type3:
	note F_, 1;
	note F_, 1
	note E_, 1
	note E_, 1
	note F_, 1
	note F_, 1
	sound_ret