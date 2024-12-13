Music_SeviiIslands:
	channel_count 4
	channel 1, Music_SeviiIslands_Ch1
	channel 2, Music_SeviiIslands_Ch2
	channel 3, Music_SeviiIslands_Ch3
	channel 4, Music_SeviiIslands_Ch4

Music_SeviiIslands_Ch1:
	volume 7, 7
	duty_cycle $3
	note_type 12, 9, 7
	vibrato 4, 1, 6
	pitch_offset $0002
	tempo 154
;Bar 1
	rest 4
	octave 1
	note C_, 14
;Bar 2
	volume_envelope 10, 7
	note C#, 2
	note D_, 14
;Bar 3
	rest 2
Music_SeviiIslands_Ch1_loop:
	volume_envelope 10, 5
	note G_, 3
	note G_, 1
	rest 2
	note G_, 6
;Bar 4
	note G_, 1
	octave 2
	note G_, 1
	octave 1
	note F#, 2
	note F_, 3
	note F_, 1
	rest 2
	note F_, 2
	rest 2
	note F_, 1
	note F_, 1
;Bar 5
	note F_, 1
	octave 2
	note F_, 1
	octave 1
	note F_, 2
	note E_, 3
	note E_, 1
	rest 2
	note E_, 5
	note E_, 1
;Bar 6
	note E_, 1
	octave 2
	note E_, 1
	octave 1
	note D#, 2
	note D_, 3
	octave 2
	note D_, 3
	note C_, 2
	octave 1
	note B_, 2
	note G_, 1
	note G_, 1
;Bar 7
	note A_, 4
	octave 2
	note D_, 3
	octave 1
	note G_, 1
	rest 2
	note G_, 4
	note G_, 1
	note G_, 1
;Bar 8
	note A_, 4
	note F_, 3
	octave 2
	note F_, 3
	octave 1
	note F_, 1
	rest 3
	note F_, 1
	note F_, 1
;Bar 9
	octave 2
	note E_, 2
	note C_, 2
	octave 1
	note E_, 3
	octave 2
	note E_, 3
	note D_, 2
	note C_, 3
	octave 1
	note B_, 3
;Bar 10
	octave 2
	note C_, 2
	octave 1
	note D_, 3
	octave 2
	note D_, 3
	note C_, 2
	octave 1
	note B_, 4
;Bar 11
	note A_, 4
	note G_, 1
	rest 2
	note G_, 3
	note G_, 1
	note_type 6, 10, 5
	note G_, 1
	rest 5
	note_type 12, 10, 5
	note G_, 1
	note G_, 1
;Bar 12
	note A_, 4
	note F_, 1
	rest 2
	note F_, 3
	note F_, 1
	note F_, 1
	rest 2
	note F_, 2
;Bar 13
	note G_, 4
	note F_, 3
	note F_, 1
	rest 2
	note F_, 1
	note_type 6, 10, 5
	note F_, 1
	rest 5
	note_type 12, 10, 5
	note F_, 1
	note F_, 1
;Bar 14
	note F_, 2
	note F#, 2
	note G_, 2
	note B_, 4
	note A_, 4
	note G_, 1
	note G_, 1
;Bar 15
	note B_, 2
	note C#, 2
	note D_, 3
	note D_, 1
	rest 2
	note D_, 1
	note_type 6, 10, 5
	note D_, 1
	rest 5
	note_type 12, 10, 5
	note D_, 1
	rest 1
;Bar 16
	note B_, 2
	note D_, 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 2
	note C_, 1
;Bar 17
	note C_, 1
	note A_, 1
	note C_, 2
	note C_, 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
	rest 2
	note C_, 1
;Bar 18
	note C_, 2
	note C#, 1
	note C#, 1
	note D_, 3
	note D_, 1
	rest 2
	note B_, 4
	note D_, 1
	note D_, 1
;Bar 19
	note E_, 2
	note F#, 1
	note F_, 1
	note G_, 3
	note G_, 1
	rest 2
	note G_, 1
	note D_, 2
	note G_, 1
	note D_, 2
;Bar 20
	note G_, 1
	note G_, 1
	volume_envelope 10, 5
	note A_, 2
	sound_jump Music_SeviiIslands_Ch1_loop

; ============================================================================================================

Music_SeviiIslands_Ch2:
	duty_cycle $1
	note_type 12, 10, 8
	vibrato 18, 2, 4
	stereo_panning TRUE, TRUE
;Bar 1
	rest 4
	octave 4
	note C_, 13
	volume_envelope 10, 6
	note C_, 3
;Bar 2
	volume_envelope 9, 8
	note D_, 13
	volume_envelope 9, 6
	note D_, 3
;Bar 3
Music_SeviiIslands_Ch2_loop:
	note_type 8, 9, 8
	octave 4
	note G_, 13
	volume_envelope 9, 6
	note G_, 3
	volume_envelope 9, 8
	sound_call Music_SeviiIslands_Ch2_Main
	octave 4
	note B_, 6
	volume_envelope 9, 6
	note B_, 2
	volume_envelope 9, 8
