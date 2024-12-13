;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_WildBattleDPPt:
	channel_count 4
	channel 1, Music_WildBattleDPPt_Ch1
	channel 2, Music_WildBattleDPPt_Ch2
	channel 3, Music_WildBattleDPPt_Ch3
	channel 4, Music_WildBattleDPPt_Ch4

Music_WildBattleDPPt_Ch1:
	volume 6, 6
	duty_cycle $3
	note_type 12, 10, 7
	tempo 104
;Bar 1
	octave 3
	volume_envelope 11, 7
	note G_, 1
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
	note C_, 1
;Bar 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note F#, 1
;Bar 3
    duty_cycle $0
	note G_, 1
	volume_envelope 5, 7
	note G_, 3
	rest 2
	octave 3
	volume_envelope 11, 7
	note C_, 1
	volume_envelope 5, 7
	note C_, 3
	rest 2
	volume_envelope 11, 7
	note C#, 1
	volume_envelope 5, 7
	note C#, 3
;Bar 4
	rest 8
	octave 2
	volume_envelope 11, 7
	note G_, 1
	volume_envelope 5, 7
	note G_, 3
	rest 4
;Bar 5
	volume_envelope 11, 7
	note G#, 1
	volume_envelope 5, 7
	note G#, 3
	rest 2
	octave 3
	volume_envelope 11, 7
	note C#, 1
	volume_envelope 5, 7
	note C#, 3
	rest 2
	volume_envelope 11, 7
	note D#, 1
	volume_envelope 5, 7
	note D#, 3
;Bar 6
	rest 8
	octave 2
	volume_envelope 11, 7
	note G#, 8
;Bar 7
	octave 3
	volume_envelope 12, 7
	note G_, 1
	volume_envelope 6, 7
	note G_, 3
	rest 2
	octave 4
	volume_envelope 12, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 3
	rest 2
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 3
;Bar 8
	rest 8
	octave 3
	volume_envelope 11, 7
	note G_, 1
	volume_envelope 6, 7
	note G_, 3
	rest 4
;Bar 9
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 3
	rest 2
	octave 4
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 3
	rest 2
	volume_envelope 11, 7
	note D#, 1
	volume_envelope 5, 7
	note D#, 1
	rest 10
;Bar 10
	volume_envelope 7, -7
	note G#, 6
    volume_envelope 11, 7
    note G#, 2
;Bar 11
Music_WildBattleDPPt_Ch1_loop:
	volume_envelope 10, 7
	duty_cycle $3
	rest 4
	octave 3
	note E_, 6
	note C_, 2
	note G_, 2
	octave 4
	note C_, 2
;Bar 12
	sound_call Music_WildBattleDPPt_Ch1_Type1
	octave 4
	note C_, 2
;Bar 13
	note C#, 2
	rest 2
	octave 3
	note C#, 4
	rest 4
	note D#, 4
;Bar 14
	rest 4
	note F_, 4
	note G#, 8
;Bar 15
	rest 6
	note E_, 4
	note C_, 2
	note G_, 2
	octave 4
	note C_, 2
;Bar 16
	sound_call Music_WildBattleDPPt_Ch1_Type1
	note A_, 2
;Bar 17
	note F_, 1
	rest 3
	note F_, 4
	rest 4
	note D#, 4
;Bar 18
	rest 4
	note C#, 4
	note F_, 4
	note G#, 4
;Bar 19
	note A_, 6
	note F#, 4
	note D_, 2
	note A_, 2
	octave 4
	note D_, 2
;Bar 20
	octave 3
	note D_, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note D_, 2
	note F#, 2
	note A_, 2
	octave 4
	note D_, 2
;Bar 21
	note D#, 2
	rest 2
	octave 3
	duty_cycle $2
	volume_envelope 8, 7
	note A#, 2
	octave 4
	note D#, 6
	note F_, 2
	note D#, 6
;Bar 22
	note D_, 4
	note D#, 8
;Bar 23
	rest 4
	octave 3
	duty_cycle $3
	volume_envelope 10, 7
	note F#, 6
	note D_, 2
	note A_, 2
	octave 4
	note D_, 2
;Bar 24
	octave 3
	note D_, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note D_, 2
	note F#, 2
	note A_, 2
	note B_, 2
