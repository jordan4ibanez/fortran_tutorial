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


contains




  !!(different basic types)

  !!(how to create variables)

end module variables_and_parameters
