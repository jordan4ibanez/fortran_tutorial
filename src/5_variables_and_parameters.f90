module variables_and_parameters
  implicit none


  private ! I always space things out by 2 lines. I just like the way it looks. :)


  ! A private module variable.
  !
  ! This can be changed throughout the module.
  !
  ! It is only visible in the module.
  integer :: my_secret_variable

  ! A public module variable.
  !
  ! This can be changed throughout the module and in any module/program that imports it.
  !
  ! It is visible to anything that imports it.
  integer, public :: a_public_variable


  ! A parameter follows the same visibility rules as a variable with one slight
  ! difference: It cannot be changed.
  !
  ! In other languages, this is known as a constant.
  !
  ! It must be defined as well.
  integer, parameter :: immutable_secret_magic_number = 5


  ! So, some variable base types. There are a few built in.


  ! Whole numbers.
  integer :: a_whole_number = 123

  ! Floating point numbers.
  real :: floating_number = 0.132

  ! Complex floating point.
  ! Consists of an integral and single precision floating point component.
  complex :: very_serious_number = complex(10, 0.010001)

  ! Characters.
  ! Can be a single character, string, or character array.
  ! We will focus on this more in `7_strings_and_arrays.f90`
  character :: my_char = "a"
  character(len = 8) :: my_string = "Hi there"
  character, dimension(8) :: my_char_array = (/"h", "i", " ", "t", "h", "e", "r", "e"/)

  ! Logical
  ! .true. or .false.
  ! In other languages, these are called booleans.
  logical :: it_is_true = .true.


  ! Derived types.
  !
  ! This is an object oriented aspect of fortran that allows you to
  ! create custom data containers for things.
  !
  ! todo: create a section for this.
  type :: player
    character(len = :), allocatable :: name
    integer :: health = 10
    integer :: xp = 0
    real :: speed = 0.0
  end type player


  ! We shall now hop into the contains section to show some other things.
  !
  ! Ignore that they're subroutines. I am only using them to containerize imports.
contains


  ! You can use C types in fortran.
  ! You simply import the iso_c_binding and you can be on your way.
  subroutine cool_c_types()
    use, intrinsic :: iso_c_binding
    implicit none

    ! You can define what kind of variable type you want to use.
    integer(c_int) :: a_c_integer
    real(c_float) :: single_float_precision
    real(c_double) :: double_float_precision
    character(c_char) :: c_this_char = "a"
    character(len = :, kind = c_char), allocatable :: dynamic_string_with_c_chars
    character(c_char), dimension(:), allocatable :: dynamic_c_char_array
    logical(c_bool) :: c_truthy = .false.

    ! These are special types. We will cover these in a later portion of the tutorial.
    !
    ! todo: cover pointers and c_ptrs.
    type(c_ptr) :: pointer_to_address
    type(c_funptr) :: pointer_to_c_function

    ! This part is so you don't see yellow unused warnings in this subroutine. :)
    if (.false.) then
      print*,a_c_integer,single_float_precision,double_float_precision,c_this_char,dynamic_string_with_c_chars,dynamic_c_char_array,c_truthy,pointer_to_address,pointer_to_c_function
    end if

    ! If you would like to see all the C types that gfortran supports, see here:
    ! https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fC_005fBINDING.html
  end subroutine cool_c_types


  ! This part is so you don't see yellow unused warnings all over the place. :)
  subroutine turn_off_warnings()
    implicit none

    if (.false.) then
      print*,my_secret_variable,a_whole_number,floating_number,very_serious_number,my_char,my_string,my_char_array,it_is_true
    end if
  end subroutine turn_off_warnings


end module variables_and_parameters
