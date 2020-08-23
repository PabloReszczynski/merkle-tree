#lang racket/base

(require rackunit
         rackunit/text-ui
         "main.rkt")

(define tests
  (test-suite "Merkle Tree tests"
    (test-case "The root of a merkle tree should have a tag equal
                to the hash of the concatenation of its children tags"
      (check-equal? (make-merkle-root)
                    '(:hash 0
                      :children '())))
    (test-case "A leaf of the merkle tree should contain the data it represents
               and the hash of that data"
      (check-equal? (make-merkle-leaf "some-data")
                    '(:hash "31568d94c1ff0505d173ca6b5cc3cf49"
                      :data "some-data")))))

(run-tests tests)
