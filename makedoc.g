LoadPackage( "AutoDoc" );

AutoDoc( "CoCoAForHomalg" :
        
        scaffold := rec( entities := [
                            "homalg",
                            "GAP4",
                            "CoCoA",
#                            "CoCoAInterface",
                            "IO",
                            "IO_ForHomalg",
                            ],
                         ),
        
        autodoc := rec( files := [ "doc/Intros.autodoc" ] ),
        
        maketest := rec( folder := ".",
                         commands :=
                         [ "LoadPackage( \"CoCoAForHomalg\" );",
                           "LoadPackage( \"IO_ForHomalg\" );",
                           "LoadPackage( \"Modules\" );",
                           "HOMALG_IO.show_banners := false;",
                           "HOMALG_IO.suppress_PID := true;",
                           "HOMALG_IO.use_common_stream := true;",
                           ],
                         ),
        
        Bibliography := "CoCoAForHomalg.bib"
        
);

# Create VERSION file for "make towww"
PrintTo( "VERSION", PackageInfo( "CoCoAForHomalg" )[1].Version );

QUIT;
