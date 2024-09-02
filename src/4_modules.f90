! Here, you will see a module called `modules`.
module modules


  ! This is a module. A module is one of the lowest building blocks of Fortran.
  !
  ! A module is very simple. You can put your code, parameters, variables, types,
  ! functions, subroutines, and interfaces in it.
  !
  ! You can import a module into another module/program.
  !
  ! You cannot, let's say import A to B, then B to A. This is a cyclical dependency.


  ! You can have module level `implicit none`.
  ! We will get to `implicit none` in `5_variables_and_parameters.f90`.
  implicit none


  ! A module's components will be public by default, but we can change this with
  ! the private keyword.
  private


  ! You can put parameters, variables, types, and interfaces before the `contains`
  ! keyword. The `contains` keyword denotes we are starting the code portion of the module.
contains


  ! Here is where functions and subroutines will go.
  ! We will get to that in `6_functions_and_subroutines.f90`


! You can end your module with the following:
! end
! end module
! end module module_name
!
! I always use the last option as it helps me navigate with multiple modules in a single file.
! You will see this throughout this tutorial.
end module modules


! And yes, you can have multiple modules in a single file.
module another_module
end module another_module
