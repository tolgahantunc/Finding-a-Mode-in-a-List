#lang racket

(define make-element-freq-list
  (lambda (l)
    (let loop ((l l) (candidate '()) (count 0))      
      (cond
        ((null? (cdr l)) (append candidate (list (cons (car l) (+ count 1)))))
      (else
      (if (equal? (car l) (cadr l))
          (loop (cdr l) candidate (+ count 1))
          (loop (cdr l) (append candidate (list (cons (car l) (+ count 1)))) 0 )))))))

(define mode
  (lambda (l)
    (let loop ((l l) (max-freq (cdar l)) (mode (caar l)))
      (cond
        ((null? l) mode)        
        (else
         (if (> max-freq (cdar l))
             (loop (cdr l) max-freq mode) 
             (loop (cdr l) (cdar l) (caar l) )))))))
