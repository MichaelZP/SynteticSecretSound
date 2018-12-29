;nyquist plug-in
;version 4
;type generate
;categories "http://lv2plug.in/ns/lv2core#GeneratorPlugin"
;;name "Synthetic Secret Sound -Synthetic Pure Implosion Sound as described by Dan Winter + Plus-AM Tone Generator v0.14 26 12 2018"
;name "SyntheticSecretSound manual v0.14" 
;action "Generating Tone..."
;info "by Michael Przybylski.\nReleased under GPL v2.\n"
;;https://en.wikipedia.org/wiki/Schumann_resonances
;;https://www.cs.cmu.edu/~rbd/doc/nyquist/
;;http://www.fractalfield.com/implosionsound/
;;https://en.wikipedia.org/wiki/Amplitude_modulation
;;https://en.wikipedia.org/wiki/Pulse-amplitude_modulation
;;https://forum.audacityteam.org/
;;https://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference

;control duration "Duration" real "seconds" 10 0 15016
;control gain_max "Amplitude (0 will allow clipping not recommended)" real "0 to 1" 0.95 0 1
;control modulation "Modulation?" choice "none,PulsAmplitudeModulation" 1
;control carrier "Carrier Freq. PulsAmpModulation sinus" real "Hz" 554.12 0 22000
;control phase_carrier "Phase shift carrier" real "0.0 to 180.0" 0.0 0.0 180.0
;control depth "PulsAmpModulation Depth" real "0 to 1" 1 0 1

;control beat_freq_carrier "Binaural beat on carrier(works on stereo track)" real "Hz" 0.09 0 131
;control beat_phase_carrier "Phase shift on all message wave(works on stereo track)" real "0.0 to 180.0" 180.0 0.0 180.0

;control baseband-6 "Message frequency -6" real "Hz" 0 0 131
;control bb_gain_-6 "Amplitude -6" real "0 to 1" 0 0 1
;control phase_-6 "Phase shift -6" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband-5 "Message frequency -5" real "Hz" 0 0 131
;control bb_gain_-5 "Amplitude -5" real "0 to 1" 0 0 1
;control phase_-5 "Phase shift -5" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband-4 "Message frequency -4" real "Hz" 0 0 131
;control bb_gain_-4 "Amplitude -4" real "0 to 1" 0 0 1
;control phase_-4 "Phase shift -4" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband-3 "Message frequency -3" real "Hz" 0 0 131
;control bb_gain_-3 "Amplitude -3" real "0 to 1" 0 0 1
;control phase_-3 "Phase shift -3" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband-2 "Message frequency -2" real "Hz" 0 0 131
;control bb_gain_-2 "Amplitude -2" real "0 to 1" 0 0 1
;control phase_-2 "Phase shift -2" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband-1 "Message frequency -1" real "Hz" 0 0 131
;control bb_gain_-1 "Amplitude -1" real "0 to 1" 0 0 1
;control phase_-1 "Phase shift -1" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband00 "Message frequency 00" real "Hz" 7.83 0 131
;control bb_gain_00 "Amplitude 00" real "0 to 1" 0.439 0 1
;control phase_00 "Phase shift 00" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband01 "Message frequency 01" real "Hz" 14.1 0 131
;control bb_gain_01 "Amplitude 01" real "0 to 1" 0.246 0 1
;control phase_01 "Phase shift 01" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband02 "Message frequency 02" real "Hz" 20.3 0 131
;control bb_gain_02 "Amplitude 02" real "0 to 1" 0.175 0 1
;control phase_02 "Phase shift 02" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband03 "Message frequency 03" real "Hz" 26.4 0 131
;control bb_gain_03 "Amplitude 03" real "0 to 1" 0.088 0 1
;control phase_03 "Phase shift 03" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband04 "Message frequency 04" real "Hz" 32.4 0 131
;control bb_gain_04 "Amplitude 04" real "0 to 1" 0.053 0 1
;control phase_04 "Phase shift 04" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband05 "Message frequency 05" real "Hz" 0 0 131
;control bb_gain_05 "Amplitude 05" real "0 to 1" 0 0 1
;control phase_05 "Phase shift 05" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband06 "Message frequency 06" real "Hz" 0 0 131
;control bb_gain_06 "Amplitude 06" real "0 to 1" 0 0 1
;control phase_06 "Phase shift 06" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband07 "Message frequency 07" real "Hz" 0 0 131
;control bb_gain_07 "Amplitude 07" real "0 to 1" 0 0 1
;control phase_07 "Phase shift 07" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband08 "Message frequency 08" real "Hz" 0 0 131
;control bb_gain_08 "Amplitude 08" real "0 to 1" 0 0 1
;control phase_08 "Phase shift 08" real "0.0 to 180.0" 0.0 0.0 180.0
;control baseband09 "Message frequency 09" real "Hz" 0 0 131
;control bb_gain_09 "Amplitude 09" real "0 to 1" 0 0 1
;control phase_09 "Phase shift 09" real "0.0 to 180.0" 0.0 0.0 180.0

