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

#############################################################################
##
#F  VNAdjacency( <g>, <x> ) . returns the neighbors of x (by name)
##
InstallGlobalFunction( VNAdjacency, function( g,x )
    return VNI2N(g,Adjacency(g,VNN2I(g,x)));
end );

#############################################################################
##
#F  VNIsEdge( <g>, <e> ) . is an edge (by name vertices) of the graph?
##
InstallGlobalFunction( VNIsEdge, function(g,e)
    return IsEdge(g,[VNN2I(g,e[1]),VNN2I(g,e[2])]);
end );

#############################################################################
##
#F  VNUndirectedEdges( <g> ) . list edges (by vertex names) of a graph
##
InstallGlobalFunction( VNUndirectedEdges, function(g)
    return List(UndirectedEdges(g), x -> VNI2N(g,x));
end );

#############################################################################
##
#F  VNDistance( <g>, <x> , <y> ) . distances between vertices or vertex lists
##
InstallGlobalFunction( VNDistance, function(g,x,y)
    return Distance(g,VNN2I(g,x),VNN2I(g,y));
end );

#############################################################################
##
#F  VNDistanceSet( <g>, <d> , <x> ) . names of vertices at a certain distance
##
InstallGlobalFunction( VNDistanceSet, function(g,d,v)
    return VNI2N(g,DistanceSet(g,d,VNN2I(g,v)));
end );

#E  vngrape.gi  . . . . . . . . . . . . . . . . . . . . . . . . . . ends here
