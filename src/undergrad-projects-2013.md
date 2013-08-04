# Soft-Dev Undergraduate Project Ideas for 2013

The following items are ideas for undergraduate computer science
projects at King's College London.

## A Meta-Traced Caml Light Interpreter in RPython.

The software development team at King's College London is interested in
the composition of programming languages. Recent research has seen the
composition of vastly different languages such as Python and Prolog.
This composition was realised by RPython, a platform for implementing
meta-tracing JIT compilers in Python.

The composition of Python and Prolog allows us to explore the benefits
and drawbacks of a meta-traced composition of imperative and declarative
programming languages. Areas yet unexplored in our meta-traced language
compositions are:

 * Statically typed languages.
 * Functional languages.
 * Type inferred languages.

Caml Light is a statically typed, functional programming language that
implements type inference.  I propose that a student could implement
Caml Light in RPython. The outcomes of the project would be:

 * A meta-traced JIT compiler for Caml Light written in RPython.
 * A set of benchmarks evaluating the performance of the compiler.

Using the proposed Caml Light implementation, the software development
team may then:

 * Identify challenges in integrating the functional paradigm in language compositions.
 * Evaluate the performance of such compositions.
 * Further evaluate RPython as a meta-tracing platform.

## SQLite Syntax Integration for Python via Language Boxes

Recently, members of the Software Development Team at King's College
London published work on Language boxes; a new way to compose
programming language grammars whilst avoiding ambiguity issues commonly
associated with such compositions. Accompanying this research was an
experimental implementation of a language-box-aware programmer's editor.
The editor demonstrates language boxes for Java, SQL and an imaginary
chemical language, but does not yet produce executable programs.

I propose that a student could extend the editor project to enable the
creation of executable compositions of Python and SQL. This proposal is
quite flexible, but I imagine the project would create the following
deliverables:

 * The design and implementation of some kind of intermediate representation.
   For example, one possibility (and probably the simplest) is to translate
   the composed Python/SQL program to Python code that calls the SQLite3 API.
   Of course there are many other valid options.

 * A set of demonstrations (in the form of code examples) showcasing the
   benefits of the composition.

 * Possibly a study evaluating the ease-of-use of the editor for
   composed Python/SQL. This would require some kind of a survey asking
   experienced programmers to try out the editor.

