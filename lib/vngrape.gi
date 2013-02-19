InstallGlobalFunction( VNI2N , function( g,x )
    if x in Vertices(g) then
        return VertexName(g,x);
    elif IsList(x) then
        return List(x,u->VNI2N(g,u));
    else
        Print("Not a list (or list of lists...) of indices\n");
    fi;
end );    

InstallGlobalFunction( VNN2I , function( g,x )
    if x in VertexNames(g) then
        return Position(VertexNames(g),x);
    elif IsList(x) then
        return List(x,u->VNN2I(g,u));
    else
        Print("Not a list (or list of lists...) of names\n");
    fi;
end );