;Bar 25
	note G_, 1
	note A_, 1
	note B_, 1
	rest 1
	octave 4
	duty_cycle $2
	volume_envelope 8, 7
	note D#, 2
	note G_, 4
	note F_, 2
	note D#, 2
	note D_, 2
;Bar 26
	note D#, 4
	note D#, 4
	note G_, 8
;Bar 27
    volume_envelope 6, 5
	sound_call Music_WildBattleDPPt_Ch1_Bar27
;Bar 29
	rest 4
	note G#, 4
	rest 4
	octave 5
	note C#, 4
;Bar 30
	note F_, 4
	note D#, 4
	note C_, 4
	note F_, 4
;Bar 31
	sound_call Music_WildBattleDPPt_Ch1_Bar27
;Bar 33
	octave 5
	note D#, 2
	octave 4
	note A#, 2
	octave 5
	note D#, 2
	note G_, 2
	note D#, 2
	octave 4
	note A#, 2
	octave 5
	note G_, 2
	note D#, 2
;Bar 34
	octave 4
	note A#, 2
	octave 5
	note D#, 2
	note G_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	note G_, 2
	note D#, 2
;Bar 35
	note G#, 2
	note C#, 2
	note G#, 2
	octave 6
	note C#, 2
	octave 5
	note G#, 2
	note C#, 2
	octave 6
	note C#, 2
	octave 5
	note G#, 2
;Bar 36
	note A_, 2
	note D_, 2
	note A_, 2
	octave 6
	note D_, 2
	octave 5
	note A_, 2
	note D_, 2
	octave 6
	note D_, 2
	octave 5
	note A_, 2
;Bar 37
Music_WildBattleDPPt_Ch1_Bar37:
	note A#, 2
	note D#, 2
	note A#, 2
	octave 6
	note D#, 2
	octave 5
	note A#, 2
	note D#, 2
	octave 6
	note D#, 2
	octave 5
	note A#, 2
	sound_loop 2, Music_WildBattleDPPt_Ch1_Bar37
;Bar 39
	volume_envelope 6, 5
Music_WildBattleDPPt_Ch1_Bar39_40:
	octave 5
	note C_, 2
	octave 4
	note F_, 2
	note G_, 2
	note C#, 2
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
;Bar 40
	note A#, 2
	note G_, 2
	note G#, 2
	note F_, 2
	note G_, 2
	note D#, 2
	note F_, 2
	note C#, 2
	sound_loop 2, Music_WildBattleDPPt_Ch1_Bar39_40
;Bar 43
Music_WildBattleDPPt_Ch1_Bar43_44:
	octave 6
	note E_, 2
	octave 5
	note A_, 2
	note B_, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note E_, 2
	note C_, 2
;Bar 44
	note D_, 2
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note F_, 2
	sound_loop 2, Music_WildBattleDPPt_Ch1_Bar43_44
;Bar 47
	;note G_, 2
    ;note __, 8
	octave 3
	duty_cycle $3
	volume_envelope 7, 8
	note E_, 8
	volume_envelope 7, 6
	note E_, 2
	volume_envelope 7, 8
	note E_, 2
	note D_, 2
	note C_, 2
;Bar 48
	octave 2
	note G_, 6
	note C_, 10
;Bar 49
	octave 3
	note F_, 8
	volume_envelope 7, 6
	note F_, 2
	volume_envelope 7, 8
	note F_, 2
	note D#, 2
	note C#, 2
;Bar 50
	octave 2
	note G#, 6
	note C#, 10
;Bar 51
	octave 3
	note F#, 8
	volume_envelope 7, 6
	note F#, 2
	volume_envelope 7, 8
	note F#, 2
	note E_, 2
	note D_, 2
;Bar 52
	octave 2
	note A_, 6
	note D_, 10
;Bar 53
	rest 16
;Bar 54
	note A_, 6
	note D_, 10
	sound_jump Music_WildBattleDPPt_Ch1_loop

Music_WildBattleDPPt_Ch1_Type1:
	octave 3
	note C_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	sound_ret

