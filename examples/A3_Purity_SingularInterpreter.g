#! @System A3_Purity_SingularInterpreter

LoadPackage( "SingularForHomalg" );

#!  Loading &SingularForHomalg; makes &SingularInterface; the default
#!  communication <Q>stream</Q> instead of &IO;/&IO_ForHomalg;.
#!  This is Example B.4 in <Cite Key="BaSF"/>.

#! @Example
Q := HomalgFieldOfRationalsInSingular( );
#! Q
R := Q * "x,y,z";
#! Q[x,y,z]
A3 := RingOfDerivations( R, "Dx,Dy,Dz" );
#! Q[x,y,z]<Dx,Dy,Dz>
nmat := HomalgMatrix( "[ \
3*Dy*Dz-Dz^2+Dx+3*Dy-Dz,           3*Dy*Dz-Dz^2,     \
Dx*Dz+Dz^2+Dz,                     Dx*Dz+Dz^2,       \
Dx*Dy,                             0,                \
Dz^2-Dx+Dz,                        3*Dx*Dy+Dz^2,     \
Dx^2,                              0,                \
-Dz^2+Dx-Dz,                       3*Dx^2-Dz^2,      \
Dz^3-Dx*Dz+Dz^2,                   Dz^3,             \
2*x*Dz^2-2*x*Dx+2*x*Dz+3*Dx+3*Dz+3,2*x*Dz^2+3*Dx+3*Dz\
]", 8, 2, A3 );
#! <A 8 x 2 matrix over an external ring>
LoadPackage( "Modules" );
#! true
N := LeftPresentation( nmat );
#! <A left module presented by 8 relations for 2 generators>
filt := PurityFiltration( N );
#! <The ascending purity filtration with degrees [ -3 .. 0 ] and graded parts:
#!  0:  <A zero left module>
#! -1:  <A cyclic reflexively pure grade 1 left module presented by 1 relation for \
#!       a cyclic generator>
#! -2:  <A cyclic reflexively pure grade 2 left module presented by 2 relations for\
#!       a cyclic generator>
#! -3:  <A cyclic reflexively pure grade 3 left module presented by 3 relations for\
#!       a cyclic generator>
#! of
#! <A non-pure grade 1 left module presented by 8 relations for 2 generators>>
II_E := SpectralSequence( filt );
#! <A stable homological spectral sequence with sheets at levels 
#! [ 0 .. 2 ] each consisting of left modules at bidegrees [ -3 .. 0 ]x
#! [ 0 .. 3 ]>
Display( II_E );
#! The associated transposed spectral sequence:
#! 
#! a homological spectral sequence at bidegrees
#! [ [ 0 .. 3 ], [ -3 .. 0 ] ]
#! ---------
#! Level 0:
#! 
#!  * * * *
#!  . * * *
#!  . . * *
#!  . . . *
#! ---------
#! Level 1:
#! 
#!  * * * *
#!  . . . .
#!  . . . .
#!  . . . .
#! ---------
#! Level 2:
#! 
#!  s . . .
#!  . . . .
#!  . . . .
#!  . . . .
#! 
#! Now the spectral sequence of the bicomplex:
#! 
#! a homological spectral sequence at bidegrees
#! [ [ -3 .. 0 ], [ 0 .. 3 ] ]
#! ---------
#! Level 0:
#! 
#!  * * * *
#!  . * * *
#!  . . * *
#!  . . . *
#! ---------
#! Level 1:
#! 
#!  * * * *
#!  . * * *
#!  . . * *
#!  . . . .
#! ---------
#! Level 2:
#! 
#!  s . . .
#!  . s . .
#!  . . s .
#!  . . . .
m := IsomorphismOfFiltration( filt );
#! <A non-zero isomorphism of left modules>
IsIdenticalObj( Range( m ), N );
#! true
Source( m );
#! <A left module presented by 6 relations for 3 generators (locked)>
Display( Source( m ) );
#! Dx,1/3,-1/9*x,
#! 0, Dy, 1/6,   
#! 0, Dx, -1/2,  
#! 0, 0,  Dz,    
#! 0, 0,  Dy,    
#! 0, 0,  Dx     
#! 
#! Cokernel of the map
#! 
#! R^(1x6) --> R^(1x3), ( for R := Q[x,y,z]<Dx,Dy,Dz> )
#! 
#! currently represented by the above matrix
Display( filt );
#! Degree 0:
#! 
#! 0
#! ----------
#! Degree -1:
#! 
#! Q[x,y,z]<Dx,Dy,Dz>/< Dx > 
#! ----------
#! Degree -2:
#! 
#! Q[x,y,z]<Dx,Dy,Dz>/< Dy, Dx >
#! ----------
#! Degree -3:
#! 
#! Q[x,y,z]<Dx,Dy,Dz>/< Dz, Dy, Dx >
Display( m );
#! 1,                1,     
#! 3*Dz+3,           3*Dz,  
#! -6*Dz^2+6*Dx-6*Dz,-6*Dz^2
#! 
#! the map is currently represented by the above 3 x 2 matrix
#! @EndExample
Display( StringTime( homalgTime( A3 ) ) );
