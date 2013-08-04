# Soft-Dev Undergrauduate Project Ideas for 2013

The following items are ideas for undergraduate computer science
projects at King's College London.

## A Caml Light Interpreter in RPython.

The software development team at King's College London is interested in
the composition of programming languages. Recent research has seen the
composition of vastly different languages such as Python and Prolog.
This composition was realised by RPython, a platform for implementing
meta-tracing JIT compilers in Python.

The composition of Python and Prolog allows us to explore the benefits
and drawbacks of a meta-traced composition of imperative and declarative
programming languages. One area yet unexplored, however, is how
functional programming languages would fare in a meta-traced language
composition.

I propose that a student could implement Caml Light in RPython. The outcomes
of the project would be:

 * A meta-traced JIT compiler for Caml Light written in RPython.
 * A set of benchmarks evaluating the performance of the compiler.

Using the proposed Caml Light implementation, the software development
team may then:

 * Identify challenges in integrating the functional paradigm in language compositions.
 * Evaluate the performance of such compositions.
 * Further evaluate RPython as a meta-tracing platform.
