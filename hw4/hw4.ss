;;; CMSC 331 HW4, Fall 2014.  Christopher S Sidell, csidell1@umbc.edu

(define (pass)
  ;; this is a a dummy function.  You should replace calls to it with
  ;; your own scheme code
  null)

;;  returns the number of zeros in a given simple list of
;;  numbers.
(define (countZeros aList)
  (let loop ((aList aList)
      (count 0))
    (cond ((null? aList) count)
      ((zero? (car aList)) (loop (cdr aList) (+ count 1)))
      (else (loop (cdr aList) count))))
  )

;; returns a list consisting of the smallest and largest values in
(define (findMinMax aList)
  (list (apply min aList) (apply max aList))
  )

;; takes a list and removes the last element of the list. 
(define (chopList aList) 
  (reverse (cdr (reverse aList)))
  )

;; takes a list with possible many nested sublists, and returns a
;; list with all atoms at the top level.
(define (unravel aList)
  (cond ((null? aList) '())
      ((not (pair? aList)) (list aList))
      (else (append (unravel (car aList))
                    (unravel (cdr aList))))))
  ;; takes a list with possible many nested sublists, and returns a
  ;; list with all atoms at the top level. For example, 
  ;; (unravel '(1 (2 3) (a (b c)))) should return the list (1 2 3 a b c)

;I've been dealing with Lupoli for 341 and his submit system is down at 9:27PM
;I have a math intensive lab to complete and pre/post labs to write up
;I'll take the 10% hit than the huge hits from the other classes, sorry :(
(define (eqStruc l1 l2)
;  (cond (or (list? l1) (list? l2))
;    (not (list? l1)) (not (list? l2))
;    #f
;    )
;  #t
  ;;compare two lists to start
  ;;compare the structures inside the lists
  
  ;; tests for the structural equality of two input lists. Two lists
  ;; are structurally equal if they have the same list structure,
  ;; although their atoms may be different. For example, the lists '(1
  ;; 2 3 ) and '(4 5 6) are structurally equal. The lists '(a (b c) d)
  ;; and '(a b (c d)) are not structurally equal.
  (pass))