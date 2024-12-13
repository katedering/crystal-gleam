;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_BattleFrontierBrainDPPt:
	channel_count 4
	channel 1, Music_BattleFrontierBrainDPPt_Ch1
	channel 2, Music_BattleFrontierBrainDPPt_Ch2
	channel 3, Music_BattleFrontierBrainDPPt_Ch3
	channel 4, Music_BattleFrontierBrainDPPt_Ch4

Music_BattleFrontierBrainDPPt_Ch1:
	duty_cycle $0
	note_type 12, 12, 7
	tempo 100
;Bar 1
	octave 4
	note A_, 1
	note A#, 1
	note B_, 2
	note A_, 1
	note A#, 1
	note B_, 2
	note A_, 1
	note A#, 1
	note B_, 2
	note A_, 1
	note A#, 1
	note B_, 2
;Bar 2
	note A_, 1
	note A#, 1
	note B_, 2
	note A_, 1
	note A#, 1
	note B_, 2
	note A_, 1
	note A#, 1
	note B_, 2
	note A_, 1
	note A#, 1
	note B_, 2
;Bar 3
Music_BattleFrontierBrainDPPt_Ch1_loop:
	volume_envelope 12, 3
	duty_cycle $3
	rest 16
	rest 4
;Bar 4
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar4
;Bar 5
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar5
;Bar 6
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar4
;Bar 7
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar5
;Bar 8
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar4
;Bar 9
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar5
;Bar 10
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar4
;Bar 11
	volume_envelope 13, 7
	octave 5
	note F#, 4
	octave 3
	note F#, 1
	rest 1
	note B_, 2
	volume_envelope 8, 7
	note B_, 1
	rest 1
	volume_envelope 13, 7
	note F#, 1
	rest 1
	octave 4
	note F#, 1
	note F#, 1
	octave 3
	note F#, 1
	rest 1
;Bar 12
	octave 4
	note F#, 4
	note F#, 1
	note F#, 1
	rest 2
	volume_envelope 8, 7
	note F#, 1
	rest 1
	volume_envelope 13, 7
	note F#, 6
;Bar 13
	volume_envelope 12, 7
	duty_cycle $2
	octave 3
	note F#, 4
	note E_, 4
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note E_, 3
;Bar 14
	rest 1
	note C_, 1
	rest 1
	note E_, 4
	note D_, 1
	rest 1
	note F#, 4
	note E_, 1
	rest 1
;Bar 15
	note G#, 4
	note E_, 1
	rest 1
	note F#, 4
	octave 2
	note B_, 6
;Bar 16
	octave 5
	note B_, 1
	note A_, 1
	note E_, 1
	note C_, 1
	octave 4
	note B_, 1
	note A_, 1
	note E_, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note E_, 1
	note F#, 1
	octave 4
	note C_, 1
	note E_, 1
	note F#, 1
	note B_, 1
	octave 5
	note D_, 1
;Bar 17
	octave 3
	note F#, 4
	note E_, 4
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 3
;Bar 18
	rest 1
	octave 3
	note B_, 1
	rest 1
	note E_, 4
	note F#, 1
	rest 1
	note E_, 4
	note A_, 1
	rest 1
;Bar 19
	note G#, 4
	note A_, 1
	rest 1
	note B_, 4
	note E_, 6
;Bar 20
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note E_, 1
	note A_, 1
	octave 5
	note E_, 1
	note B_, 1
	octave 6
	note C_, 1
	octave 5
	note A_, 1
	note D_, 1
	octave 4
	note B_, 1
	note A_, 1
	note E_, 1
	octave 3
	note B_, 1
	note A_, 1
	note E_, 1
;Bar 21
	duty_cycle $3
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
	volume_envelope 12, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	octave 4
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 2
	rest 1
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 4, 7
	note D#, 1
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 1
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 4, 7
	note F#, 1
;Bar 22
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 4, 7
	note G#, 1
	volume_envelope 12, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 4, 7
	note G#, 1
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 4, 7
	note E_, 2
	rest 1
	octave 3
	volume_envelope 12, 7
	note B_, 1
	volume_envelope 4, 7
	note B_, 1
	volume_envelope 12, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	volume_envelope 12, 7
	note G_, 1
	volume_envelope 4, 7
	note G_, 1
