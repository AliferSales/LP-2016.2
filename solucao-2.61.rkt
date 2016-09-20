#lang racket

(define (adjoin-set x set)
  (cond ((or (empty? set) (< x (car set))) (cons x set))
         ((= x (car set)) set) 
         ((> x (car set))(cons (car set) (adjoin-set x (cdr set))))))

