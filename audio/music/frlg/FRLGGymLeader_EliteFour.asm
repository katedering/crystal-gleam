;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_KantoGymLeaderFRLG:
	channel_count 4
	channel 1, Music_KantoGymLeaderFRLG_Ch1
	channel 2, Music_KantoGymLeaderFRLG_Ch2
	channel 3, Music_KantoGymLeaderFRLG_Ch3
	channel 4, Music_KantoGymLeaderFRLG_Ch4

Music_KantoGymLeaderFRLG_Ch1:
	volume 7, 7
	duty_cycle $3
	pitch_offset $0001
	note_type 12, 14, 3
	tempo 104
	stereo_panning FALSE, TRUE
	sound_call Music_KantoGymLeaderFRLG_Ch1_Master_Intro
;Bar 3
	duty_cycle $2
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 10
;Bar 4
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 4
	volume_envelope 13, 7
	note F_, 6
;Bar 5
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 10
;Bar 6
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 4
	volume_envelope 13, 7
	note F_, 6
;Bar 7
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	volume_envelope 4, 8
	note F#, 1
	rest 9
;Bar 8
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 4
	volume_envelope 13, 7
	note F_, 6
;Bar 9
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 10
;Bar 10
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 4
	volume_envelope 11, 7
	note A_, 6
;Bar 11
Music_KantoGymLeaderFRLG_Ch1_loop:
	vibrato 8, 3, 4
	duty_cycle $3
	stereo_panning FALSE, TRUE
	note F#, 1
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar11
	stereo_panning TRUE, FALSE
	note C#, 1
;Bar 13
	octave 2
	stereo_panning FALSE, TRUE
	note F_, 1
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar13
	stereo_panning TRUE, FALSE
	note A_, 1
;Bar 15
	stereo_panning FALSE, TRUE
	note F#, 1
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar11
	stereo_panning TRUE, FALSE
	note C#, 1
;Bar 17
	octave 2
	stereo_panning FALSE, TRUE
	note F_, 1
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar13
	volume_envelope 12, 7
	stereo_panning TRUE, TRUE
	note A_, 1
;Bar 19
	stereo_panning FALSE, TRUE
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type1
	octave 2
	note C#, 2
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type1
	note B_, 1
	rest 1
	octave 2
	note C#, 2
	octave 1
	note B_, 2
	note A_, 2
	octave 2
	note C#, 2
;Bar 23
	;stereopanning $ff
	stereo_panning FALSE, TRUE
	octave 1
	volume_envelope 11, 7
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	volume_envelope 11, 3
Music_KantoGymLeaderFRLG_Ch1_Bar23_25:
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type2
	sound_loop 11, Music_KantoGymLeaderFRLG_Ch1_Bar23_25
;Bar 26
	stereo_panning TRUE, TRUE
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type3
	note A_, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
;Bar 27
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	volume_envelope 11, 3
Music_KantoGymLeaderFRLG_Ch1_Bar27_30:
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type2
	sound_loop 12, Music_KantoGymLeaderFRLG_Ch1_Bar27_30
;Bar 30
	stereo_panning TRUE, TRUE
	octave 3
	volume_envelope 9, 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar31_44
	sound_jump Music_KantoGymLeaderFRLG_Ch1_loop

Music_KantoGymLeaderFRLG_Ch1_Bar11:
	stereo_panning TRUE, FALSE
	note C#, 1
	stereo_panning FALSE, TRUE
	note F#, 1
	stereo_panning TRUE, TRUE
	note E_, 1
	sound_loop 10, Music_KantoGymLeaderFRLG_Ch1_Bar11
	sound_ret

Music_KantoGymLeaderFRLG_Ch1_Bar13:
	stereo_panning TRUE, FALSE
	note A_, 1
	octave 3
	stereo_panning FALSE, TRUE
	note C#, 1
	octave 2
	stereo_panning TRUE, TRUE
	note B_, 1
	sound_loop 10, Music_KantoGymLeaderFRLG_Ch1_Bar13
	sound_ret