;;avoid clipiing
(setf gain_sum (sum bb_gain_09 bb_gain_08 bb_gain_07 bb_gain_06 bb_gain_05 bb_gain_04 bb_gain_03 bb_gain_02 bb_gain_01 bb_gain_00 bb_gain_-1 bb_gain_-2 bb_gain_-3 bb_gain_-4 bb_gain_-5 bb_gain_-6))
(if (= gain_max 0)
	(
	(setf gain_fract 1)
	)
	(setf gain_fract (/ 1 gain_sum))
)


(if (arrayp s) ;test for stereo
	(format nil "Inf:\nmono track.")
	(progn
		;;(format nil "Inf:\nstereo track.")
		(vector
		;;leftch
		(progn
			(if (= modulation 1)
			(stretch-abs duration
			(mult 
			gain_fract(sum 
			(mult bb_gain_-6(hzosc baseband-6 *sine-table* phase_-6))
			(mult bb_gain_-5(hzosc baseband-5 *sine-table* phase_-5))
			(mult bb_gain_-4(hzosc baseband-4 *sine-table* phase_-4))
			(mult bb_gain_-3(hzosc baseband-3 *sine-table* phase_-3))
			(mult bb_gain_-2(hzosc baseband-2 *sine-table* phase_-2))
			(mult bb_gain_-1(hzosc baseband-1 *sine-table* phase_-2))
			(mult bb_gain_00(hzosc baseband00 *sine-table* phase_00))
			(mult bb_gain_01(hzosc baseband01 *sine-table* phase_01))
			(mult bb_gain_02(hzosc baseband02 *sine-table* phase_02))
			(mult bb_gain_03(hzosc baseband03 *sine-table* phase_03))
			(mult bb_gain_04(hzosc baseband04 *sine-table* phase_04))
			(mult bb_gain_05(hzosc baseband05 *sine-table* phase_05))
			(mult bb_gain_06(hzosc baseband06 *sine-table* phase_06))
			(mult bb_gain_07(hzosc baseband07 *sine-table* phase_07))
			(mult bb_gain_08(hzosc baseband08 *sine-table* phase_08))
			(mult bb_gain_09(hzosc baseband09 *sine-table* phase_09)))
				(sum (- 1 depth)
				  (mult 0.5
					depth
					(sum 1 (hzosc carrier *sine-table* phase_carrier))))
			)
			)
			(stretch-abs duration
			(mult 
			gain_fract(sum 
			(mult bb_gain_-6(hzosc baseband-6 *sine-table* phase_-6))
			(mult bb_gain_-5(hzosc baseband-5 *sine-table* phase_-5))
			(mult bb_gain_-4(hzosc baseband-4 *sine-table* phase_-4))
			(mult bb_gain_-3(hzosc baseband-3 *sine-table* phase_-3))
			(mult bb_gain_-2(hzosc baseband-2 *sine-table* phase_-2))
			(mult bb_gain_-1(hzosc baseband-1 *sine-table* phase_-2))
			(mult bb_gain_00(hzosc baseband00 *sine-table* phase_00))
			(mult bb_gain_01(hzosc baseband01 *sine-table* phase_01))
			(mult bb_gain_02(hzosc baseband02 *sine-table* phase_02))
			(mult bb_gain_03(hzosc baseband03 *sine-table* phase_03))
			(mult bb_gain_04(hzosc baseband04 *sine-table* phase_04))
			(mult bb_gain_05(hzosc baseband05 *sine-table* phase_05))
			(mult bb_gain_06(hzosc baseband06 *sine-table* phase_06))
			(mult bb_gain_07(hzosc baseband07 *sine-table* phase_07))
			(mult bb_gain_08(hzosc baseband08 *sine-table* phase_08))
			(mult bb_gain_09(hzosc baseband09 *sine-table* phase_09)))
			)
			)
			);;end if
		)
		;;rigcht ch
		(progn
			(if (= modulation 1)
			(stretch-abs duration
			(mult 
			gain_fract(sum 
			(mult bb_gain_-6(hzosc baseband-6 *sine-table* (+ phase_-6 beat_phase_carrier)))
			(mult bb_gain_-5(hzosc baseband-5 *sine-table* (+ phase_-5 beat_phase_carrier)))
			(mult bb_gain_-4(hzosc baseband-4 *sine-table* (+ phase_-4 beat_phase_carrier)))
			(mult bb_gain_-3(hzosc baseband-3 *sine-table* (+ phase_-3 beat_phase_carrier)))
			(mult bb_gain_-2(hzosc baseband-2 *sine-table* (+ phase_-2 beat_phase_carrier)))
			(mult bb_gain_-1(hzosc baseband-1 *sine-table* (+ phase_-2 beat_phase_carrier)))
			(mult bb_gain_00(hzosc baseband00 *sine-table* (+ phase_00 beat_phase_carrier)))
			(mult bb_gain_01(hzosc baseband01 *sine-table* (+ phase_01 beat_phase_carrier)))
			(mult bb_gain_02(hzosc baseband02 *sine-table* (+ phase_02 beat_phase_carrier)))
			(mult bb_gain_03(hzosc baseband03 *sine-table* (+ phase_03 beat_phase_carrier)))
			(mult bb_gain_04(hzosc baseband04 *sine-table* (+ phase_04 beat_phase_carrier)))
			(mult bb_gain_05(hzosc baseband05 *sine-table* (+ phase_05 beat_phase_carrier)))
			(mult bb_gain_06(hzosc baseband06 *sine-table* (+ phase_06 beat_phase_carrier)))
			(mult bb_gain_07(hzosc baseband07 *sine-table* (+ phase_07 beat_phase_carrier)))
			(mult bb_gain_08(hzosc baseband08 *sine-table* (+ phase_08 beat_phase_carrier)))
			(mult bb_gain_09(hzosc baseband09 *sine-table* (+ phase_09 beat_phase_carrier))))
				(sum (- 1 depth)
				  (mult 0.5
					depth
					(sum 1 (hzosc (- carrier beat_freq_carrier) *sine-table* phase_carrier))))
			)
			)
			(stretch-abs duration
			(mult 
			gain_fract(sum 
			(mult bb_gain_-6(hzosc baseband-6 *sine-table* (+ phase_-6 beat_phase_carrier)))
			(mult bb_gain_-5(hzosc baseband-5 *sine-table* (+ phase_-5 beat_phase_carrier)))
			(mult bb_gain_-4(hzosc baseband-4 *sine-table* (+ phase_-4 beat_phase_carrier)))
			(mult bb_gain_-3(hzosc baseband-3 *sine-table* (+ phase_-3 beat_phase_carrier)))
			(mult bb_gain_-2(hzosc baseband-2 *sine-table* (+ phase_-2 beat_phase_carrier)))
			(mult bb_gain_-1(hzosc baseband-1 *sine-table* (+ phase_-2 beat_phase_carrier)))
			(mult bb_gain_00(hzosc baseband00 *sine-table* (+ phase_00 beat_phase_carrier)))
			(mult bb_gain_01(hzosc baseband01 *sine-table* (+ phase_01 beat_phase_carrier)))
			(mult bb_gain_02(hzosc baseband02 *sine-table* (+ phase_02 beat_phase_carrier)))
			(mult bb_gain_03(hzosc baseband03 *sine-table* (+ phase_03 beat_phase_carrier)))
			(mult bb_gain_04(hzosc baseband04 *sine-table* (+ phase_04 beat_phase_carrier)))
			(mult bb_gain_05(hzosc baseband05 *sine-table* (+ phase_05 beat_phase_carrier)))
			(mult bb_gain_06(hzosc baseband06 *sine-table* (+ phase_06 beat_phase_carrier)))
			(mult bb_gain_07(hzosc baseband07 *sine-table* (+ phase_07 beat_phase_carrier)))
			(mult bb_gain_08(hzosc baseband08 *sine-table* (+ phase_08 beat_phase_carrier)))
			(mult bb_gain_09(hzosc baseband09 *sine-table* (+ phase_09 beat_phase_carrier))))
			)
			)
			);;end if
		)
		);;end vector
	);;progn
);;end arrayp if         