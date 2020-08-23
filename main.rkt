#lang racket/base

(require openssl/md5)

(provide make-merkle-root)
(provide make-merkle-leaf)

(define (make-merkle-root)
  '(:hash 0
    :children '()))

(define (make-merkle-leaf data)
  (let* [(sp (open-input-string data))
         (hash (md5 sp))]
    `(:hash ,hash
      :data ,data)))