Music_KantoGymLeaderFRLG_Ch1_Type1:
	octave 1;
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 2
	note D_, 4
	octave 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 2
	volume_envelope 10, 7
	note E_, 4
	octave 1
	volume_envelope 12, 7
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 2
	note D_, 4
	octave 1
	note B_, 1
	rest 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch1_Type2:
	octave 3;
	stereo_panning TRUE, FALSE
	note C_, 1
	octave 2
	stereo_panning TRUE, TRUE
	note B_, 1
	note A_, 1
	stereo_panning FALSE, TRUE
	note B_, 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch1_Type3:
	note C_, 1;
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 2
	note B_, 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch1_Intro:
	volume_envelope 15, 8
	note F#, 1
	rest 1
	volume_envelope 9, 8
	note F#, 1
	rest 1
	volume_envelope 6, 8
	note F#, 1
	rest 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch1_Master_Intro:
;Bar 1
	rest 6;
	octave 3
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
;Bar 2
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	octave 1
	note F_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch1_Bar31_44:
	volume_envelope 9, 7;
	note A#, 1
	note A_, 1
;Bar 31
	stereo_panning FALSE, TRUE
	rest 4
	octave 3
	volume_envelope 11, 8
	note C#, 12
;Bar 32
	rest 4
	note A_, 12
;Bar 33
	volume_envelope 14, 7
	note D#, 4
	note C#, 4
	note D#, 4
	note E_, 2
	note F#, 4
;Bar 34
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note D#, 2
	note F#, 2
;Bar 35
	rest 4
	volume_envelope 11, 8
	note A_, 12
;Bar 36
	volume_envelope 12, 7
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note A_, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
;Bar 37
	volume_envelope 15, 7
	note D#, 4
	note E_, 4
	note C#, 2
	note D#, 6
;Bar 38
	note F#, 4
	note E_, 2
	note D#, 4
	note C#, 6
;Bar 39
	note D#, 4
	note E_, 4
	note C#, 2
	note D#, 6
;Bar 40
	note F#, 4
	note A_, 2
	note G#, 4
	note E_, 6
;Bar 41
	note D#, 4
	note E_, 4
	note C#, 2
	note D#, 6
;Bar 42
	note E_, 4
	note D#, 2
	note C#, 4
	octave 2
	note B_, 6
;Bar 43
	octave 3
	note D#, 4
	note E_, 4
	note C#, 2
	note D#, 6
;Bar 44
	note F#, 4
	note A_, 2
	note G#, 4
	volume_envelope 14, 7
	note E_, 6
	sound_ret

; ============================================================================================================

Music_KantoGymLeaderFRLG_Ch2:
	duty_cycle $1
	vibrato 8, 3, 4
	note_type 12, 14, 7
	stereo_panning TRUE, FALSE
;Bar 1
	sound_call Music_KantoGymLeaderFRLG_Ch2_Intro
;Bar 3
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 10
;Bar 4
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 4
	octave 4
	volume_envelope 14, 7
	note C_, 4
;Bar 5
	note_type 6, 12, 7
	note D_, 2
	note C#, 1
	note C_, 1
	note_type 12, 12, 7
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 10
;Bar 6
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 4
	volume_envelope 14, 7
	note A#, 6
;Bar 7
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	volume_envelope 5, 8
	note B_, 1
	rest 9
;Bar 8
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 4
	octave 4
	volume_envelope 14, 7
	note C_, 6
;Bar 9
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 10
;Bar 10
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 4
	octave 4
	volume_envelope 14, 7
	note C#, 6
;Bar 11
Music_KantoGymLeaderFRLG_Ch2_loop:
	stereo_panning TRUE, TRUE
	duty_cycle $2
	vibrato 8, 2, 2
	sound_call Music_KantoGymLeaderFRLG_Ch2_Main
	sound_jump Music_KantoGymLeaderFRLG_Ch2_loop

Music_KantoGymLeaderFRLG_Ch2_Type1:
	volume_envelope 15, 8
	note B_, 1
	rest 1
	volume_envelope 9, 8
	note B_, 1
	rest 1
	volume_envelope 6, 8
	note B_, 1
	rest 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch2_Intro:
	octave 4
	note F_, 1;
	note E_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	volume_envelope 13, 7
	note B_, 1
	rest 5
;Bar 2
	volume_envelope 14, 7
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch2_Main:
	volume_envelope 13, 7;
	note D#, 4
	note C#, 4
	note D#, 4
	note E_, 2
	note F#, 4
