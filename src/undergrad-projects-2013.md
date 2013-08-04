## Soft-Dev Undergraduate Project Ideas for 2013

The following items are ideas for undergraduate computer science
projects at King's College London.

### A Meta-Traced Caml Light Interpreter in RPython.

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

### SQLite Syntax Integration for Python via Language Boxes

Recently, members of the Software Development Team at King's College
London published work on Language boxes; a new way to compose
programming language grammars whilst avoiding ambiguity issues commonly
associated with such compositions. Accompanying this research was an
experimental implementation of a language-box-aware programmer's editor.
The editor demonstrates language boxes for Java, Python, SQL and an imaginary
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

### Meta-traced SAT Solver in RPython

The Boolean satisfiability problem is now well recognised in both
academic and industrial circles. By encoding a problem as a Boolean
formula, an automated SAT solver can be used to find satisfying
assignments to propositional variables.

Often a software system will deploy a SAT solver for one specific
purpose in an overall larger piece of functionality. For example, some
Linux distributions use a SAT solver to resolve package dependencies.
It is common that the SAT solver is integrated via an external call
to a decision procedure written in (for example), C. However, would it
not be more elegant to consider a Boolean formula as a domain specific
language which is then composed with another general purpose language?
Further, would Boolean SAT be a good candidate for meta-tracing?

I propose that a student implements a SAT solver RPython. The outcomes
of this project would be:

 * A meta-tracing SAT solver written in RPython.
 * A set of benchmarks which evaluate the performance of the SAT solver.
   Comparisons should be drawn with other leading SAT solvers such as
   MiniSAT.

Although this does not directly address the question of whether Boolean
formulae would make a reasonable DSL for language compositions, the
resulting compiler would certainly be the first step towards such a
goal.

### A Lightweight Trace Inspector for PyPy

PyPy is a fast meta-tracing implementation of the popular Python
programming language. The PyPy community takes performance seriously and
as a result has implemented instrumentation which can help to debug
possible performance issues.  Due to the sheer amount of raw data that
the aforementioned instrumentation generates, ideally an external tool
is used to process and present this raw information. One such example is
the web-based jitviewer project.

Whilst the jitviewer project provides the right amount of functionality
for debugging performance issues, unfortunately it has a fair few
dependencies and some users may prefer to use a desktop application (as
opposed to a web application). Furthermore, the setup process of
jitviewer is complicated by the need to install dependencies inside a
PyPy virtualenv.

I propose that a student could write a minimal trace inspector/debugger
for PyPy using a minimal number of external libraries. Perhaps this
would be a py-tkinter or py-gtk application? In fact, this tooling could
be written in any language, although ideally it would be written in
Python so as to allow easy modification by PyPy developers.

The outcomes of this project would be:

 * A graphical trace inspector for PyPy.
 * A documentation for the inspector.
 * A demonstration (webcast/tutorial) showing how the GUI can be used to
   identify performance problems.

### A Query Interface to OpenBSD ktrace(1)

ktrace(1) is a system call tracer for OpenBSD. Ktrace monitors a running
binary executable and records every system call performed. This
information can be useful when black-box debugging a program (i.e.
without the source code). Ktrace is similar to systrace(1) for Linux or
truss(1) for Solaris.

Currently ktrace(1) dumps its information out to a binary log file which
is then interpreted by kdump(1) to give a report. This report is
incredibly detailed and it can be difficult to extract the required
information.

For example, consider you wish to know how many bytes were written to a
named file. Since the low-level UNIX file IO is in terms of file
descriptors (and not file names), one must first find the file
descriptor which corresponds to the named file. Furthermore, this file
descriptor may be re-allocated to a different file opened at a later
date. Would it not be useful to extract the slice of the trace under
which the named file is open? This would make it much easier to navigate
the ktrace logs.

This is of course, but one example.

I propose that a student writes a queryable interface to ktrace logs to
aid system call inspection under OpenBSD.

The outcomes of this project would be:

 * Some kind of query language by which the user would specify their needs.
 * An "interpreter" for this language which extracts the necessary trace information.
 * A presentational layer on top of the above which makes reading the
   trace easier. This should probably be text-based to match the ethos of
   OpenBSD.

Note that this project is not related to meta-tracing or RPython as with
the other projects.
