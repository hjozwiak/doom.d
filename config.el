;; config.el, the configuration file for Doom Emacs.
;;; config.el -*- lexical-binding: t; -*-
;; Generated from config.org, do not manually edit.

(setq user-full-name "Hunter Jozwiak"
user-mail-address "hunter.t.joz@gmail.com")

(setq doom-theme 'doom-one)

(setq org-directory "~/org")

(setq display-line-numbers-type nil)

(add-hook 'after-init-hook (load "~/emacspeak/lisp/emacspeak-setup.el"))

(setq! espeak-default-speech-rate 820
       emacspeak-character-echo nil
       emacspeak-word-echo nil
       emacspeak-m-player-program "/usr/bin/mplayer")

(after! circe
  (set-irc-server! "irc.libera.chat"
    `(:tls t
      :port 6697
      :nic "sektor"
      :sasl-username ,(+pass-get-user "irc/libera.chat")
      :sasl-password (lambda (&rest _) (+pass-get-secret "irc/libera.chat"))
      :channels ("#emacs" "#stumpwm" "#pleroma"))))

(after! circe
  (set-irc-server! "irc.talkabout.cf"
    `(:tls t
      :port 6697
      :nic "sektor"
      :sasl-username ,(+pass-get-user "irc/talkabout.cf")
      :sasl-password (lambda (&rest _) (+pass-get-secret "irc/talkabout.cf"))
    :channels ("#a11y")))
)

(after! circe
  (set-irc-server! "irc.zeronode.net"
    `(:tls t
      :port 6697
      :nic "sektor"
      :sasl-username ,(+pass-get-user "irc/zeronode.net")
      :sasl-password (lambda (&rest _) (+pass-get-secret "irc/zeronode.net"))
      :channels ("#noagenda"))))

(set-email-account! "gmail" '((mu4e-sent-folder . "/gmail/[Gmail]/Sent Mail")
                              (mu4e-drafts-folder . "/gmail/Drafts")
                              (mu4e-trash-folder . "/gmail/Trash")
                              (mu4e-refile-folder . "/gmail/[Gmail]/All Mail")
                              (smtpmail-smtp-user "hunter.t.joz@gmail.com")
                              ))

(after! mu4e
  (setq sendmail-program (executable-find "msmtp")
        send-mail-function #'smtpmail-send-it
        message-sendmail-f-is-evil t
        message-sendmail-extra-arguments '("--read-envelope-from")
        message-send-mail-function #'message-send-mail-with-sendmail
  mu4e-headers-full-search t))