;Bar 12
	note E_, 4
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
;Bar 13
	octave 3
	note A_, 8
	octave 4
	note C#, 8
;Bar 14
	note E_, 10
	note C#, 4
	vibrato 8, 3, 4
	duty_cycle $0
	note D_, 2
;Bar 15
	note_type 6, 13, 6
	note D#, 6
	note E_, 1
	note D#, 1
	note C#, 7
	note D_, 1
	note D#, 8
	note E_, 3
	note F_, 1
	note F#, 8
;Bar 16
	note E_, 8
	note D#, 4
	note C#, 4
	octave 3
	note B_, 3
	octave 4
	note C_, 1
	note C#, 3
	note D_, 1
	note D#, 4
;Bar 17
	note C#, 15
	note C_, 1
	octave 3
	note B_, 15
	note A#, 1
;Bar 18
	note_type 12, 13, 7
	note A_, 8
	octave 4
	note E_, 4
	note E_, 2
	note C#, 2
;Bar 19
	stereo_panning TRUE, FALSE
	duty_cycle $1
	octave 1
	note B_, 1
	rest 3
	octave 3
	note D_, 1
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	rest 4
	note E_, 1
	note D_, 1
	octave 2
	note B_, 1
	octave 3
	note E_, 1
;Bar 20
	rest 4
	note F#, 1
	note E_, 1
	note C#, 1
	note F#, 1
	rest 2
	note E_, 1
	note C#, 1
	note E_, 1
	rest 1
	note F_, 1
	rest 1
;Bar 21
	octave 4
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	rest 4
	note E_, 1
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 4
;Bar 22
	note F#, 1
	note E_, 1
	note C#, 1
	note F#, 1
	note E_, 1
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	note F#, 1
	rest 1
	note E_, 2
;Bar 23
	octave 1
	stereo_panning TRUE, TRUE
	vibrato 0, 4, 4
	volume_envelope 12, 8
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note A_, 4
;Bar 24
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	note G_, 4
;Bar 25
	volume_envelope 11, 8
	note F#, 16
;Bar 26
	volume_envelope 11, 8
	note F#, 12
	volume_envelope 11, 5
	note F#, 4
;Bar 27
	octave 1
	volume_envelope 10, 7
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	volume_envelope 11, 8
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note A_, 4
;Bar 28
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	octave 4
	note C_, 4
;Bar 29
	octave 3
	vibrato 8, 2, 4
	volume_envelope 10, 8
	note B_, 16
;Bar 30
	octave 4
	volume_envelope 4, -7
	note F#, 16
;Bar 31
	stereo_panning TRUE, FALSE
	rest 4
	octave 3
	volume_envelope 12, 8
	note A_, 12
;Bar 32
	rest 4
	octave 4
	note C#, 12
;Bar 33
	note D#, 16
	note D#, 12
	volume_envelope 12, 6
	note D#, 4
	volume_envelope 12, 8
;Bar 35
	rest 4
	note C#, 12
;Bar 36
	note A_, 8
	note E_, 8
;Bar 37
	volume_envelope 10, 8
	note B_, 16
	note B_, 16
	note B_, 16
	volume_envelope 10, 7
	note B_, 12
;Bar 40
	octave 3
	volume_envelope 12, 8
	note B_, 1
	octave 4
	note D#, 1
	note F#, 1
	note A#, 1
;Bar 41
	note B_, 16
;Bar 42
	note F#, 16
;Bar 43
	note A_, 16
;Bar 44
	octave 5
	note C#, 10
	octave 4
	volume_envelope 12, 5
	note A_, 6
	sound_ret

; ============================================================================================================

Music_KantoGymLeaderFRLG_Ch3:
	note_type 12, 1, 4
	pitch_offset $0001
	sound_call Music_KantoGymLeaderFRLG_Ch3_Intro
;Bar 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type4
	octave 4
	note F#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	note F#, 1
;Bar 4
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type5
	octave 4
	note F#, 2
	octave 3
	note B_, 1
	note B_, 1
	octave 4
	note C_, 6
;Bar 5
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type5
	octave 4
	note C_, 2
;Bar 6
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type5
	octave 4
	note F#, 2
	octave 3
	note B_, 1
	rest 1
	octave 4
	note C_, 5
	rest 1
