# How to install modern Fortran.

(notify that gfortran doesn't have all features implemented, and let them know they can get the intel fortran compiler for free
  (https://gcc.gnu.org/wiki/Fortran2003Status)
  (https://gcc.gnu.org/wiki/Fortran2008Status)
  (https://gcc.gnu.org/wiki/Fortran2018Status))

(let them know that we will be using gfortran because it's available out of the box on most linux distros)

(how to install fpm and gfortran here)

(how to initialize a fortran project)

(open project and show around)

## fpm:

fpm is the Fortran Package Manager.
fpm makes working with fortran extremely easy. 
Think cargo for rust, or deno for typescript.

## Linux Instructions 

Get fpm here:

https://github.com/fortran-lang/fpm

(You get the latest one in github releases.)

Then you can simply rename the executable to fpm and move it into the system bin location as so (if it's in your Downloads folder on Linux):


```
cd Downloads/

mv fpm-* fpm

chmod +x fpm

sudo mv fpm /usr/bin/
```

Now you should be able to run fpm anywhere in your system. :)

## Windows Instructions

todo: windows instructions