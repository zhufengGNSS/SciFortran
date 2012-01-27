subroutine data_saveV_I(pname,Y1)
  integer                          :: i,j,Np
  character(len=*)                 :: pname
  integer,dimension(:)             :: Y1
  Np=size(Y1)  
  open(719,file=trim(adjustl(trim(pname))))
  do i=1,Np
     write(719,*)Y1(i)
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveV_I
!----------------------------
subroutine data_saveV_R(pname,Y1)
  integer                          :: i,j,Np
  character(len=*)                 :: pname
  real(8),dimension(:)             :: Y1
  Np=size(Y1)  
  open(719,file=trim(adjustl(trim(pname))))
  do i=1,Np
     write(719,*)Y1(i)
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveV_R
!----------------------------
subroutine data_saveV_C(pname,Y1)
  integer                          :: i,j,Np
  character(len=*)                 :: pname
  complex(8),dimension(:)          :: Y1
  Np=size(Y1)  
  open(719,file=trim(adjustl(trim(pname))))
  do i=1,Np
     write(719,*)dimag(Y1(i)),real(Y1(i),8)
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveV_C

!----------------------------
!----------------------------
!----------------------------

subroutine data_saveM_I(pname,Y1,X)
  integer                                :: i,j,Ny1,Ny2
  character(len=*)                       :: pname
  integer,dimension(:,:)                 :: Y1
  real(8),optional,dimension(size(Y1,2)) :: X
  Ny1=size(Y1,1) ; Ny2=size(Y1,2)
  open(719,file=adjustl(trim(pname)))
  do i=1,Ny1
     do j=1,Ny2
        if(present(X))then
           write(719,*)X(j),Y1(i,j)
        else
           write(719,*)Y1(i,j)
        endif
     enddo
     write(719,*)""
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveM_I
!----------------------------
subroutine data_saveM_R(pname,Y1,X)
  integer                                :: i,j,Ny1,Ny2
  character(len=*)                       :: pname
  real(8),dimension(:,:)                 :: Y1
  real(8),optional,dimension(size(Y1,2)) :: X
  Ny1=size(Y1,1) ; Ny2=size(Y1,2)
  open(719,file=adjustl(trim(pname)))
  do i=1,Ny1
     do j=1,Ny2
        if(present(X))then
           write(719,*)X(j),Y1(i,j)
        else
           write(719,*)Y1(i,j)
        endif
     enddo
     write(719,*)""
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveM_R
!----------------------------
subroutine data_saveM_C(pname,Y1,X)
  integer                                :: i,j,Ny1,Ny2
  character(len=*)                       :: pname
  complex(8),dimension(:,:)              :: Y1
  real(8),optional,dimension(size(Y1,2)) :: X
  Ny1=size(Y1,1) ; Ny2=size(Y1,2)
  open(719,file=adjustl(trim(pname)))
  do i=1,Ny1
     do j=1,Ny2
        if(present(X))then
           write(719,*)X(j),dimag(Y1(i,j)),real(Y1(i,j),8)
        else
           write(719,*)dimag(Y1(i,j)),real(Y1(i,j),8)
        endif
     enddo
     write(719,*)""
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveM_C

!----------------------------
!----------------------------
!----------------------------

subroutine data_saveA3_I(pname,Y1,X)
  integer                                :: i,j,k,Ny1,Ny2,Ny3
  character(len=*)                       :: pname
  integer,dimension(:,:,:)               :: Y1
  real(8),optional,dimension(size(Y1,3)) :: X
  Ny1=size(Y1,1) ; Ny2=size(Y1,2); Ny3=size(Y1,3)
  open(719,file=adjustl(trim(pname)))
  do i=1,Ny1
     do j=1,Ny2
        do k=1,Ny3
           if(present(X))then
              write(719,*)X(k),Y1(i,j,k)
           else
              write(719,*)Y1(i,j,k)
           endif
        enddo
        write(719,*)""
     enddo
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveA3_I
!----------------------------
subroutine data_saveA3_R(pname,Y1,X)
  integer                                :: i,j,k,Ny1,Ny2,Ny3
  character(len=*)                       :: pname
  real(8),dimension(:,:,:)               :: Y1
  real(8),optional,dimension(size(Y1,3)) :: X
  Ny1=size(Y1,1) ; Ny2=size(Y1,2); Ny3=size(Y1,3)
  open(719,file=adjustl(trim(pname)))
  do i=1,Ny1
     do j=1,Ny2
        do k=1,Ny3
           if(present(X))then
              write(719,*)X(k),Y1(i,j,k)
           else
              write(719,*)Y1(i,j,k)
           endif
        enddo
        write(719,*)""
     enddo
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveA3_R
!----------------------------
subroutine data_saveA3_C(pname,Y1,X)
  integer                                :: i,j,k,Ny1,Ny2,Ny3
  character(len=*)                       :: pname
  complex(8),dimension(:,:,:)            :: Y1
  real(8),optional,dimension(size(Y1,3)) :: X
  Ny1=size(Y1,1) ; Ny2=size(Y1,2); Ny3=size(Y1,3)
  open(719,file=adjustl(trim(pname)))
  do i=1,Ny1
     do j=1,Ny2
        do k=1,Ny3
           if(present(X))then
              write(719,*)X(k),dimag(Y1(i,j,k)),real(Y1(i,j,k),8)
           else
              write(719,*)dimag(Y1(i,j,k)),real(Y1(i,j,k),8)
           endif
        enddo
        write(719,*)""
     enddo
  enddo
  close(719)
  call data_store(trim(adjustl(trim(pname))))
end subroutine data_saveA3_C
!----------------------------
!----------------------------
!----------------------------
