(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

(define (factorial2 n)
  (define (fact-iter product count max-count)
    (if (> count max-count)
      product
      (fact-iter (* product count) (+ 1 count) max-count)))
  (fact-iter 1 1 n))