Music_WildBattleDPPt_Ch1_Bar27:
	octave 4
	note A#, 2
	note D#, 2
	note A#, 2
	octave 5
	note D#, 2
	octave 4
	note A#, 2
	note D#, 2
	octave 5
	note D#, 2
	octave 4
	note A#, 2
	note D#, 2
	note A#, 2
	octave 5
	note D#, 2
	octave 4
	note A#, 2
	octave 5
	note D#, 2
	note G_, 2
	note D#, 2
	octave 4
	note A#, 2
	sound_ret

; ============================================================================================================

Music_WildBattleDPPt_Ch2:
	note_type 12, 9, 7
	vibrato 18, 1, 8
;Bar 1
	duty_cycle $0
Music_WildBattleDPPt_Ch2_Bar1_2:
	octave 5
	note C_, 1
	octave 4
	note G_, 1
	octave 5
	note C_, 2
    sound_loop 8, Music_WildBattleDPPt_Ch2_Bar1_2
;Bar 3
	duty_cycle $1
    octave 3
	sound_call Music_WildBattleDPPt_Ch2_Bar3	
;Bar 6
	rest 7
	volume_envelope 13, 7
	note C#, 8
;Bar 7
	octave 4
    sound_call Music_WildBattleDPPt_Ch2_Bar3	
;Bar 10
	rest 7
	octave 5
	volume_envelope 7, -7
	note C#, 6
    volume_envelope 11, 7
    note C#, 2
;Bar 11
Music_WildBattleDPPt_Ch2_loop:
    duty_cycle $1
	octave 4
	volume_envelope 12, 8
	note C_, 10
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note G_, 2
;Bar 12
	sound_call Music_WildBattleDPPt_Ch2_Type1
	note F_, 2
	note G_, 2
;Bar 13
	note G#, 16
	vibrato 0, 1, 8
	note G#, 16
	vibrato 18, 1, 8
;Bar 15
	note C_, 10
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note G_, 2
;Bar 16
	sound_call Music_WildBattleDPPt_Ch2_Type1
	note D_, 2
	note C_, 2
;Bar 17
	octave 3
	volume_envelope 11, 8
	note A#, 16
	vibrato 0, 1, 8
	note A#, 12
	volume_envelope 12, 8
	vibrato 18, 1, 8
;Bar 18
	octave 4
	note C#, 4
;Bar 19
	note D_, 10
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	note A_, 2
;Bar 20
	sound_call Music_WildBattleDPPt_Ch2_Type2
	note G_, 2
	note A_, 2
;Bar 21
	volume_envelope 11, 8
	note A#, 16
	vibrato 0, 1, 8
	note A#, 16
	volume_envelope 12, 8
	vibrato 18, 1, 8
;Bar 23
	note D_, 6
	octave 3
	note A_, 4
	note A_, 2
	octave 4
	note D_, 2
	note A_, 2
;Bar 24
	sound_call Music_WildBattleDPPt_Ch2_Type2
	note E_, 2
	note D_, 2
;Bar 25
	volume_envelope 11, 8
	note C_, 16
	vibrato 0, 1, 8
	note C_, 8
	volume_envelope 12, 8
	vibrato 18, 1, 8
;Bar 26
	rest 4
	note D#, 4
;Bar 27
	octave 3
    duty_cycle $2
	volume_envelope 11, 8
	note A#, 10
	note A#, 2
	note G#, 2
	note G_, 2
;Bar 28
	note D#, 6
	octave 2
	note A#, 8
	note G#, 1
	octave 3
	note C#, 1
;Bar 29
	note F_, 6
	note C#, 1
	note F_, 1
	note G#, 6
	note F_, 1
	note G#, 1
;Bar 30
	octave 4
	note C#, 8
	note C_, 8
;Bar 31
	octave 3
	note A#, 2
	note G#, 2
	note G_, 2
	note G#, 2
	note A#, 16
	vibrato 0, 1, 8
	note A#, 8
	vibrato 18, 1, 8
;Bar 33
	note A#, 2
	note G#, 2
	note G_, 2
	note G#, 2
	note A#, 8
;Bar 34
	octave 4
    duty_cycle $1
	note G_, 2
	note F_, 2
	note D#, 2
	note F_, 2
	note G_, 8
    duty_cycle $2
