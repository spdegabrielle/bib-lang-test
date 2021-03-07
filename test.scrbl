#lang scribble/manual

@; Code here
@(define (path-string->string p-str)
  (if (string? p-str)
      p-str
      (path->string p-str)))

@; make-submod-path : path-string?
@(define (make-submod-path script-filename)
  (list 'submod
        (list 'file (path-string->string script-filename))))

@; get-ref : path-string?
@(define (get-ref script-filename)
  (dynamic-require (make-submod-path script-filename)
                   'ref
                   (λ () #f)))

@title{hello}

@section{section 1}

@get-ref{bib-lang-test.scrbl}

Hi