;Bar 7
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note B_, 6
	volume_envelope 9, 6
	note B_, 2
	note_type 8, 9, 8
	note G_, 4
	sound_call Music_SeviiIslands_Ch2_Main
	octave 4
	note B_, 12
;Bar 11
	note B_, 13
	volume_envelope 9, 6
	note B_, 3
	volume_envelope 9, 8
;Bar 12
	note_type 8, 11, 8
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
	note_type 12, 11, 8
	note F_, 5
	volume_envelope 11, 6
	note F_, 3
;Bar 13
	rest 2
	volume_envelope 9, 8
	octave 4
	note F_, 1
	note A_, 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note A_, 1
	octave 5
	note C_, 1
	note F_, 5
	volume_envelope 9, 6
	note F_, 3
	volume_envelope 9, 8
;Bar 14
	rest 2
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
;Bar 15
	note A_, 2
	note_type 8, 9, 8
	note G_, 4
	note A_, 4
	note B_, 4
	note_type 12, 9, 8
	octave 5
	note D_, 5
	volume_envelope 9, 6
	note D_, 3
	volume_envelope 9, 8
;Bar 16
	volume_envelope 10, 8
	note_type 8, 10, 8
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
	octave 4
	note F_, 4
	note E_, 4
;Bar 17
	note D_, 4
	note A_, 4
	note G_, 4
	note F_, 4
	octave 5
	note C_, 4
	octave 4
	note B_, 4
;Bar 18
	note A_, 4
	volume_envelope 9, 8
	note B_, 13
	volume_envelope 9, 6
	note B_, 3
	volume_envelope 9, 8
	note G_, 4
;Bar 19
	note B_, 4
	octave 5
	note_type 12, 9, 8
	note D_, 13
	volume_envelope 9, 6
	note D_, 3
	volume_envelope 9, 8
	sound_jump Music_SeviiIslands_Ch2_loop

Music_SeviiIslands_Ch2_Main:
	note D_, 4
;Bar 4
	note G_, 4
	octave 5
	note D_, 13
	volume_envelope 9, 6
	note D_, 3
	volume_envelope 9, 8
	note F_, 4
;Bar 5
	note E_, 4
	note_type 12, 9, 8
	note C_, 10
	volume_envelope 9, 6
	note C_, 2
	volume_envelope 9, 8
;Bar 6
	note E_, 4
	note D_, 3
	note C_, 1
	sound_ret

; ============================================================================================================

Music_SeviiIslands_Ch3:
	note_type 12, 1, 6
	vibrato 8, 2, 2
	pitch_offset $0001
	stereo_panning TRUE, FALSE
;Bar 1
	rest 4
	octave 3
	note G_, 4
	rest 2
	note_type 6, 1, 6
	note G_, 9
	rest 11
;Bar 2
	note_type 12, 1, 6
	note G_, 4
	rest 2
	note_type 6, 1, 6
	note G_, 9
	rest 3
;Bar 3
	note_type 12, 1, 6
	note A_, 4
Music_SeviiIslands_Ch3_loop:
	note B_, 6
	note A_, 6
;Bar 4
	sound_call Music_SeviiIslands_Ch3_Main
;Bar 7
	octave 3
	note B_, 4
	note B_, 6
	note A_, 6
;Bar 8
	sound_call Music_SeviiIslands_Ch3_Main
;Bar 11
	octave 3
	note B_, 4
	octave 4
	note D_, 3
	note F#, 1
	note G_, 12
;Bar 12
	note_type 8, 1, 6
	octave 3
	note F_, 4
	note E_, 4
	note D_, 4
	note_type 12, 1, 6
	note C_, 8
;Bar 13
	note F_, 12
;Bar 14
	note A_, 4
	note G_, 2
	note_type 8, 1, 6
	note D_, 11
	rest 4
;Bar 15
	note_type 12, 1, 6
	note A_, 4
	note G_, 3
	note A_, 1
	note B_, 8
;Bar 16
	note G_, 4
	rest 2
	note F_, 1
	note A_, 1
	note F_, 8
;Bar 17
	note A_, 4
	rest 2
	note A_, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 8
;Bar 18
	octave 4
	note C_, 4
	rest 2
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 12
;Bar 19
	rest 2
	note D_, 1
	note F_, 1
	note G_, 12
	sound_jump Music_SeviiIslands_Ch3_loop

Music_SeviiIslands_Ch3_Main:
	note G_, 4
	octave 4
	note G_, 6
	note F_, 4
	note A_, 2
;Bar 5
	note G_, 4
	note E_, 6
	note C_, 2
	note_type 8, 1, 6
	octave 3
	note G_, 4
	octave 4
	note C_, 4
;Bar 6
	note E_, 4
	note_type 12, 1, 6
	octave 3
	note G_, 3
	note B_, 1
	octave 4
	note D_, 8
	sound_ret

