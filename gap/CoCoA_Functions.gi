##
InstallGlobalFunction( CoCoA_ZeroColumns,
  function( M )
    ##FIXME: should become: return Filtered( M, IsZero );
    return Filtered( M, IsZero );
    
end );

