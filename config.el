;; In preparation for the loading of Emacspeak
;; Set the speech rate, so as to not go insane.
(after! emacspeak
(setq espeak-default-speech-rate 820
      emacspeak-character-echo nil ;; Don't speak characters
 emac   emacspeak-m-player-program "/usr/bin/mplayer"))