;Bar 35
	volume_envelope 8, 8
	note G#, 16
;Bar 36
	note A_, 16
;Bar 37
	note A#, 16
	vibrato 0, 1, 8
	note A#, 16
	vibrato 18, 1, 8
;Bar 39
	octave 3
    duty_cycle $1
	volume_envelope 12, 8
	sound_call Music_WildBattleDPPt_Ch2_Bar39
;Bar 40
	note C#, 16
;Bar 41
	sound_call Music_WildBattleDPPt_Ch2_Bar39
;Bar 42
	note G#, 16
;Bar 43
	sound_call Music_WildBattleDPPt_Ch2_Bar43
;Bar 44
	note F_, 16
;Bar 45
	sound_call Music_WildBattleDPPt_Ch2_Bar43
;Bar 46
	octave 4
	note C_, 12
	note D#, 4
;Bar 47
    duty_cycle $2
	volume_envelope 9, 8
    sound_call Music_WildBattleDPPt_Ch2_Bar47_48
;Bar 49
    transpose 0, 1
	sound_call Music_WildBattleDPPt_Ch2_Bar47_48
    transpose 0, 0
;Bar 51
	octave 3
	note A_, 8
	volume_envelope 9, 6
	note A_, 2
	volume_envelope 9, 8
	note A_, 2
	note G_, 2
	note F#, 2
;Bar 52
	sound_call Music_WildBattleDPPt_Ch2_Bar52
;Bar 53
	rest 16
;Bar 54
	octave 3
	sound_call Music_WildBattleDPPt_Ch2_Bar52
	sound_jump Music_WildBattleDPPt_Ch2_loop

Music_WildBattleDPPt_Ch2_Bar3:
    volume_envelope 13, 7;
	note C_, 1
	volume_envelope 6, 7
	note C_, 4
	rest 1
	volume_envelope 13, 7
	note G_, 1
	volume_envelope 6, 7
	note G_, 4
	rest 1
	volume_envelope 13, 7
	note F_, 1
	volume_envelope 6, 7
	note F_, 4
;Bar 4
    rest 7
	volume_envelope 13, 7
	note C_, 1
	volume_envelope 6, 7
	note C_, 4
	rest 3
;Bar 5
	volume_envelope 13, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 4
	rest 1
	volume_envelope 13, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 4
	rest 1
	volume_envelope 13, 7
	note G_, 1
	volume_envelope 6, 7
	note G_, 4
    sound_ret

Music_WildBattleDPPt_Ch2_Type1:
    note F_, 2;
	note E_, 2
	note D_, 2
	note C_, 2
	note F_, 2
	note E_, 2
    sound_ret

Music_WildBattleDPPt_Ch2_Type2:
    note G_, 2;
	note F#, 2
	note E_, 2
	note D_, 2
	note G_, 2
	note F#, 2
    sound_ret

Music_WildBattleDPPt_Ch2_Bar39:
    note C_, 6;
	note G_, 6
	note F_, 4
    sound_ret

Music_WildBattleDPPt_Ch2_Bar43:
    note E_, 6;
	note B_, 6
	note A_, 4
    sound_ret

Music_WildBattleDPPt_Ch2_Bar52:
    note D_, 6;
	octave 2
	note A_, 10
    sound_ret

Music_WildBattleDPPt_Ch2_Bar47_48:
    octave 3
	note G_, 8
	volume_envelope 9, 6
	note G_, 2
	volume_envelope 9, 8
	note G_, 2
	note F_, 2
	note E_, 2
;Bar 48
	note C_, 6
	octave 2
	note G_, 10
    sound_ret

; ============================================================================================================

Music_WildBattleDPPt_Ch3:
	note_type 12, 1, 9
;Bar 1
	octave 2
	note D_, 1
	rest 1
	sound_call Music_WildBattleDPPt_Ch3_Type1
    transpose 0, 1
	sound_call Music_WildBattleDPPt_Ch3_Type1
    transpose 0, 2
	sound_call Music_WildBattleDPPt_Ch3_Type1
    transpose 0, 3
	sound_call Music_WildBattleDPPt_Ch3_Type1
    transpose 0, 4
	sound_call Music_WildBattleDPPt_Ch3_Type1
    transpose 0, 5
	sound_call Music_WildBattleDPPt_Ch3_Type1
    transpose 0, 0
	volume_envelope 1, 4
	note D#, 2
	note D_, 2
	note C#, 2
