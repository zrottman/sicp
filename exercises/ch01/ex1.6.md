```scheme

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5) ; => 5

(new-if (= 1 1) 0 5) ; => 0
```

The question is, what happens here:

```scheme
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
```

Because the default `if` statement is a special form, the interpreter in this case does not expand both parameters a la applicative-order evaluation. It only evaluates the parameter that meets the `if` condition.

In `new-if`, however, this is not the case, which means that when `new if` is called in the body of the `sqrt-iter` procedure, both of the `new-if` parameters are expanded, which means that `art-iter` is infinitely and recursively called.
