;; Exercise 1.6
;; `if` is a special form of conditional that evaluates in normal-order, 
;; `new-if` is evaluated in applicative-order, because of this `new-if` will execute
;; both consquent and alternative, since `sqrt-iter` is recursive this will trigger
;; an infinite loop with no way to break.


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
      (else else-clause)))
  
(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
                x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

;; Example
(display (sqrt 0.0000000002))