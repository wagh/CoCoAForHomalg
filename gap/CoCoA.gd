#############################################################################
##
##  CoCoA.gd               RingsForHomalg package         Mohamed Barakat
##                                                    Markus Lange-Hegermann
##
##  Copyright 2007-2008 Lehrstuhl B für Mathematik, RWTH Aachen
##
##  Declaration stuff for the external computer algebra system CoCoA.
##
#############################################################################

#############################################################################
# forbidden expressions inside of CoCoA
# dummy_variable     to emulate Q by Q[dummy_variable]
#############################################################################

####################################
#
# global variables:
#
####################################

DeclareGlobalVariable( "HOMALG_IO_CoCoA" );

DeclareGlobalVariable( "CoCoAMacros" );

####################################
#
# global functions and operations:
#
####################################

DeclareGlobalFunction( "_CoCoA_SetRing" );

DeclareGlobalFunction( "_CoCoA_SetInvolution" );

DeclareGlobalFunction( "_CoCoA_multiple_delete" );

DeclareGlobalFunction( "InitializeCoCoAMacros" );

# constructor methods:

DeclareGlobalFunction( "RingForHomalgInCoCoA" );

DeclareGlobalFunction( "HomalgFieldOfRationalsInCoCoA" );

DeclareGlobalFunction( "HomalgRingOfIntegersInCoCoA" );