; ============================================================================================================

Music_SeviiIslands_Ch4:
	toggle_noise $3
	stereo_panning FALSE, TRUE
	drum_speed 12
;Bar 1
	drum_note 4, 2
	toggle_noise
	toggle_noise $1
	drum_note 10, 1
	drum_note 10, 1
	toggle_noise
	toggle_noise $3
	drum_note 4, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 7, 2
	drum_note 4, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 7, 4
;Bar 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 7, 2
	drum_note 4, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 2
;Bar 3
	sound_call Music_SeviiIslands_Ch4_4C_sharp
Music_SeviiIslands_Ch4_loop:
	sound_call Music_SeviiIslands_Ch4_Type1
	drum_note 7, 2
;Bar 4
	sound_call Music_SeviiIslands_Ch4_4C_sharp
	sound_call Music_SeviiIslands_Ch4_Type1
	drum_note 4, 1
	drum_note 4, 1
;Bar 5
	sound_call Music_SeviiIslands_Ch4_4C_sharp
	sound_call Music_SeviiIslands_Ch4_Type1
	drum_note 7, 1
	drum_note 4, 1
;Bar 6
	sound_call Music_SeviiIslands_Ch4_4C_sharp
	sound_call Music_SeviiIslands_Ch4_Type1
	drum_note 4, 1
	drum_note 4, 1
;Bar 7
	sound_call Music_SeviiIslands_Ch4_4C_sharp
	sound_call Music_SeviiIslands_Ch4_Type1
	drum_note 7, 2
;Bar 8
	sound_call Music_SeviiIslands_Ch4_4C_sharp
	sound_call Music_SeviiIslands_Ch4_Type1
	drum_note 4, 1
	drum_note 4, 1
;Bar 9
	sound_call Music_SeviiIslands_Ch4_4C_sharp
	drum_note 4, 2
	drum_note 8, 1
	drum_note 4, 1
	drum_note 7, 2
	drum_note 4, 2
	drum_note 4, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 1
;Bar 10
	drum_note 8, 1
	drum_note 8, 1
	drum_note 2, 1
	drum_note 2, 1
	sound_call Music_SeviiIslands_Ch4_Type1
	drum_note 4, 1
	drum_note 4, 1
;Bar 11
	sound_call Music_SeviiIslands_Ch4_4C_sharp
	drum_note 4, 2
	drum_note 8, 1
	drum_note 4, 1
	drum_note 7, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 1
	drum_note 2, 1
;Bar 12
	drum_note 4, 1
	drum_note 2, 1
	drum_note 9, 1
	drum_note 11, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 1
	drum_note 8, 2
	drum_note 4, 1
	drum_note 4, 3
	drum_note 4, 1
	drum_note 8, 1
;Bar 13
	sound_call Music_SeviiIslands_Ch4_4C_sharp
	drum_note 4, 2
	drum_note 8, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 1
	drum_note 4, 3
	drum_note 4, 1
	drum_note 4, 1
;Bar 14
	drum_note 2, 1
	drum_note 2, 1
	drum_note 11, 1
	drum_note 8, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 2, 2
	drum_note 4, 1
	drum_note 8, 1
	drum_note 8, 2
	drum_note 4, 1
	drum_note 4, 1
;Bar 15
	drum_note 2, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 8, 1
	drum_note 4, 1
	drum_note 7, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 7, 2
	drum_note 4, 1
	drum_note 8, 1
;Bar 16
	drum_note 2, 1
	drum_note 2, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 1
	drum_note 2, 2
	drum_note 4, 1
	drum_note 8, 2
	drum_note 4, 1
	drum_note 8, 1
	drum_note 4, 1
;Bar 17
	drum_note 2, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 1
	drum_note 8, 1
	drum_note 2, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 2, 1
	drum_note 4, 2
	drum_note 8, 1
	drum_note 4, 1
;Bar 18
	drum_note 2, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 8, 1
	drum_note 4, 1
	drum_note 2, 2
	drum_note 4, 1
	drum_note 8, 1
	drum_note 8, 2
	drum_note 8, 1
	drum_note 4, 1
;Bar 19
	drum_note 2, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 8, 1
	drum_note 2, 1
	drum_note 4, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 2, 1
	drum_note 4, 1
	drum_note 8, 1
;Bar 20
	drum_note 2, 1
	drum_note 2, 1
	drum_note 11, 2
	sound_jump Music_SeviiIslands_Ch4_loop

Music_SeviiIslands_Ch4_4C_sharp:
	drum_note 2, 1
	sound_loop 4, Music_SeviiIslands_Ch4_4C_sharp
	sound_ret

Music_SeviiIslands_Ch4_Type1:
	drum_note 4, 2
	drum_note 8, 1
	drum_note 4, 1
	drum_note 7, 2
	drum_note 4, 2
	drum_note 8, 1
	drum_note 8, 1
	sound_ret
