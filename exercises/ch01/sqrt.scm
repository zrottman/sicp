(define (average num_one num_two)
  (/ (+ num_one num_two) 2))

(define (improve guess x)
  (average (/ x guess) guess))

(define (sqrt_iter guess x)
  (if (is_good_enough guess x)
    guess
    (sqrt_iter (improve guess x) x)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x) (* x x))

(define (is_good_enough guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x) (sqrt_iter 1.0 x))
