#lang at-exp racket/base

(require scribble/manual
         scribble/core
         scribble/html-properties
         scribble/latex-properties
         scriblib/render-cond
         racket/runtime-path
         setup/collects
         racket/list
         racket/format
         (only-in xml cdata)
         (only-in racket/match match)
         (only-in racket/system process)
         (only-in racket/port port->string)
         (for-syntax racket/base)
         (for-syntax racket/format))


(provide (except-out (all-from-out racket/base)
                     #%module-begin)
         (rename-out [module-begin #%module-begin])
         title
         author
         date
         location
         url
         cat)
 
(define-syntax-rule (module-begin expr ...)
  (#%module-begin
   (define ref (quasiquote (~a ...)))
   (provide ref)))



(define (author t)   ~a{"Author:" @t})
(define (date t)     ~a{"Date:" @t})
(define (location t) ~a{"Location:" @t})
(define (url l)      ~a{"URL:" @(hyperlink l l)})
(define (cat t)      ~a{"cat:" @t})
