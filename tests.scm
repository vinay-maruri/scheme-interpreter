;;; Test cases for Scheme.
;;;
;;; In order to run only a prefix of these examples, add the line
;;;
;;; (exit)
;;;
;;; after the last test you wish to run.

;;; **********************************
;;; *** Add more of your own here! ***
;;; **********************************

;;;Tests for Q5
(+ 4 5)
; expect 9

(+ 0 1)
; expect 1

(+ 77 2)
; expect 79

(* 3 4)
; expect 12

(* 30 20)
; expect 600

(- 9 8)
; expect 1

(- 8 9)
; expect -1

(- 888888 0)
; expect 888888

(- 0 888888)
; expect -888888

(/ 10 2)
; expect 5

(/ 10 3)
; expect 3.3333333333333335

(/ 102002 0)
; expect Error

(/ 4000 4)
; expect 1000

(odd? 4)
; expect False

(odd? 5)
; expect True

(odd? (- 5 4))
; expect True

(odd? (+ 7 3))
; expect False

(odd? 0)
; expect False

(odd? 3 4)
; expect Error

(even? 4)
; expect True

(even? 3)
; expect False

(even? (* 7 2))
; expect True

(even? (* 5 5))
; expect False

(even? 0)
; expect True

(even? 3 4)
; expect Error

(print 5)
; expect 5