;Bar 3
	sound_call Music_WildBattleDPPt_Ch3_Bar3
;Bar 4
	sound_call Music_WildBattleDPPt_Ch3_Bar4
;Bar 5
	sound_call Music_WildBattleDPPt_Ch3_Bar5
;Bar 6
	sound_call Music_WildBattleDPPt_Ch3_Bar6
;Bar 7
	sound_call Music_WildBattleDPPt_Ch3_Bar3
;Bar 8
	sound_call Music_WildBattleDPPt_Ch3_Bar4
;Bar 9
	sound_call Music_WildBattleDPPt_Ch3_Bar5
;Bar 10
	sound_call Music_WildBattleDPPt_Ch3_Bar6
;Bar 11
Music_WildBattleDPPt_Ch3_loop:
	sound_call Music_WildBattleDPPt_Ch3_Bar11
;Bar 12
	sound_call Music_WildBattleDPPt_Ch3_Bar12
;Bar 13
	note C#, 2
	note G#, 2
	octave 3
	note G#, 2
	note C#, 4
	octave 2
	note G#, 2
	note F_, 2
	note G#, 2
;Bar 14
	sound_call Music_WildBattleDPPt_Ch3_Bar14
;Bar 15
	sound_call Music_WildBattleDPPt_Ch3_Bar11
;Bar 16
	sound_call Music_WildBattleDPPt_Ch3_Bar12
;Bar 17
	note C#, 2
	note G#, 2
	octave 1
	note G#, 2
	octave 2
	note C#, 4
	note G#, 2
	note F_, 2
	note G#, 2
;Bar 18
	note C#, 2
	note G#, 2
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	note G#, 2
	octave 3
	note C#, 2
	octave 2
	note C#, 2
	note G#, 2
;Bar 19
	sound_call Music_WildBattleDPPt_Ch3_Bar19
;Bar 20
	sound_call Music_WildBattleDPPt_Ch3_Bar20
;Bar 21
	note D#, 2
	note A#, 2
	octave 3
	note A#, 2
	note D#, 4
	octave 2
	note A#, 2
	note G_, 2
	note A#, 2
;Bar 22
	sound_call Music_WildBattleDPPt_Ch3_Bar22
;Bar 23
	sound_call Music_WildBattleDPPt_Ch3_Bar19
;Bar 24
	sound_call Music_WildBattleDPPt_Ch3_Bar20
;Bar 25
	sound_call Music_WildBattleDPPt_Ch3_Bar22
;Bar 26
	note D#, 2
	note A#, 2
	octave 3
	note G_, 2
	octave 2
	note A#, 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note D#, 2
;Bar 27
	octave 2
	sound_call Music_WildBattleDPPt_Ch3_Bar27
;Bar 28
	sound_call Music_WildBattleDPPt_Ch3_Bar27
;Bar 29
	note G#, 2
	note C#, 2
	octave 3
	note C#, 4
	octave 2
	note G#, 2
	note C#, 2
	octave 3
	note F_, 4
;Bar 30
	octave 2
	note G#, 2
	note C#, 2
	octave 3
	note F_, 2
	octave 2
	note G#, 2
	octave 3
	note C#, 2
	note C_, 2
	octave 2
	note A#, 2
	note G#, 2
;Bar 31
	sound_call Music_WildBattleDPPt_Ch3_Bar27
;Bar 32
	sound_call Music_WildBattleDPPt_Ch3_Bar27
;Bar 33
	sound_call Music_WildBattleDPPt_Ch3_Bar27
;Bar 34
	sound_call Music_WildBattleDPPt_Ch3_Bar27
;Bar 35
	sound_call Music_WildBattleDPPt_Ch3_Bar3
;Bar 36
	sound_call Music_WildBattleDPPt_Ch3_Bar5
;Bar 37
	note A#, 2
	note D#, 2
	note A#, 2
	octave 3
	note D#, 2
	octave 2
	note A#, 2
	note D#, 2
	note A#, 2
	octave 3
	note D#, 2
