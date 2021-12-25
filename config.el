;; config.el, the configuration file for Doom Emacs.
;; Generated from config.org, do not manually edit.

(add-hook 'after-init-hook (load "~/.doom.d/esp-prepare.el"))

(setq user-full-name "Hunter Jozwiak"
user-mail-address "hunter.t.joz@gmail.com")

(setq doom-theme 'doom-one)

(setq org-directory "~/org")

(setq display-line-numbers-type nil)

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
