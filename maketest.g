## This file is automatically generated by AutoDoc.
## Changes will be discarded by the next call of the AutoDoc method.


LoadPackage( "CoCoAForHomalg" );

LoadPackage( "IO_ForHomalg" );

LoadPackage( "Modules" );

HOMALG_IO.show_banners := false;

HOMALG_IO.suppress_PID := true;

HOMALG_IO.use_common_stream := true;

AUTODOC_file_scan_list := [ "../examples/A3_Purity_CoCoAInterpreter.g", "../examples/Purity_ExternalLibSing.g", "../examples/Purity_ExternalCoCoAForHomalg.g", "../examples/Purity_ExternalCoCoAInterface.g", "../examples/Purity_LibSing.g", "../examples/Purity_CoCoAInterface.g", "../examples/Purity_CoCoAInterpreter.g", "../gap/GAPHomalgBasic.gd", "../gap/GAPHomalgBasic.gi", "../gap/GAPHomalgGroebner.gd", "../gap/GAPHomalgGroebner.gi", "../gap/GAPHomalgTools.gd", "../gap/GAPHomalgTools.gi", "../gap/GAPHomalgWithCoCoAForHomalg.gd", "../gap/GAPHomalgWithCoCoAForHomalg.gi", "../gap/GAPHomalgWithCoCoAInterface.gd", "../gap/GAPHomalgWithCoCoAInterface.gi", "../gap/SIH_Functions.gd", "../gap/SIH_Functions.gi", "../gap/CoCoA.gd", "../gap/CoCoA.gi", "../gap/CoCoABasic.gd", "../gap/CoCoABasic.gi", "../gap/CoCoABestBasis.gd", "../gap/CoCoABestBasis.gi", "../gap/CoCoAGroebner.gd", "../gap/CoCoAGroebner.gi", "../gap/CoCoAInterpreter.gd", "../gap/CoCoAInterpreter.gi", "../gap/CoCoATools.gd", "../gap/CoCoATools.gi" ];

LoadPackage( "GAPDoc" );

example_tree := ExtractExamples( Directory("/home/vinay/Data/Mathematics/Computations/git/pkg/CoCoAForHomalg/doc/"), "CoCoAForHomalg.xml", AUTODOC_file_scan_list, 500 );

RunExamples( example_tree, rec( compareFunction := "uptowhitespace" ) );

QUIT;