InstallGlobalFunction( IndicesToNames, function( g,l )
    return List(l,x->VertexName(g,x));
end );