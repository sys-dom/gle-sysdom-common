
(define-module  [sysdom common filesystem])
(use-modules    
    [[ice-9 format]                 :renamer (symbol-prefix-proc 'frmt:)]
    [[ice-9 optargs]                :renamer (symbol-prefix-proc 'oprg:)]
    [[ice-9 pretty-print]           :renamer (symbol-prefix-proc 'pprn:)]
)

(define-public hello "Hello!")
(define-public (sqr x) (* x x))

;; (define-public (get-dir-contents path)
;; ;;     (frmt:format #t "INFO:  From get-dir-contents ...\n")
;; ;;     (let*   [   [dir        (posx:opendir path)]
;; ;;                 [out        (do [   (item    (posx:readdir path))
;; ;;                                 ]
;; ;;                                 [   (posx:eof-object?   item)
;; ;;                                 ]
;; ;;                                 (frmt:format #t "INFO:  Directory = '~a',   Object = '~a'\n" path item)
;; ;;                             )
;; ;;                 ]
;; ;;             ]
;; ;;         (frmt:format #t "INFO:  Out = '~a'\n" out)
;; ;;     )
;;     (define dir (opendir "/usr/local/bin"))
;;     (do ((filename (readdir dir) (readdir dir)))
;;         ((eof-object? filename))
;;     (format #t "Inside /usr/local/bin is something called ~A\n" filename))
;;     (closedir dir)
;; )




