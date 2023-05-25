```scheme
(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

(test 0 (p))
```

With an applicative-order evaluation, we should expect an infinite loop, since `(test 0 (p))` will first expand the expression `(p)`, which calls itself infinitely. However, with a normal-order evaluation, the argument `(p)` is not evaluated but passed along with `0` to procedure `test`. Since `(= x 0)` evaluates to `true`, the procedure returns 0 without ever having to expand the `(p)` argument, which would only have occured in the event that `(= x 0)` evaluated to `false`.