;Bar 7
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 8
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type4
	octave 4
	note C_, 5
	rest 1
;Bar 9
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 10
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type4
	octave 4
	note C#, 5
	rest 1
;Bar 11
Music_KantoGymLeaderFRLG_Ch3_loop:
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 12
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 13
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar13
;Bar 15
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 16
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 17
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar13
;Bar 19
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type6
	octave 4
	note E_, 4
;Bar 20
	sound_call Music_KantoGymLeaderFRLG_Ch2_Bar20
;Bar 21
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type6
	octave 4
	note E_, 4
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 22
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type6
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note C#, 2
;Bar 23
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type3
;Bar 26
	note B_, 1
	rest 1
	note B_, 1
	rest 7
	octave 4
	note E_, 4
	note F#, 2
;Bar 27
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type3
;Bar 30
	note B_, 1
	rest 1
	note B_, 1
	rest 7
	note A#, 6
;Bar 31
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note C#, 12
;Bar 32
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar32
;Bar 33
	note D#, 16
;Bar 34
	octave 3
	note B_, 16
;Bar 35
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar32
;Bar 36
	note C#, 8
	note E_, 8
;Bar 37
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type1
	octave 3
	note B_, 2
	octave 4
	note E_, 6
;Bar 39
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type1
	octave 3
	note B_, 2
	octave 4
	note F_, 6
;Bar 41
	note_type 6, 1, 4
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type2
	octave 4
	note C_, 4
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type2
	note A_, 4
	note_type 12, 1, 4
;Bar 42
	sound_call Music_KantoGymLeaderFRLG_Ch2_Bar42
;Bar 43
	note_type 6, 1, 4
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type2
	octave 4
	note C_, 4
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type2
	note A_, 4
	note_type 12, 1, 4
;Bar 44
	octave 4
	note C#, 2
	note A_, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note F#, 2
	octave 3
	note G_, 4
	sound_jump Music_KantoGymLeaderFRLG_Ch3_loop

Music_KantoGymLeaderFRLG_Ch3_Bar7:
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	sound_loop 4, Music_KantoGymLeaderFRLG_Ch3_Bar7
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Bar13:
	octave 3;
	note A_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	sound_loop 8, Music_KantoGymLeaderFRLG_Ch3_Bar13
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Type2:
	note B_, 1
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	sound_loop 4, Music_KantoGymLeaderFRLG_Ch3_Type2
	note B_, 4
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Type1:
	octave 3
	note B_, 2
	octave 4
	note F#, 2
	sound_loop 6, Music_KantoGymLeaderFRLG_Ch3_Type1
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Type3:
	note B_, 1;
	rest 1
	note B_, 1
	rest 13
	sound_loop 3, Music_KantoGymLeaderFRLG_Ch3_Type3
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Type4:
	octave 3;
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Type5:
	octave 3;
	note B_, 1
	note B_, 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Type6:
	octave 4;
	note D_, 4
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Bar32:
	octave 3
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note E_, 12
	sound_ret

Music_KantoGymLeaderFRLG_Ch3_Intro:
;Bar 1
	rest 12;
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note C#, 1
	note C_, 1
;Bar 2
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note F#, 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch2_Bar20:
	octave 3;
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note D_, 4
	octave 3
	note B_, 1
	rest 1
	octave 4
	note C#, 2
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch2_Bar42:
	note B_, 1;
	rest 1
	octave 4
	note B_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note G#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	sound_ret

; ============================================================================================================

Music_KantoGymLeaderFRLG_Ch4:
	toggle_noise $3
	drum_speed 12
;Bar 1
	rest 16
;Bar 2
	rest 16
;Bar 3
	drum_note 12, 4
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
;Bar 4
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	toggle_noise
	toggle_noise 1
	drum_note 5, 6
	toggle_noise
	toggle_noise 3
;Bar 5
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
	drum_note 9, 1
	drum_note 9, 1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
;Bar 6
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	toggle_noise
	toggle_noise 1
	drum_note 5, 6
	toggle_noise
	toggle_noise 3
;Bar 7
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
;Bar 8
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	toggle_noise
	toggle_noise 1
	drum_note 5, 6
	toggle_noise
	toggle_noise 3
;Bar 9
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
	drum_note 9, 1
	drum_note 9, 1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
