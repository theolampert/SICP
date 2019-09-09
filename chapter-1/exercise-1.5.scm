;; Exercise 1.5

(define (p) (p))

(define (test x y) 
    (if (= 0 x) 0 y))

(test 0 (p))

;; ## Applicative-order evaluation
;; applicative-order evaluation will never finish evaluation as it's never able 
;; to reduce this test to pure values since the value of (p) is assigned to itself.

;; ## Normal-order evaluation
;; normal-order evaluation will return 0 as it will evaluate in steps, finishing with 0, e.g:

(define (p) (p))

(define (test x y) 
    (if (= 0 x) 0 y))

(test 0 (p))

(if (= 0 0) 0 (p))

(if #t 0 (p)) ;; evalutes to 0