;Bar 23
	volume_envelope 12, 7
	note A_, 1
	volume_envelope 3, 7
	note A_, 1
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	octave 4
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 7, 7
	note F_, 1
	rest 1
	octave 3
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	octave 4
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 7, 7
	note F_, 1
	rest 1
;Bar 24
	octave 3
	volume_envelope 12, 7
	note A_, 1
	volume_envelope 3, 7
	note A_, 1
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	octave 4
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	octave 3
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 7, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	octave 4
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 7, 7
	note F_, 1
	rest 1
;Bar 25
Music_BattleFrontierBrainDPPt_Ch1_Bar25_26:
	octave 2
	volume_envelope 12, 7
	note E_, 2
	note A_, 2
	note B_, 2
	note E_, 2
	note A_, 2
	note B_, 2
	octave 3
	note D_, 2
	note E_, 2
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch1_Bar25_26
;Bar 26
;Bar 27
	octave 2
	note F_, 2
	note A#, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	note A#, 2
	octave 3
	note C_, 2
	note D#, 2
	note F_, 2
;Bar 28
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	note D_, 2
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	note D_, 2
	note F_, 2
	note G_, 2
;Bar 29
Music_BattleFrontierBrainDPPt_Ch1_Bar29_30:
	volume_envelope 14, 7
	note G#, 1
	rest 1
	note G#, 1
	rest 3
	volume_envelope 12, 7
	note G_, 6
	note F#, 6
;Bar 30
	note F_, 6
	note E_, 4
	note D#, 4
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch1_Bar29_30
;Bar 33
Music_BattleFrontierBrainDPPt_Ch1_Bar33_34:
	octave 4
	note B_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note A_, 2
	note B_, 2
	octave 5
	note D_, 2
	note E_, 2
;Bar 34
	note C_, 2
	octave 4
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G#, 2
	note A_, 2
	note G_, 2
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch1_Bar33_34
;Bar 37 ;pitched-up
	volume_envelope 12, 7
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Ch3_Bar37_40
;Bar 41
	duty_cycle $1
	vibrato 0, 4, 2
	octave 2
	rest 1
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 13, 7
	note B_, 6
	octave 3
	note E_, 4
	note G#, 4
;Bar 42
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar42_43
;Bar 44
	note F#, 1
	note F#, 2
	note E_, 4
	note B_, 4
	octave 4
	note C#, 4
;Bar 45
	octave 3
	note A_, 4
	note E_, 4
	note B_, 4
	octave 4
	note C#, 2
	octave 3
	note B_, 3
;Bar 46
	note B_, 1
	note B_, 2
	note A_, 4
	note G#, 4
	note A_, 4
;Bar 47
	octave 4
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
;Bar 48
	note G_, 4
	note F#, 4
	note E_, 4
	note F#, 2
	note E_, 5
;Bar 49
	note E_, 1
	octave 2
	note B_, 4
	octave 3
	note E_, 4
	note G#, 4
;Bar 50
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Bar42_43
;Bar 52
	note F#, 1
	note F#, 2
	note E_, 4
	note D#, 4
	note E_, 4
;Bar 53
	note B_, 3
	note B_, 1
	note E_, 3
	note E_, 1
	note F#, 3
	note F#, 1
	octave 2
	note B_, 2
	octave 3
	note E_, 4
;Bar 54
	note F#, 2
	note G#, 2
	note A_, 2
	note G#, 2
	note F#, 2
	note G#, 2
	note A_, 2
;Bar 55
	note B_, 3
	note B_, 1
	note E_, 3
	note E_, 1
	note F#, 3
	note F#, 1
	octave 2
	note B_, 2
	octave 3
	note E_, 4
;Bar 56
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
;Bar 57
	duty_cycle $3
	vibrato 0, 0, 0
	volume_envelope 11, 8
	note G#, 8
	note B_, 8
;Bar 58
	note A_, 8
	note F#, 8
;Bar 59
	note E_, 8
	note A_, 8
;Bar 60
	note G#, 8
	octave 2
	note B_, 8