;Bar 10
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	toggle_noise
	toggle_noise 1
	drum_note 5, 6
	toggle_noise
	toggle_noise 3
;Bar 11
Music_KantoGymLeaderFRLG_Ch4_loop:
Music_KantoGymLeaderFRLG_Ch4_bar11_18:
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 7, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	sound_loop 8, Music_KantoGymLeaderFRLG_Ch4_bar11_18
;Bar 19
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
	drum_note 7, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type1
;Bar 20
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type1
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
;Bar 21
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Bar22_23
;Bar 24
Music_KantoGymLeaderFRLG_Ch4_Bar24_25:
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	sound_loop 2, Music_KantoGymLeaderFRLG_Ch4_Bar24_25
;Bar 26
	drum_note 12, 4
	drum_note 3, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 12, 4
;Bar 27
	drum_note 12, 4
Music_KantoGymLeaderFRLG_Ch4_Bar27_28_29:
	drum_note 9, 2
	sound_loop 27, Music_KantoGymLeaderFRLG_Ch4_Bar27_28_29
	sound_call Music_KantoGymLeaderFRLG_Ch4_Bar29_38
;Bar 39
Music_KantoGymLeaderFRLG_Ch4_Bar39_44:
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
	drum_note 9, 1
	drum_note 9, 1
	sound_loop 12, Music_KantoGymLeaderFRLG_Ch4_Bar39_44
	sound_jump Music_KantoGymLeaderFRLG_Ch4_loop

Music_KantoGymLeaderFRLG_Ch4_Type1:
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3;
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch4_Type2:
	drum_note 9, 2;
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	sound_ret

Music_KantoGymLeaderFRLG_Ch4_Bar22_23:
;Bar 22;
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 1, 1
	drum_note 3, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 1
	drum_note 1, 1
	drum_note 3, 1
	drum_note 1, 1
;Bar 23
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	sound_ret

Music_KantoGymLeaderFRLG_Ch4_Bar29_38:
;Bar 29;
	toggle_noise
	toggle_noise 1
	drum_note 5, 2
	toggle_noise
	toggle_noise 3
	drum_note 9, 2
	drum_note 9, 2
;Bar 31
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 8
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_speed 12
;Bar 32
	drum_note 1, 2
	drum_note 11, 2
	drum_note 12, 4
	drum_note 12, 8
;Bar 33
	drum_note 5, 4
	drum_note 5, 6
	drum_note 5, 2
	drum_note 5, 4
;Bar 34
	drum_note 5, 6
	drum_note 5, 4
	drum_note 5, 2
	drum_note 5, 4
	rest 16
;Bar 36
	drum_note 11, 7
	drum_speed 6
	drum_note 11, 1
	drum_note 11, 1
	drum_speed 12
	drum_note 11, 2
	drum_note 11, 6
;Bar 37
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 2
	drum_note 11, 4
	drum_note 1, 2
;Bar 38
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	sound_ret

; ============================================================================================================
; ============================================================================================================
; ============================================================================================================
; ============================================================================================================

Music_KantoEliteFourFRLG:
	channel_count 4
	channel 1, Music_KantoEliteFourFRLG_Ch1
	channel 2, Music_KantoEliteFourFRLG_Ch2
	channel 3, Music_KantoEliteFourFRLG_Ch3
	channel 4, Music_KantoEliteFourFRLG_Ch4

Music_KantoEliteFourFRLG_Ch1:
	volume 7, 7
	transpose 0, 3
	duty_cycle $3
	pitch_offset $0001
	note_type 12, 14, 3
	tempo 104
	stereo_panning FALSE, TRUE
	sound_call Music_KantoGymLeaderFRLG_Ch1_Master_Intro
;Bar 3
Music_KantoEliteFourFRLG_Ch1_loop:
	transpose 0, 3
	duty_cycle $2
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 10
;Bar 4
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 4
	volume_envelope 13, 7
	note F_, 6
;Bar 5
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 10
;Bar 6
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 4
	volume_envelope 13, 7
	note F_, 6
;Bar 7
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	volume_envelope 4, 8
	note F#, 1
	rest 9
;Bar 8
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 4
	volume_envelope 13, 7
	note F_, 6
