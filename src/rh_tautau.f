      real*8 function rh_tautau(p1,p2)

      implicit real*8 (a-b,d-h,o-z)
      implicit double complex (c)


      dimension p1(0:3),p2(0:3)

      dimension th(2,2)

C Define a structure type 'tc'
      structure /tc/
        double complex a(2,2),b(2,2),c(2,2)
      end structure
C Define a variable called 'tsc' of type 'tc'
      record/tc/tsc

      COMMON/masses/rmtau

      PARAMETER (czero=(0.d0,0.d0),cim=(0.d0,1.d0))

      p1k0=p1(0)-p1(1)
      p2k0=p2(0)-p2(1)

* TSC -- qu=p1,qd=p2,a=tsc.a,b=tsc.b,c=tsc.c,cr=1.d0,cl=1.d0                    
      auxa=-p1k0*p2(2)+p2k0*p1(2)
      cauxa=-cim*(p2(3)*p1k0-p1(3)*p2k0)
      tsc.a(1,2)=(auxa+cauxa)
      tsc.a(2,1)=(-auxa+cauxa)
      tsc.b(1,1)=p2k0
      tsc.b(2,2)=p2k0
      tsc.c(1,1)=p1k0
      tsc.c(2,2)=p1k0
* mline -- res=th(&1,&2),abcd=tsc.,m1=rmtau,m2=(-rmtau),den=0,nsum=0            
      do iut=1,2                          
      do jut=1,2
      th(iut,jut)=tsc.a(iut,jut)+rmtau*tsc.b(iut,jut)+(-rmtau)*t
     & sc.c(iut,jut)
      enddo
      enddo

      res=0.d0

      do i1=1,2
        do i2=1,2
          cres=th(i1,i2)                  
          res=res+dreal(cres)**2+dimag(cres)**2
        enddo
      enddo
      rh_tautau=res/p1k0/p2k0

      RETURN
      END