;Bar 61
	note E_, 8
	note G#, 8
;Bar 62
	note F#, 2
	note G_, 2
	note A_, 12
;Bar 63
	note G#, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note B_, 16
;Bar 64
	note G_, 4
	octave 3
	note C_, 4
;Bar 65
	octave 2
	note B_, 8
	duty_cycle $2
	volume_envelope 15, 5
	octave 1
	note G#, 16
;Bar 66
	octave 2
	note C_, 8
;Bar 67
	note D_, 16
;Bar 68
	note F_, 16
;Bar 69
	rest 16
	rest 16
	rest 16
	rest 16
	sound_jump Music_BattleFrontierBrainDPPt_Ch1_loop

Music_BattleFrontierBrainDPPt_Ch1_Bar4:
	octave 4;
	note E_, 2
	note A_, 4
	note E_, 2
	octave 5
	note E_, 1
	note E_, 1
	octave 4
	note E_, 2
	sound_ret

Music_BattleFrontierBrainDPPt_Ch1_Bar5:
	octave 5
	note E_, 4
	note E_, 1
	note E_, 1
	rest 14
	sound_ret

Music_BattleFrontierBrainDPPt_Ch1_Ch3_Bar37_40:
	octave 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	note E_, 4
	octave 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	note F_, 4
;Bar 38
	octave 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	note G_, 4
	octave 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	note G#, 4
;Bar 39
	octave 2
	note E_, 1
	rest 1
	octave 3
	note E_, 2
	octave 2
	note E_, 1
	rest 1
	octave 3
	note F_, 2
	octave 2
	note E_, 1
	rest 1
	octave 3
	note F#, 2
	octave 2
	note E_, 1
	rest 1
	octave 3
	note G_, 2
;Bar 40
	octave 2
	note E_, 1
	rest 1
	octave 3
	note G#, 2
	octave 2
	note E_, 1
	rest 1
	octave 3
	note A_, 2
	octave 2
	note E_, 1
	rest 1
	octave 3
	note A#, 2
	octave 2
	note E_, 1
	rest 1
	octave 3
	note B_, 2
	sound_ret

Music_BattleFrontierBrainDPPt_Ch1_Bar42_43:
	note A_, 4
	note G#, 4
	note E_, 4
	octave 4
	note C#, 4
;Bar 43
	octave 3
	note B_, 6
	note E_, 2
	note E_, 4
	octave 2
	note B_, 2
	octave 3
	note F#, 3
	sound_ret

; ============================================================================================================

Music_BattleFrontierBrainDPPt_Ch2:
	duty_cycle $1
	note_type 12, 13, 7
	vibrato 8, 2, 4
;Bar 1
	rest 16
	duty_cycle $1
	rest 2
;Bar 2
	octave 5
	note E_, 3
	octave 4
	note B_, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note E_, 1
	octave 3
	note B_, 1
	note A_, 1
	note G#, 1
	note E_, 1
	octave 2
	note B_, 1
;Bar 3
Music_BattleFrontierBrainDPPt_Ch2_Bar3_4:
	octave 3
	note A_, 2
	note G#, 2
	note E_, 2
	octave 2
	note B_, 4
	note B_, 4
	note B_, 4
;Bar 4
	note A_, 4
	note A_, 2
	note B_, 2
	octave 3
	note E_, 2
	note F#, 2
	note G#, 2
	sound_loop 4, Music_BattleFrontierBrainDPPt_Ch2_Bar3_4
;Bar 11
	rest 4
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	volume_envelope 8, 7
	note E_, 1
	rest 1
	octave 3
	volume_envelope 13, 7
	note B_, 1
	rest 1
	octave 4
	note B_, 1
	note B_, 1
	octave 3
	note B_, 1
	rest 1
;Bar 12
	octave 4
	note B_, 4
	note B_, 1
	note B_, 1
	rest 2
	volume_envelope 8, 7
	note B_, 1
	rest 1
	volume_envelope 13, 7
	note B_, 6
Music_BattleFrontierBrainDPPt_Ch2_Bar13_16:
;Bar 13
	volume_envelope 13, 7
	note E_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	note G#, 1
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 1
	volume_envelope 13, 7
	note B_, 1
	rest 1
	volume_envelope 7, 7
	note B_, 1
	rest 1
	volume_envelope 5, 7
	note B_, 1
	rest 3
