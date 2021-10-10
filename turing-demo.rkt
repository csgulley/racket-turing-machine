#lang racket

(define tape (make-vector 1000))
(define scanned-square 0)

(define (b)
  (vector-set! tape scanned-square '0)
  (set! scanned-square (add1 scanned-square))
  (c)
  )

(define (c)
  (set! scanned-square (add1 scanned-square))
  (e)
  )

(define (e)
  (vector-set! tape scanned-square '1)
  (set! scanned-square (add1 scanned-square))
  (f)
  )

(define (f)
  (set! scanned-square (add1 scanned-square))
  (b)
  )

(b)
(display (vector-take tape 10))
