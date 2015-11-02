#!/usr/bin/guile
!#

(use-modules    
    [[ice-9 format]                 :renamer (symbol-prefix-proc 'frmt:)]
    [[ice-9 optargs]                :renamer (symbol-prefix-proc 'oprg:)]
    [[ice-9 pretty-print]           :renamer (symbol-prefix-proc 'pprn:)]
    
    [[sysdom common filesystem]     :renamer (symbol-prefix-proc 'scfs:)]
    [[ggspec lib]                   :renamer (symbol-prefix-proc 'gspc:)]
)


(define (test . arglst) 
    (frmt:format #t "INFO:  Hello from test/filesystem\n")
    (gspc:suite "The sqr function"
        (gspc:tests
            (gspc:test "Should square 1 correctly" e
                (gspc:assert-equal 1 (scfs:sqr 1))
            )
            (gspc:test "Should square 2 correctly" e
                (gspc:assert-equal 4 (scfs:sqr 2))
            )
        )
    )
)