;Bar 14
	volume_envelope 13, 7
	note A_, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
;Bar 15
	volume_envelope 7, 7
	note G#, 1
	rest 1
	volume_envelope 5, 7
	note G#, 1
	rest 3
	volume_envelope 13, 7
	note G#, 1
	note A_, 1
	note B_, 1
	rest 1
	volume_envelope 7, 7
	note B_, 1
	rest 1
	octave 4
	volume_envelope 13, 7
	note B_, 1
	rest 1
	volume_envelope 7, 7
	note B_, 1
	rest 1
;Bar 16
	volume_envelope 5, 7
	note B_, 1
	rest 1
	note B_, 1
	rest 13
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch2_Bar13_16
;Bar 21
	duty_cycle $2
	octave 3
	volume_envelope 12, 8
	note E_, 6
	note F#, 6
	note E_, 4
;Bar 22
	note G#, 8
	note B_, 8
;Bar 23
	octave 4
	note D_, 8
	note C_, 8
;Bar 24
	octave 3
	note B_, 6
	note A_, 6
	octave 4
	note C_, 4
;Bar 25
	octave 3
	volume_envelope 12, 8
	note B_, 16
	note B_, 16
;Bar 27
	octave 4
	note C_, 16
;Bar 28
	note D_, 16
;Bar 29
	sound_call Music_BattleFrontierBrainDPPt_Ch2_Bar29
;Bar 30
	sound_call Music_BattleFrontierBrainDPPt_Ch2_Bar30
;Bar 31
	sound_call Music_BattleFrontierBrainDPPt_Ch2_Bar29
;Bar 32
	sound_call Music_BattleFrontierBrainDPPt_Ch2_Bar30
;Bar 33
	sound_call Music_BattleFrontierBrainDPPt_Ch2_Bar29
;Bar 34
	sound_call Music_BattleFrontierBrainDPPt_Ch2_Bar30
;Bar 35
	sound_call Music_BattleFrontierBrainDPPt_Ch2_Bar29
;Bar 36
	note C#, 6
	note D_, 4
	note D#, 4
;Bar 37
	volume_envelope 12, 8
	note E_, 16
	note E_, 8
	volume_envelope 12, 7
	note E_, 8
;Bar 39
	duty_cycle $0
	volume_envelope 13, 7
	rest 2
	octave 2
	note C_, 2
	rest 2
	note C#, 2
	rest 2
	note D_, 2
	rest 2
	note D#, 2
;Bar 40
	rest 2
	note E_, 2
	rest 2
	note F_, 2
	rest 2
	note F#, 2
	rest 2
	note G_, 2
Music_BattleFrontierBrainDPPt_Ch2_Bar41_47:
	volume_envelope 12, 8
;Bar 41
	rest 2
	octave 4
	note E_, 6
	note F#, 4
	note G#, 4
;Bar 42
	note A_, 2
	note G#, 6
	note A_, 4
	note B_, 4
;Bar 43
	note G#, 16
;Bar 44
	note E_, 16
;Bar 45
	rest 2
	note E_, 6
	note F#, 4
	note G#, 4
;Bar 46
	note A_, 2
	note G#, 4
	note A_, 4
	note B_, 6
;Bar 47
	octave 5
	note E_, 4
	rest 2
	note E_, 4
	rest 2
	note E_, 4
;Bar 48
	volume_envelope 11, 8
	rest 2
	octave 4
	note E_, 4
	rest 2
	note E_, 3
	rest 1
	note E_, 3
	rest 1
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch2_Bar41_47
;Bar 57
	volume_envelope 10, 7
	note E_, 1
	rest 1
	octave 3
	volume_envelope 13, 7
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	note G#, 1
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 1
	volume_envelope 13, 7
	note B_, 1
	rest 1
	volume_envelope 7, 7
	note B_, 1
	rest 5
;Bar 58
	volume_envelope 13, 7
	note A_, 1
	rest 1
	octave 5
	note C#, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