;Bar 38
	octave 2
	note A#, 2
	note D#, 2
	note A#, 2
	octave 3
	note D#, 2
	octave 2
	note A#, 2
	octave 1
	note B_, 2
	note A_, 1
	note A#, 1
	note B_, 2
;Bar 39
	octave 2
	sound_call Music_WildBattleDPPt_Ch3_Bar39_40
;Bar 43
	sound_call Music_WildBattleDPPt_Ch3_Bar43_44
;Bar 47
	sound_call Music_WildBattleDPPt_Ch3_Bar11
;Bar 48
	sound_call Music_WildBattleDPPt_Ch3_Bar12
;Bar 49
	sound_call Music_WildBattleDPPt_Ch3_Bar14
;Bar 50
	note C#, 2
	note G#, 2
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	note C#, 2
	note F_, 2
	note G#, 2
	octave 3
	note C#, 2
;Bar 51
	sound_call Music_WildBattleDPPt_Ch3_Bar51
;Bar 52
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
	note D_, 2
	note F#, 2
	note A_, 2
	octave 3
	note D_, 2
;Bar 53
	sound_call Music_WildBattleDPPt_Ch3_Bar51
;Bar 54
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
	note A_, 2
	note G_, 2
	sound_jump Music_WildBattleDPPt_Ch3_loop

Music_WildBattleDPPt_Ch3_Bar3:
	note C_, 2
	note G_, 2
    sound_loop 4, Music_WildBattleDPPt_Ch3_Bar3
	sound_ret

Music_WildBattleDPPt_Ch3_Bar4:
	note C_, 2
	note G_, 2
	note C_, 4
	note G_, 2
	note F_, 2
	note D#, 2
	note G_, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Bar5:
	note C#, 2
	note G#, 2
    sound_loop 4, Music_WildBattleDPPt_Ch3_Bar5
	sound_ret

Music_WildBattleDPPt_Ch3_Bar6:
	note C#, 2
	note G#, 2
	note C#, 4
	note G#, 2
	note G_, 2
	note F_, 2
	note G#, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Bar11:
	note C_, 2
	octave 1
	note G_, 2
	octave 2
	note C_, 2
	note G_, 4
	note G_, 2
	note C_, 2
	note G_, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Bar12:
	note C_, 2
	octave 1
	note G_, 2
	octave 2
	note C_, 2
	note F_, 4
	note G_, 2
	note G_, 2
	note F_, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Bar14:
	note C#, 2
	note G#, 2
	octave 3
	note F_, 2
	note C#, 4
	octave 2
	note G#, 2
	note F_, 2
	note G#, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Bar19:
	note D_, 2
	octave 1
	note A_, 2
	octave 2
	note D_, 2
	note A_, 4
	note A_, 2
	note D_, 2
	note A_, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Bar20:
	note D_, 2
	octave 1
	note A_, 2
	octave 2
	note D_, 2
	note G_, 4
	note A_, 2
	note A_, 2
	note G_, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Bar22:
	note D#, 2
	note A#, 2
	octave 3
	note G_, 2
	note D#, 4
	octave 2
	note A#, 2
	note G_, 2
	note A#, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Bar27:
	note D#, 2
	note A#, 2
	sound_loop 4, Music_WildBattleDPPt_Ch3_Bar27
	sound_ret

Music_WildBattleDPPt_Ch3_Bar39_40:
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note G#, 2
	note G#, 2
	note C#, 2
	note C#, 2
	note G#, 2
	sound_loop 2, Music_WildBattleDPPt_Ch3_Bar39_40
	sound_ret

Music_WildBattleDPPt_Ch3_Bar43_44:
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
	note A#, 2
	note D#, 2
	note D#, 2
	note A#, 2
	sound_loop 2, Music_WildBattleDPPt_Ch3_Bar43_44
	sound_ret

Music_WildBattleDPPt_Ch3_Bar51:
	octave 2
	note D_, 2
	note A_, 2
	octave 3
	note F#, 2
	note D_, 4
	octave 2
	note A_, 2
	note F#, 2
	note A_, 2
	sound_ret

Music_WildBattleDPPt_Ch3_Type1:
    note D#, 1
	note E_, 1
	note D#, 1
	rest 1
    sound_ret

