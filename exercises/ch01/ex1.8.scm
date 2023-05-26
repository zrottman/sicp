(define (cuberoot x)
  (define (good-enough? guess)
    (< (abs (- (cube guess) x)) .01))
  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (cuberoot-itr guess)
    (if (good-enough? guess)
      guess
      (cuberoot-itr (improve guess))))
  (cuberoot-itr 1.0))

(define (abs x)
  (if (< x 0)
    (- x)
    x))

(define (square x) (* x x))

(define (cube x) (* x x x))
