module mo_timing

#ifdef USE_TIMING
   use gptl
#endif

   implicit none
   public :: tinitialize, tfinalize, tpr_file, tstart, tstop

contains

   !***************************************************************************
   subroutine tinitialize()
      integer :: err
#ifdef USE_TIMING
      err = gptlinitialize()
#endif
   end subroutine tinitialize
   !***************************************************************************
   subroutine tfinalize()
      integer :: err
#ifdef USE_TIMING
      err = gptlfinalize()
#endif
   end subroutine tfinalize
   !***************************************************************************
   subroutine tpr_file(file_name)
      character(len=*), intent(in) :: file_name
      integer :: err
#ifdef USE_TIMING
      err = gptlpr_file(file_name)
#endif
   end subroutine tpr_file
   !***************************************************************************
   subroutine tstart(timer_name)
      character(len=*), intent(in) :: timer_name
      integer :: err
#ifdef USE_TIMING
      err = gptlstart(timer_name)
#endif
   end subroutine tstart
   !***************************************************************************
   subroutine tstop(timer_name)
      character(len=*), intent(in) :: timer_name
      integer :: err
#ifdef USE_TIMING
      err = gptlstop(timer_name)
#endif
   end subroutine tstop
   !***************************************************************************

end module mo_timing