;Bar 9
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 10
;Bar 10
	sound_call Music_KantoGymLeaderFRLG_Ch1_Intro
	rest 4
	volume_envelope 11, 7
	note A_, 6
;Bar 11
	vibrato 8, 3, 4
	duty_cycle $3
	stereo_panning FALSE, TRUE
	note F#, 1
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar11
	stereo_panning TRUE, FALSE
	note C#, 1
;Bar 13
	octave 2
	stereo_panning FALSE, TRUE
	note F_, 1
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar13
	stereo_panning TRUE, FALSE
	note A_, 1
;Bar 15
	stereo_panning FALSE, TRUE
	note F#, 1
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar11
	stereo_panning TRUE, FALSE
	note C#, 1
;Bar 17
	octave 2
	stereo_panning FALSE, TRUE
	note F_, 1
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar13
	volume_envelope 12, 7
	stereo_panning TRUE, TRUE
	note A_, 1
;Bar 19
	stereo_panning FALSE, TRUE
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type1
	octave 2
	note C#, 2
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type1
	note B_, 1
	rest 1
	octave 2
	note C#, 2
	octave 1
	note B_, 2
	note A_, 2
	octave 2
	note C#, 2
;Bar 23
	stereo_panning FALSE, TRUE
	octave 1
	volume_envelope 11, 7
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	volume_envelope 11, 3
Music_KantoEliteFourFRLG_Ch1_Bar23_25:
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type2
	sound_loop 11, Music_KantoEliteFourFRLG_Ch1_Bar23_25
;Bar 26
	stereo_panning TRUE, TRUE
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type3
	note A_, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
;Bar 27
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	volume_envelope 11, 3
Music_KantoEliteFourFRLG_Ch1_Bar27_30:
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type2
	sound_loop 12, Music_KantoEliteFourFRLG_Ch1_Bar27_30
;Bar 30
	stereo_panning TRUE, TRUE
	octave 3
	volume_envelope 9, 3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Type3
	sound_call Music_KantoGymLeaderFRLG_Ch1_Bar31_44
	sound_jump Music_KantoEliteFourFRLG_Ch1_loop

; ============================================================================================================

Music_KantoEliteFourFRLG_Ch2:
	transpose 0, 3
	duty_cycle $1
	vibrato 8, 3, 4
	note_type 12, 14, 7
	stereo_panning TRUE, FALSE
;Bar 1
	sound_call Music_KantoGymLeaderFRLG_Ch2_Intro
;Bar 3
Music_KantoEliteFourFRLG_Ch2_loop:
	transpose 0, 3
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 10
;Bar 4
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 4
	octave 4
	volume_envelope 14, 7
	note C_, 4
;Bar 5
	note_type 6, 12, 7
	note D_, 2
	note C#, 1
	note C_, 1
	note_type 12, 12, 7
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 10
;Bar 6
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 4
	volume_envelope 14, 7
	note A#, 6
;Bar 7
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	volume_envelope 5, 8
	note B_, 1
	rest 9
;Bar 8
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 4
	octave 4
	volume_envelope 14, 7
	note C_, 6
;Bar 9
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 10
;Bar 10
	sound_call Music_KantoGymLeaderFRLG_Ch2_Type1
	rest 4
	octave 4
	volume_envelope 14, 7
	note C#, 6
;Bar 11
	stereo_panning TRUE, TRUE
	duty_cycle $1
	vibrato 8, 2, 2
	sound_call Music_KantoGymLeaderFRLG_Ch2_Main
	sound_jump Music_KantoEliteFourFRLG_Ch2_loop

; ============================================================================================================

Music_KantoEliteFourFRLG_Ch3:
	transpose 0, 3
	note_type 12, 1, 4
	pitch_offset $0001
	sound_call Music_KantoGymLeaderFRLG_Ch3_Intro
;Bar 3
Music_KantoEliteFourFRLG_Ch3_loop:
	transpose 0, 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type4
	octave 4
	note F#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	note F#, 1
;Bar 4
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type5
	octave 4
	note F#, 2
	octave 3
	note B_, 1
	note B_, 1
	octave 4
	note C_, 6
;Bar 5
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type5
	octave 4
	note C_, 2
;Bar 6
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type5
	octave 4
	note F#, 2
	octave 3
	note B_, 1
	rest 1
	octave 4
	note C_, 5
	rest 1
