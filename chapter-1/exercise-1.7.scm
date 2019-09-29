;; Exercise 1.7


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
    (< (abs (- (square guess) x)) (* guess 0.001)))

;; Examples
(display " → ")
(display (sqrt 9))
(display "\n → ")
(display (sqrt 0.999))
(display "\n → ")
(display (sqrt 0.002))
(display "\n → ")
(display (sqrt 100009000.002))
(display "\n")
