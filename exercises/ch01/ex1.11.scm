; recursive version
(define (f_recur n)
  (cond ((< n 3) n)
        (else (+ (f_recur (- n 1)) (* 2 (f_recur (- n 2))) (* 3 (f_recur (- n 3)))))))