;Bar 7
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 8
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type4
	octave 4
	note C_, 5
	rest 1
;Bar 9
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 10
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type4
	octave 4
	note C#, 5
	rest 1
;Bar 11
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 12
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 13
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar13
;Bar 15
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 16
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar7
;Bar 17
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar13
;Bar 19
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type6
	octave 4
	note E_, 4
;Bar 20
	sound_call Music_KantoGymLeaderFRLG_Ch2_Bar20
;Bar 21
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type6
	octave 4
	note E_, 4
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 22
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type6
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note C#, 2
;Bar 23
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type3
;Bar 26
	note B_, 1
	rest 1
	note B_, 1
	rest 7
	octave 4
	note E_, 4
	note F#, 2
;Bar 27
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type3
;Bar 30
	note B_, 1
	rest 1
	note B_, 1
	rest 7
	note A#, 6
;Bar 31
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note C#, 12
;Bar 32
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar32
;Bar 33
	note D#, 16
;Bar 34
	octave 3
	note B_, 16
;Bar 35
	sound_call Music_KantoGymLeaderFRLG_Ch3_Bar32
;Bar 36
	note C#, 8
	note E_, 8
;Bar 37
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type1
	octave 3
	note B_, 2
	octave 4
	note E_, 6
;Bar 39
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type1
	octave 3
	note B_, 2
	octave 4
	note F_, 6
;Bar 41
	note_type 6, 1, 4
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type2
	octave 4
	note C_, 4
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type2
	note A_, 4
	note_type 12, 1, 4
;Bar 42
	sound_call Music_KantoGymLeaderFRLG_Ch2_Bar42
;Bar 43
	note_type 6, 1, 4
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type2
	octave 4
	note C_, 4
	octave 3
	sound_call Music_KantoGymLeaderFRLG_Ch3_Type2
	note A_, 4
	note_type 12, 1, 4
;Bar 44
	octave 4
	note C#, 2
	note A_, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note F#, 2
	octave 3
	note G_, 4
	sound_jump Music_KantoEliteFourFRLG_Ch3_loop

; ============================================================================================================

Music_KantoEliteFourFRLG_Ch4:
	toggle_noise $3
	drum_speed 12
;Bar 1
	rest 16
;Bar 2
	rest 16
;Bar 3
Music_KantoEliteFourFRLG_Ch4_loop:
	drum_note 12, 4
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
;Bar 4
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	drum_note 6, 6
;Bar 5
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 6, 2
	drum_note 9, 1
	drum_note 9, 1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
;Bar 6
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	drum_note 6, 6
;Bar 7
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
;Bar 8
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	drum_note 6, 6
;Bar 9
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 6, 2
	drum_note 9, 1
	drum_note 9, 1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
;Bar 10
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type2
	drum_note 9, 2
	drum_note 6, 6
;Bar 11
Music_KantoEliteFourFRLG_Ch4_bar11_18:
	drum_note 6, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 7, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	sound_loop 8, Music_KantoEliteFourFRLG_Ch4_bar11_18
;Bar 19
	drum_note 6, 2
	drum_note 7, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type1
;Bar 20
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type1
	drum_note 6, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 6, 2
;Bar 21
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Type1
	sound_call Music_KantoGymLeaderFRLG_Ch4_Bar22_23
;Bar 24
Music_KantoEliteFourFRLG_Ch4_Bar24_25:
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	sound_loop 2, Music_KantoEliteFourFRLG_Ch4_Bar24_25
;Bar 26
	drum_note 12, 4
	drum_note 3, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 12, 4
;Bar 27
	drum_note 12, 4
Music_KantoEliteFourFRLG_Ch4_Bar27_28_29:
	drum_note 9, 2
	sound_loop 27, Music_KantoEliteFourFRLG_Ch4_Bar27_28_29
	sound_call Music_KantoGymLeaderFRLG_Ch4_Bar29_38
;Bar 39
Music_KantoEliteFourFRLG_Ch4_Bar39_44:
	drum_note 9, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 6, 2
	drum_note 9, 1
	drum_note 9, 1
	sound_loop 12, Music_KantoEliteFourFRLG_Ch4_Bar39_44
	sound_jump Music_KantoEliteFourFRLG_Ch4_loop



