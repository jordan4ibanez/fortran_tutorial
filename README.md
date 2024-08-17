# fortran_tutorial
 Learn modern fortran.


## Why Fortran?

If you browse my repositories on here, you will see I've been up and down the block when it comes to programming languages.
I started using modern Fortran just to see what it's like.

The approach was: "This language is so old this probably won't even compile on a modern machine. If it does it's probably terrible to use."

Needless to say, that was a very wrong assumption.

Modern Fortran is a very down to business language. It's a delight to use. You get a low level language with high level concepts. When you need to talk to C for things Fortran has no concept of (like file systems), it's easy. It also seems to be an **extremely** fast language to top it off.


# How to view this tutorial:

Tutorial 1 and 2 are in the root of this. But to see the rest, follow these links for the Markdown files and accompanying source code.



# Notes:

Implicit save: (Thanks to Verlio_H for notifying that this is a common pitfall)
If you initialize a variable in a type, it just becomes the default.
If you initialize a variable in a subroutine or a function, it implicitly gets the save attribute. This will maintain state across each call of the function.
  With the default initializer being it's initial value.

ways to define 32 bit floats:
real(4)
real(real32)
real(c_float)

ways to define 64 bit floats
real(8)
real(real64) 
real(c_double)

(Just use C types so it's easier to understand)

Allocatable - Will automatically deallocate once the variable goes out of scope. Do not manually deallocate cause that's dumb.
Pointer - Will NOT automatically deallocate.

NEVER, set ``this`` to ``value`` in a type method or IT WILL blow up!

in C:

(For C bindings)
``const char *`` would be interopped as ``character(kind = c_char), intent(in)``

This is because C does pointer arithmetic on the location we give it and we can use it to our advantage. Fortran will pass by reference by default. You could consider this ``&my_variable`` in C.
You must ensure that the string is null terminated. You can do this with ``string//achar(0)``

``const char **`` would be interopped as ``character(len = *, kind = c_char), intent(in)`` (if you only want 1)

This one, I am still unsure why we need the length component. But I'm sure someone will tell me eventually.




Back to fortran:

``character(len = :), allocatable`` is a dynamic length string in the heap.

BUT

That's not the same as ``character, dimension(:), allocatable`` because the former is scalar (1 value, [aka not an array]) and this one is an array of characters.