(print 'odd?)
; expect odd?

(print 'even?)
; expect even?

(print '(+ 4 5))
; expect (+ 4 5)

(print (+ 4 5))
; expect 9

(print 4 5 4)
; expect Error

((/ 1 0) (print 'sos))
; expect Error

((print 'help) (/ 1 0))
; expect Error


;;;Tests for Q6
(define numbers 123)
; expect numbers

(define x 1000)
(define y 999)
(- x y)
; expect 1

(define summing (+ x x x))
; expect summing

(define (conditionals y z)
  (cond
    ((= y z) 2)
    ((< y z) 4)
    (else 6)))
; expect conditionals

(define problem (1300303 / 0))
; expect Error

(eval (define tx 55))
; expect 55

;;;Tests for Q7
'statement
;expect statement

'999/70469991775814
;expect 999/70469991775814

'(+ 4 67 105)
; expect (+ 4 67 105)

(quote quotations)
;expect quotations

(quote (display this phrase))
;expect (display this phrase)

(quote 'two phrases)
; expect Error


;;;Tests for Q8
(begin (* 5 2) (* 10 3))
; expect 30

(begin (/ 200 10) (quote word))
;expect word

(begin 2015 2016 2017)
; expect 2017

(begin 'this (+ 20 40 50) 3333)
; expect 3333
(define z 5)
(begin (define z (- z 1))
        (quote pass)
        (define z (- z 3)))
z
; expect 1

(begin 'ce 'cet 'cette)
; expect cette

(begin 9 (/ 1 0) 8)
; expect Error

;;;Tests for Q9
(lambda (c) (* c 2))
; expect (lambda (c) (* c 2))

(lambda (a b) (- 1000000 a b))
; expect (lambda (a b) (- 1000000 a b))

(lambda (e f g) (+ (* g g) (+ e f)))
; expect (lambda (e f g) (+ (* g g) (+ e f)))

(lambda (z) 2)
; expect (lambda (z) 2)

;;;Tests for Q10
(define (j b) (+ b b))
; expect j

(define (g b c) (* (+ b b) (/ b c)))
; expect g

(define (shorter x y) (- x y))
; expect shorter

(begin (define b 10) (cons b '(b d)))
; expect (10 b d)

;;; Tests for Q13
(and 35 44)
; expect 44

(and #t #f)
; expect False

(and (+ 6 5) (+ 30 1))
; expect 31

(and 0 #t)
; expect True

(and #t 0)
; expect 0

(and #t #f)
; expect False

(and #f #t)
; expect False

(and 404040 (+ 3 3))
; expect 6

(and 75 39393939 10)
; expect 10

(and 0 3 4)
; expect 4

(and (+ 20 73) (* 5 3) (- 10 9))
; expect 1

(and True False 0)
; expect False

(and 'sos 0 'omg)
; expect omg

(and 'thing1 'thing2 'thing3)
; expect thing3

(and False True True)
; expect False

(and #t #f #t)
; expect False

(and 4 'number #f)
; expect False

(and 'this #f 'one)
;expect False

(and 'truthful (+ 3 7) True)
; expect True

(and 7 9 (/ 1 0))
; expect Error

(or 'try 'again)
; expect try

(or 10 22)
; expect 10

(or (+ 88 1) (- 6 2))
; expect 89

(or 0 5)
; expect 0

(or (* 2 2) 8)
; expect 4

(or 'me 24)
; expect me

(or 559595959 300000 200001)
; expect 559595959

(or (* 88 10) (+ 1 2) (- 990000000009 - 23))
; expect 880

(or 'sos 'help 'nah)
; expect sos

(or (+ 22 1) 0 #t)
; expect 23

(or (+ 6 3) (- 3 20303) 555)
; expect 9

(or (- 10 20) 0 'help)
; expect -10

(or 'painfully #f 20393939)
; expect painfully

(or 4 (22 / 0) #f)
; expect 4

(or 9 0 #f)
; expect 9

(or #f 202002002 (- 9 8))
; expect 202002002

(or (/ 303030 0) 'well #f)
; expect Error: division by zero

(or #f #f #f)
; expect False

(or #f #t #f)
; expect True

(or #t #f #f)
; expect True

(or #f #f #t)
; expect True

(or (/ 1 0) 3 4)
; expect Error

;;; Tests for Q14
(cond ((< 3 1) 55)
      ((= 67 67) 22)
      (else 0))
; expect 22

(cond ((= 4 4) 'equality)
      ((5 > 1010) 'inequality)
      (else 'manipulation))
; expect equality

(cond ((> 4 22) 'this)
      ((= 0 9) 'that)
      (else 'those))
; expect those

(cond ((< 3 45) 5 6)
      (else 0))
; expect 6

(cond ((= 10 10) 5 (+ 22 1))
           (else 6 0))
; expect 23

(cond ((> 2 400) (+ 9 1))
      ((= 0 0) (- 200 199))
      (else (+ 8 1)))
; expect 1

(cond ((eq? #t #f) 0)
      ((eq? x y) 'differences)
      (else (+ 77 11)))
; expect 88

(cond ((< 4 2) 44)
      ((eq? #t #t) 'twenty)
      (else (+ 5050505 3)))
; expect twenty

(cond ((eq? #t #f) (+ 44 2))
      ((= 4 4))
      (else #f))
; expect True

(cond ((> 2 4) 'this)
      ((< 3 2) #f)
      (else 33 'test))
; expect test


;;;Tests for Q15
(define x 17)
(define y 33)
(let ((x 10)
      (y 5))
       (+ x y))
; expect 15

(define z 22)
(define w 'original)
(let ((z 6)
      (w 7))
      (list w z))
; expect (7 6)

(define b 3)
(let ((b 100)
        (d 6))
        (- b d))
; expect 94

(define g 10)
(define h 30)
(let ((g (+ h 3))
      (h (+ g 1)))
      (list g h))
; expect (33 11)

(define k 0)
(define x 18)
(let ((k 20)
      (h (* 5 2)))
      (cons k h))
; expect (20 . 10)

(define (five a) (* a 5))
(define (k a b)
    (let ((t (+ 1 a))
          (c (- 10 b)))
          (list t c)))
(k 3 4)
; expect (4 6)

(let ((x 1) (10 20)) x)
; expect Error

;;;Tests for Q16
(define y (mu(x) (+ x b)))
; expect y
(define z (lambda (a b) (y (- a 1))))
; expect z
(z 5 2)
; expect 6

(define r 33)
; expect r
(define p 22)
; expect p
(define g (mu(i) (+ i (* m p))))
; expect g
(define u (lambda (v m) (* v r)))
; expect u
(u 20 30)
; expect 660

(define a (mu (b) (+ b c)))
; expect a
(define x (lambda (b c) (a (* b 10))))
; expect x
(x 10 20)
; expect 120

(define k (mu (d) (* d i)))
; expect k
(define g (lambda (k d i) (k (+ d 20))))
(g k 3 4)
; expect 92

(define l (mu () t))
; expect l
(define (help fn t) (fn))
; expect help
(help l 5)
; expect 5
(define (s t) (mu () (lambda (d) (+ t d))))
; expect s
(define (v t) (((s (+ t 6))) (+ t 1)))
(v 3)
; expect 7
(mu ())
; expect Error

;;; These are examples from several sections of "The Structure
;;; and Interpretation of Computer Programs" by Abelson and Sussman.

;;; License: Creative Commons share alike with attribution

;;; 1.1.1

10
; expect 10

(+ 137 349)
; expect 486

(- 1000 334)
; expect 666

(* 5 99)
; expect 495

(/ 10 5)
; expect 2

(+ 2.7 10)
; expect 12.7

(+ 21 35 12 7)
; expect 75

(* 25 4 12)
; expect 1200

(+ (* 3 5) (- 10 6))
; expect 19

(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
; expect 57

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))
; expect 57


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Move the following (exit) line to run additional tests. ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;; 1.1.2

(define size 2)
; expect size
size
; expect 2

(* 5 size)
; expect 10

(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))
; expect 314.159

(define circumference (* 2 pi radius))
circumference
; expect 62.8318

;;; 1.1.4

(define (square x) (* x x))
; expect square
(square 21)
; expect 441

(define square (lambda (x) (* x x))) ; See Section 1.3.2
(square 21)
; expect 441

(square (+ 2 5))
; expect 49

(square (square 3))
; expect 81

(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)
; expect 25

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)
; expect 136

;;; 1.1.6

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
(abs -3)
; expect 3

(abs 0)
; expect 0

(abs 3)
; expect 3

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
(a-plus-abs-b 3 -2)
; expect 5

;;; 1.1.7

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt x)
  (sqrt-iter 1.0 x))
(sqrt 9)
; expect 3.00009155413138

(sqrt (+ 100 37))
; expect 11.704699917758145

(sqrt (+ (sqrt 2) (sqrt 3)))
; expect 1.7739279023207892

(square (sqrt 1000))
; expect 1000.000369924366

;;; 1.1.8

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
(sqrt 9)
; expect 3.00009155413138

(sqrt (+ 100 37))
; expect 11.704699917758145

(sqrt (+ (sqrt 2) (sqrt 3)))
; expect 1.7739279023207892

(square (sqrt 1000))
; expect 1000.000369924366

;;; 1.3.1

(define (cube x) (* x x x))
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))
(sum-cubes 1 10)
; expect 3025

(define (identity x) x)
(define (sum-integers a b)
  (sum identity a inc b))
(sum-integers 1 10)
; expect 55

;;; 1.3.2

((lambda (x y z) (+ x y (square z))) 1 2 3)
; expect 12

(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (square a))
       (* y b)
       (* a b))))
(f 3 4)
; expect 456

(define x 5)
(+ (let ((x 3))
     (+ x (* x 10)))
   x)
; expect 38

(let ((x 3)
      (y (+ x 2)))
  (* x y))
; expect 21

;;; 2.1.1

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))
(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))
(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))
(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))
(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define x (cons 1 2))
(car x)
; expect 1

(cdr x)
; expect 2

(define x (cons 1 2))
(define y (cons 3 4))
(define z (cons x y))
(car (car z))
; expect 1

(car (cdr z))
; expect 3

z
; expect ((1 . 2) 3 . 4)

(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))
(define (print-rat x)
  (display (numer x))
  (display '/)
  (display (denom x))
  (newline))
(define one-half (make-rat 1 2))
(print-rat one-half)
; expect 1/2

(define one-third (make-rat 1 3))
(print-rat (add-rat one-half one-third))
; expect 5/6

(print-rat (mul-rat one-half one-third))
; expect 1/6

(print-rat (add-rat one-third one-third))
; expect 6/9

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))
(print-rat (add-rat one-third one-third))
; expect 2/3

(define one-through-four (list 1 2 3 4))
one-through-four
; expect (1 2 3 4)

(car one-through-four)
; expect 1

(cdr one-through-four)
; expect (2 3 4)

(car (cdr one-through-four))
; expect 2

(cons 10 one-through-four)
; expect (10 1 2 3 4)

(cons 5 one-through-four)
; expect (5 1 2 3 4)

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))
(map abs (list -10 2.5 -11.6 17))
; expect (10 2.5 11.6 17)

(map (lambda (x) (* x x))
     (list 1 2 3 4))
; expect (1 4 9 16)

(define (scale-list items factor)
  (map (lambda (x) (* x factor))
       items))
(scale-list (list 1 2 3 4 5) 10)
; expect (10 20 30 40 50)

(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))
(define x (cons (list 1 2) (list 3 4)))
(count-leaves x)
; expect 4

(count-leaves (list x x))
; expect 8

;;; 2.2.3

(define (odd? x) (= 1 (remainder x 2)))
(define (filter predicate sequence)
  (cond ((null? sequence) nil)
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))
(filter odd? (list 1 2 3 4 5))
; expect (1 3 5)

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))
(accumulate + 0 (list 1 2 3 4 5))
; expect 15

(accumulate * 1 (list 1 2 3 4 5))
; expect 120

(accumulate cons nil (list 1 2 3 4 5))
; expect (1 2 3 4 5)

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))
(enumerate-interval 2 7)
; expect (2 3 4 5 6 7)

(define (enumerate-tree tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
                      (enumerate-tree (cdr tree))))))
(enumerate-tree (list 1 (list 2 (list 3 4)) 5))
; expect (1 2 3 4 5)

;;; 2.3.1

(define a 1)

(define b 2)

(list a b)
; expect (1 2)

(list 'a 'b)
; expect (a b)

(list 'a b)
; expect (a 2)

(car '(a b c))
; expect a

(cdr '(a b c))
; expect (b c)

(define (memq item x)
  (cond ((null? x) false)
        ((equal? item (car x)) x)
        (else (memq item (cdr x)))))
(memq 'apple '(pear banana prune))
; expect False

(memq 'apple '(x (apple sauce) y apple pear))
; expect (apple pear)

(define (my-equal? x y)
  (cond ((pair? x) (and (pair? y)
                        (my-equal? (car x) (car y))
                        (my-equal? (cdr x) (cdr y))))
        ((null? x) (null? y))
        (else (equal? x y))))
(my-equal? '(1 2 (three)) '(1 2 (three)))
; expect True

(my-equal? '(1 2 (three)) '(1 2 three))
; expect False

(my-equal? '(1 2 three) '(1 2 (three)))
; expect False

;;; Peter Norvig tests (http://norvig.com/lispy2.html)

(define double (lambda (x) (* 2 x)))
(double 5)
; expect 10

(define compose (lambda (f g) (lambda (x) (f (g x)))))
((compose list double) 5)
; expect (10)

(define apply-twice (lambda (f) (compose f f)))
((apply-twice double) 5)
; expect 20

((apply-twice (apply-twice double)) 5)
; expect 80

(define fact (lambda (n) (if (<= n 1) 1 (* n (fact (- n 1))))))
(fact 3)
; expect 6

(fact 50)
; expect 30414093201713378043612608166064768844377641568960512000000000000

(define (combine f)
  (lambda (x y)
    (if (null? x) nil
      (f (list (car x) (car y))
         ((combine f) (cdr x) (cdr y))))))
(define zip (combine cons))
(zip (list 1 2 3 4) (list 5 6 7 8))
; expect ((1 5) (2 6) (3 7) (4 8))

(define riff-shuffle (lambda (deck) (begin
    (define take (lambda (n seq) (if (<= n 0) (quote ()) (cons (car seq) (take (- n 1) (cdr seq))))))
    (define drop (lambda (n seq) (if (<= n 0) seq (drop (- n 1) (cdr seq)))))
    (define mid (lambda (seq) (/ (length seq) 2)))
    ((combine append) (take (mid deck) deck) (drop (mid deck) deck)))))
(riff-shuffle (list 1 2 3 4 5 6 7 8))
; expect (1 5 2 6 3 7 4 8)

((apply-twice riff-shuffle) (list 1 2 3 4 5 6 7 8))
; expect (1 3 5 7 2 4 6 8)

(riff-shuffle (riff-shuffle (riff-shuffle (list 1 2 3 4 5 6 7 8))))
; expect (1 2 3 4 5 6 7 8)

;;; Additional tests

(apply square '(2))
; expect 4

(apply + '(1 2 3 4))
; expect 10

(apply (if false + append) '((1 2) (3 4)))
; expect (1 2 3 4)

(if 0 1 2)
; expect 1

(if '() 1 2)
; expect 1

(or false true)
; expect True

(or)
; expect False

(and)
; expect True

(or 1 2 3)
; expect 1

(and 1 2 3)
; expect 3

(and False (/ 1 0))
; expect False

(and True (/ 1 0))
; expect Error

(or 3 (/ 1 0))
; expect 3

(or False (/ 1 0))
; expect Error

(or (quote hello) (quote world))
; expect hello

(if nil 1 2)
; expect 1

(if 0 1 2)
; expect 1

(if (or false False #f) 1 2)
; expect 2

(define (loop) (loop))
(cond (false (loop))
      (12))
; expect 12

((lambda (x) (display x) (newline) x) 2)
; expect 2 ; 2

(define g (mu () x))
(define (high f x)
  (f))

(high g 2)
; expect 2

(define (print-and-square x)
  (print x)
  (square x))
(print-and-square 12)
; expect 12 ; 144

(/ 1 0)
; expect Error

(define addx (mu (x) (+ x y)))
(define add2xy (lambda (x y) (addx (+ x x))))
(add2xy 3 7)
; expect 13


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Scheme Implementations ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; len outputs the length of list s
(define (len s)
  (if (eq? s '())
    0
    (+ 1 (len (cdr s)))))
(len '(1 2 3 4))
; expect 4


;;;;;;;;;;;;;;;;;;;;
;;; Extra credit ;;;
;;;;;;;;;;;;;;;;;;;;
(exit)


; Tail call optimization tests

(define (sum n total)
  (if (zero? n) total
    (sum (- n 1) (+ n total))))
(sum 1001 0)
; expect 501501

(define (sum n total)
  (cond ((zero? n) total)
        (else (sum (- n 1) (+ n total)))))
(sum 1001 0)
; expect 501501

(define (sum n total)
  (begin 2 3
    (if (zero? n) total
      (and 2 3
        (or false
          (begin 2 3
            (let ((m n))
              (sum (- m 1) (+ m total)))))))))
(sum 1001 0)
; expect 501501



; call/cc primitive procedure tests

(define (function return)
  (return 'return-value)
  'after-return)

(function (lambda (x) x))
; expect after-return

(call/cc function)
; expect return-value

(call/cc (lambda (return) (return 'return-value) 'other-value))
; expect return-value

(define (helper-two return)
  (define (f cont) (cont 2) 3)
  (return (* 10 (call/cc f))))

(call/cc helper-two)
; expect 20

(define (hailstone n return)
        (print n)
        (if (= n 1)
            (return ()))
        (if (= 1 (modulo n 2))
            (hailstone (+ 1 (* 3 n)) return))
        (hailstone (quotient n 2) return))

(call/cc (lambda (cont) (hailstone 100 cont)))
; expect ()



; macro tests

(define (map f lst)
    (if (null? lst)
        nil
        (cons
            (f (car lst))
            (map f (cdr lst)))))

(define-macro (for formal iterable body)
         (list 'map (list 'lambda (list formal) body) iterable))

(for i '(1 2 3)
    (if (= i 1)
        0
        i))
; expect (0 2 3)

(define (cadr s) (car (cdr s)))
(define (cars s) (map car s))
(define (cadrs s) (map cadr s))

(define-macro (leet bindings expr)
    (cons
        (list 'lambda (cars bindings) expr)
        (cadrs bindings)))

(define (square x) (* x x))
(define (hyp a b)
  (leet ((a2 (square a)) (b2 (square b))) (sqrt (+ a2 b2))))

(hyp 3 4)
; expect 5.000023178253949