;Bar 59
	volume_envelope 7, 7
	note G#, 1
	rest 1
	volume_envelope 13, 7
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 7, 7
	note E_, 1
	rest 1
	octave 4
	volume_envelope 13, 7
	note B_, 1
	rest 1
	octave 5
	note C#, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
;Bar 60
	volume_envelope 7, 7
	note B_, 1
	rest 1
	volume_envelope 13, 7
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 1
	octave 3
	volume_envelope 13, 7
	note B_, 1
	rest 1
	volume_envelope 7, 7
	note B_, 1
	rest 3
;Bar 61
	duty_cycle $2
	octave 2
	volume_envelope 11, 8
	note G#, 8
	note B_, 8
;Bar 62
	note A_, 2
	note B_, 2
	octave 3
	note C_, 12
;Bar 63
	octave 2
	note B_, 2
	note A_, 2
	note B_, 2
	octave 3
	note C_, 2
	note D_, 16
;Bar 64
	note C_, 4
	note F_, 4
;Bar 65
	volume_envelope 10, 8
	note E_, 16
;Bar 66
	note E_, 16
;Bar 67
	note E_, 16
;Bar 68
	volume_envelope 11, 7
	note E_, 16
;Bar 69
	rest 16
;Bar 70
	rest 16
;Bar 71
	sound_jump Music_BattleFrontierBrainDPPt_Ch2

Music_BattleFrontierBrainDPPt_Ch2_Bar29:
	octave 4
	volume_envelope 15, 7;
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	volume_envelope 13, 7
	note D#, 6
	note D_, 6
	sound_ret

Music_BattleFrontierBrainDPPt_Ch2_Bar30:
	note C#, 6;
	note C_, 4
	octave 3
	note B_, 4
	sound_ret

; ============================================================================================================

Music_BattleFrontierBrainDPPt_Ch3:
	note_type 12, 1, 7
	volume 6, 6
;Bar 1
	rest 16
	rest 13
;Bar 2
	octave 2
	note E_, 1
	note F#, 1
	note G#, 1
Music_BattleFrontierBrainDPPt_Ch3_loop:
;Bar 3
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar3
;Bar 4
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar4
;Bar 5
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar3
;Bar 6
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar4
;Bar 7
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar3
;Bar 8
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar4
;Bar 9
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar3
;Bar 10
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar4
;Bar 11
	octave 1
	volume 7, 7
	note_type 12, 2, 7
	note B_, 16
	note B_, 8
;Bar 12
	volume_envelope 1, 6
	note B_, 1
	octave 2
	note E_, 1
	note F#, 1
	octave 1
	note B_, 1
	octave 2
	note E_, 1
	note F#, 1
	note A_, 1
	note B_, 1
;Bar 13
Music_BattleFrontierBrainDPPt_Ch3_Bar13_14:
	note E_, 4
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	rest 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
;Bar 14
	note C_, 4
	note G_, 2
	note C_, 2
	rest 2
	note D_, 2
	note A_, 2
	note D_, 2
	sound_loop 4, Music_BattleFrontierBrainDPPt_Ch3_Bar13_14
;Bar 21
	octave 1
	note A_, 2
	octave 3
	note E_, 2
	octave 1
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
;Bar 22
	note E_, 2
	octave 3
	note G#, 2
	octave 2
	note E_, 2
	octave 3
	note G#, 2
	octave 2
	note C_, 2
	octave 3
	note E_, 2
	octave 2
	note C_, 2
	octave 3
	note E_, 2
;Bar 23
Music_BattleFrontierBrainDPPt_Ch3_Bar23:
	octave 2
	note F_, 2
	octave 4
	note C_, 2
	octave 2
	note F_, 2
	octave 4
	note C_, 2
	octave 2
	note F_, 2
	note C_, 2
	note F_, 2
	octave 4
	note C_, 2
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch3_Bar23
;Bar 25
Music_BattleFrontierBrainDPPt_Ch3_Bar25_26:
	octave 2
	note E_, 2
	note B_, 2
	sound_loop 8, Music_BattleFrontierBrainDPPt_Ch3_Bar25_26