; ============================================================================================================

Music_WildBattleDPPt_Ch4:
	toggle_noise 5
	drum_speed 12
;Bar 1
	rest 16
;Bar 2
	drum_note 2, 4
	drum_note 2, 4
	drum_note 4, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 3
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 2, 2
;Bar 4
	sound_call Music_WildBattleDPPt_Ch4_Bar4
;Bar 5
	sound_call Music_WildBattleDPPt_Ch4_Bar5
;Bar 6
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 4, 2
	drum_note 12, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
;Bar 7
	sound_call Music_WildBattleDPPt_Ch4_Bar5
;Bar 8
	sound_call Music_WildBattleDPPt_Ch4_Bar4
;Bar 9
	sound_call Music_WildBattleDPPt_Ch4_Bar4
;Bar 10
	drum_note 12, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 4, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	drum_note 10, 2
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
;Bar 11
Music_WildBattleDPPt_Ch4_loop:
	toggle_noise
	toggle_noise 5
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 12
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 13
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 14
	sound_call Music_WildBattleDPPt_Ch4_Bar14
;Bar 15
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 16
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 17
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 18
	sound_call Music_WildBattleDPPt_Ch4_Bar18
;Bar 19
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 20
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 21
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 22
	sound_call Music_WildBattleDPPt_Ch4_Bar14
;Bar 23
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 24
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 25
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 26
	sound_call Music_WildBattleDPPt_Ch4_Bar26
;Bar 27
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 28
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 29
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 30
	sound_call Music_WildBattleDPPt_Ch4_Bar14
;Bar 31
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 32
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 33
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 34
	sound_call Music_WildBattleDPPt_Ch4_Bar18
;Bar 35
	drum_note 6, 2
	drum_note 6, 2
	drum_note 12, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 12, 4
;Bar 36
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 2, 2
;Bar 37
	drum_note 9, 2
	drum_note 12, 2
	drum_note 6, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 12, 2
	drum_note 6, 2
Music_WildBattleDPPt_Ch4_rest:
	rest 16
	sound_loop 4, Music_WildBattleDPPt_Ch4_rest
	rest 2
;Bar 42
	sound_call Music_WildBattleDPPt_Ch4_Bar26
;Bar 43
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 44
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 45
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 46
	sound_call Music_WildBattleDPPt_Ch4_Bar14
;Bar 47
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 48
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 49
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 50
	sound_call Music_WildBattleDPPt_Ch4_Bar14
;Bar 51
	sound_call Music_WildBattleDPPt_Ch4_Bar11
;Bar 52
	sound_call Music_WildBattleDPPt_Ch4_Bar12
;Bar 53
	sound_call Music_WildBattleDPPt_Ch4_Bar13
;Bar 54
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 9, 4
	sound_jump Music_WildBattleDPPt_Ch4_loop

Music_WildBattleDPPt_Ch4_Bar4:
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 12, 2
	drum_note 2, 2
	drum_note 12, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	sound_ret

Music_WildBattleDPPt_Ch4_Bar5:
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	sound_ret

Music_WildBattleDPPt_Ch4_Bar12:
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 2, 2
	drum_note 12, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 4, 2
	sound_ret

Music_WildBattleDPPt_Ch4_Bar13:
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 2, 2
	drum_note 12, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 4
	toggle_noise
	toggle_noise 5
	sound_ret

Music_WildBattleDPPt_Ch4_Bar14:
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 12, 2
	drum_note 2, 2
	drum_note 4, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	sound_ret

Music_WildBattleDPPt_Ch4_Bar11:
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 4
	toggle_noise
	toggle_noise 5
	sound_ret

Music_WildBattleDPPt_Ch4_Bar18:
	drum_note 12, 2
	drum_note 2, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 2, 2
	drum_note 12, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	sound_ret

Music_WildBattleDPPt_Ch4_Bar26:
	drum_note 12, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	drum_note 12, 2
	drum_note 12, 2
	toggle_noise
	toggle_noise 0
	drum_note 10, 2
	drum_note 10, 2
	drum_note 10, 2
	toggle_noise
	toggle_noise 5
	sound_ret

; ============================================================================================================

