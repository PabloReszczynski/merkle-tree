#lang racket/base

(require rackunit
         rackunit/text-ui
         "main.rkt")

(define tests
  (test-suite "Merkle Tree tests"
    (test-case "It can be constructed"
      (check-not-equal? (make-merkle-root) #f))))

(run-tests tests)
