# Fortran strings

Difference between:

Unknown length
character(len = *) :: file_location

Dynamic length (heap)
character(len = :), allocatable :: file_string