;Bar 27
Music_BattleFrontierBrainDPPt_Ch3_Bar27:
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	sound_loop 4, Music_BattleFrontierBrainDPPt_Ch3_Bar27
;Bar 28
Music_BattleFrontierBrainDPPt_Ch3_Bar28:
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	sound_loop 4, Music_BattleFrontierBrainDPPt_Ch3_Bar28
;Bar 29
Music_BattleFrontierBrainDPPt_Ch3_Bar29_30:
	octave 2
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	octave 3
	note C_, 6
	octave 2
	note B_, 6
;Bar 30
	note A#, 6
	note A_, 4
	note G#, 4
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch3_Bar29_30
;Bar 33
Music_BattleFrontierBrainDPPt_Ch3_Bar33_34:
	note E_, 2
	octave 3
	note B_, 2
	octave 2
	note E_, 2
	octave 3
	note A#, 2
	octave 2
	note E_, 2
	octave 3
	note A_, 2
	octave 2
	note E_, 2
	octave 3
	note G#, 2
;Bar 34
	octave 2
	note E_, 2
	octave 3
	note G_, 2
	octave 2
	note E_, 2
	octave 3
	note F#, 2
	octave 2
	note E_, 2
	octave 3
	note F_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch3_Bar33_34
;Bar 37
	sound_call Music_BattleFrontierBrainDPPt_Ch1_Ch3_Bar37_40
;Bar 41
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar41_42
;Bar 43
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar43_44
;Bar 45
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar45_46
;Bar 47
	octave 2
	note C_, 2
	note A_, 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	note A_, 2
	note C_, 2
	octave 3
	note C_, 2
;Bar 48
	octave 2
	note D_, 2
	note A_, 2
	note D_, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	note A_, 2
	note D_, 2
	octave 3
	note D_, 2
;Bar 49
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar41_42
;Bar 51
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar43_44
;Bar 53
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar45_46
;Bar 55
	octave 2
	note C_, 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note C_, 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
;Bar 56
	note D_, 2
	note A_, 2
	note D_, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	note A_, 2
	note D_, 2
	octave 3
	note D_, 2
;Bar 57
Music_BattleFrontierBrainDPPt_Ch3_Bar57_58:
	octave 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	note B_, 2
	octave 3
	note E_, 2
;Bar 58
	octave 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note E_, 2
	octave 3
	note D_, 2
	note E_, 2
	sound_loop 6, Music_BattleFrontierBrainDPPt_Ch3_Bar57_58
;Bar 69
	volume 6, 6
	volume_envelope 1, 7
	octave 2
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar3
;Bar 70
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar4
;Bar 71
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar3
;Bar 72
	sound_call Music_BattleFrontierBrainDPPt_Ch3_Bar4
	sound_jump Music_BattleFrontierBrainDPPt_Ch3_loop
	sound_ret

Music_BattleFrontierBrainDPPt_Ch3_Bar3:
	note_type 3, 1, 7
	note E_, 3
	volume_envelope 2, 7
	note E_, 1
	sound_loop 4, Music_BattleFrontierBrainDPPt_Ch3_Bar3
	note_type 12, 1, 7
	octave 3
	note D_, 2
	note E_, 4
	note D_, 2
	note E_, 4
	sound_ret

Music_BattleFrontierBrainDPPt_Ch3_Bar4:
	octave 2;
	note A_, 2
	octave 3
	note E_, 4
	octave 2
	note A_, 2
	note B_, 2
	note F#, 2
	note A_, 2
	note D_, 2
	sound_ret

Music_BattleFrontierBrainDPPt_Ch3_Bar41_42:
	octave 2
	note E_, 2
	note B_, 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	note B_, 2
	note E_, 2
	octave 3
	note E_, 2
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch3_Bar41_42
	sound_ret

Music_BattleFrontierBrainDPPt_Ch3_Bar43_44:
	octave 2
	note D_, 2
	note G#, 2
	note D_, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	note G#, 2
	note D_, 2
	octave 3
	note D_, 2
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch3_Bar43_44
	sound_ret

Music_BattleFrontierBrainDPPt_Ch3_Bar45_46:
	octave 2
	note C#, 2
	note A_, 2
	note C#, 2
	octave 3
	note C#, 2
	octave 2
	note C#, 2
	note A_, 2
	note C#, 2
	octave 3
	note C#, 2
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch3_Bar45_46
	sound_ret

