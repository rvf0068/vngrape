#############################################################################
##
##
#W  vngrape.gi                  vngrape Package             Rafael Villarroel
##
##  Installation file for functions of the vngrape package.
##
#Y  Copyright (C) 2013 Rafael Villarroel
##

#############################################################################
##
#F  VNI2N( <g>, <x> ) . . . . . . . . . . . . convert indices to vertex names
##
InstallGlobalFunction( VNI2N , function( g,x )
    if x in Vertices(g) then
        return VertexName(g,x);
    elif IsList(x) then
        return List(x,u->VNI2N(g,u));
    else
        Print("Not a list (or list of lists...) of indices\n");
    fi;
end );    

#############################################################################
##
#F  VNN2I( <g>, <x> ) . . . . . . . . . . . . convert names to vertex indices
##
InstallGlobalFunction( VNN2I , function( g,x )
    if x in VertexNames(g) then
        return Position(VertexNames(g),x);
    elif IsList(x) then
        return List(x,u->VNN2I(g,u));
    else
        Print("Not a list (or list of lists...) of names\n");
    fi;
end );

#############################################################################
##
#F  VNAddEdgeOrbit( <g>, <e> ) . . add edge (by name vertices) orbit to graph
##
InstallGlobalFunction( VNAddedEdgeOrbit , function( g,e )
    local h;
    h := ShallowCopy(g);
    AddEdgeOrbit(h,VNN2I(e));
    return h;
end );


#E  vngrape.gi  . . . . . . . . . . . . . . . . . . . . . . . . . . ends here
