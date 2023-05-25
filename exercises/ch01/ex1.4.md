```scheme
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
```

Procedure `a-plus-abs-b` takes two parameters, `a` and `b`. If `b` is positive, then the expression `(> b 0)` evaluates to true and the expression `(if (> b 0) + -)` evaluates to `+`, thus rendering the body of the function `(+ a b)`.

If `b` is negative, on the other hand, the expression `(> b 0)` evaluates to false, and the containing expression `(if (> b 0) + 0)` evaluates to `-`, thus rendering the body of the function `(- a b)`.