; ============================================================================================================

Music_BattleFrontierBrainDPPt_Ch4:
	toggle_noise $3
	drum_speed 12
;Bar 1
	rest 16
;Bar 2
	drum_note 7, 6
	drum_note 7, 6
	drum_note 7, 4
;Bar 3
Music_BattleFrontierBrainDPPt_Ch4_loop:
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar3
;Bar 4
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 5
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar3
;Bar 6
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 4
;Bar 7
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar3
;Bar 8
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 9
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar3
;Bar 10
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 11
	drum_note 12, 16
	drum_note 12, 8
;Bar 12
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
;Bar 13
Music_BattleFrontierBrainDPPt_Ch4_Bar13:
	drum_note 4, 2
	drum_note 9, 2
	sound_loop 48, Music_BattleFrontierBrainDPPt_Ch4_Bar13
;Bar 25
	rest 16
	rest 16
	rest 16
;Bar 28
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 4
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
;Bar 29
	drum_note 3, 2
	drum_note 3, 2
	rest 16
	rest 8
;Bar 30
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
;Bar 31
	drum_note 3, 2
	drum_note 3, 2
	rest 16
	rest 8
;Bar 32
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
;Bar 33
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar33
;Bar 34
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar34
;Bar 35
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar33
;Bar 36
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar34
;Bar 37
Music_BattleFrontierBrainDPPt_Ch4_Bar37:
	drum_note 3, 2
	drum_note 3, 2
	drum_note 7, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 7, 4
	sound_loop 2, Music_BattleFrontierBrainDPPt_Ch4_Bar37
;Bar 39
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
;Bar 40
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
;Bar 41
	toggle_noise
	toggle_noise 1
	drum_note 6, 4
	toggle_noise
	toggle_noise 3
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
;Bar 42
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 43
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar43
;Bar 44
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 45
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar43
;Bar 46
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 47
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar43
;Bar 48
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 49
	drum_note 7, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
;Bar 50
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 51
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar43
;Bar 52
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 53
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar43
;Bar 54
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 55
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 9, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 9, 4
;Bar 56
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar4
;Bar 57
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar33
;Bar 58
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar34
;Bar 59
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar33
;Bar 60
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Bar34
;Bar 61
	drum_note 12, 4
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Type1
;Bar 62
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Type1
	toggle_noise
	toggle_noise 1
	drum_note 6, 4
	toggle_noise
	toggle_noise 3
;Bar 63
	drum_note 12, 4
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Type1
;Bar 64
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Type1
	toggle_noise
	toggle_noise 1
	drum_note 6, 4
	toggle_noise
	toggle_noise 3
;Bar 65
	drum_note 12, 4
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Type1
;Bar 66
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Type1
	drum_note 11, 2
	drum_note 3, 2
;Bar 67
	sound_call Music_BattleFrontierBrainDPPt_Ch4_Type1
	drum_note 11, 2
	drum_note 3, 2
;Bar 68
	drum_note 11, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
;Bar 69
	drum_note 12, 16
;Bar 70
	rest 16
	rest 16
;Bar 72
	drum_note 5, 6
	drum_note 5, 6
	drum_note 5, 4
	sound_jump Music_BattleFrontierBrainDPPt_Ch4_loop

Music_BattleFrontierBrainDPPt_Ch4_Bar3:
	drum_note 12, 4;
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

Music_BattleFrontierBrainDPPt_Ch4_Bar4:
	drum_note 4, 2;
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 2
	drum_note 3, 2
	sound_ret

Music_BattleFrontierBrainDPPt_Ch4_Bar33:
	drum_note 3, 1;
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	sound_ret

Music_BattleFrontierBrainDPPt_Ch4_Bar34:
	drum_note 3, 2;
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	sound_ret

Music_BattleFrontierBrainDPPt_Ch4_Bar43:
	drum_note 4, 2;
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

Music_BattleFrontierBrainDPPt_Ch4_Type1:
	drum_note 11, 2;
	drum_note 3, 2
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	drum_note 3, 2
	sound_ret
