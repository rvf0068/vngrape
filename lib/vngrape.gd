#############################################################################
##
##
#W  vngrape.gd                  vngrape Package             Rafael Villarroel
##
##  Declaration file for functions of the vngrape package.
##
#Y  Copyright (C) 2013 Rafael Villarroel
##


#############################################################################
##
#F  VNI2N( <g>, <x> ) . . . . . . . . . . . . convert indices to vertex names
##
##  <#GAPDoc Label="VNI2N">
##  <ManSection>
##  <Func Name="VNI2N" Arg="graph, index_or_list_of_indices"/>
##
##  <Description>
##  Converts all indices in x to vertex names.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNI2N" );

#############################################################################
##
#F  VNN2I( <g>, <x> ) . . . . . . . . . . . . convert names to vertex indices
##
##  <#GAPDoc Label="VNN2I">
##  <ManSection>
##  <Func Name="VNN2I" Arg="graph, name_or_list_of_names"/>
##
##  <Description>
##  Converts all names in x to its indices.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNN2I" );

#############################################################################
##
#F  VNAddedEdgeOrbit( <g>, <e> ) . add edge (by name vertices) orbit to graph
##
##  <#GAPDoc Label="VNAddedEdgeOrbit">
##  <ManSection>
##  <Func Name="VNAddedEdgeOrbit" Arg="graph, edge_by_names"/>
##
##  <Description>
##  Function that returns the graph g but with the orbit of the edge e added. 
##  The elements of e must be vertex names of g.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNAddedEdgeOrbit" );

#############################################################################
##
#F  VNAdjacency( <g>, <x> ) . returns the neighbors of x (by name)
##
##  <#GAPDoc Label="VNAdjacency">
##  <ManSection>
##  <Func Name="VNAdjacency" Arg="graph, vertex_name"/>
##
##  <Description>
##  Function that returns the vertex names of neighbors of x in a graph g.
##  x must be a vertex of g given by its name.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNAdjacency" );

#############################################################################
##
#F  VNIsEdge( <g>, <e> ) . is an edge (by name vertices) of the graph?
##
##  <#GAPDoc Label="VNIsEdge">
##  <ManSection>
##  <Func Name="VNIsEdge" Arg="graph, edge_by_names"/>
##
##  <Description>
##  Function that returns whether e (a list of two vertex names) is
##  an edge of the graph g.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNIsEdge" );

#############################################################################
##
#F  VNUndirectedEdges( <g> ) . list edges (by vertex names) of a graph
##
##  <#GAPDoc Label="VNUndirectedEdges">
##  <ManSection>
##  <Func Name="VNUndirectedEdges" Arg="graph"/>
##
##  <Description>
##  Function that returns a list of the undirected edges of a graph g. 
##  The edges are described by the names of its vertices.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNUndirectedEdges" );

#############################################################################
##
#F  VNDistance( <g>, <x> , <y> ) . distances between vertices or vertex lists
##
##  <#GAPDoc Label="VNDistance">
##  <ManSection>
##  <Func Name="VNDistance" Arg="graph, vertex_or_list, vertex_or_list"/>
##
##  <Description>
##  Function that returns the distance in a graph between two vertices or
##  a vertex and a list of vertices or two lists of vertices.
##  The vertices are given by their names.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNDistance" );

#############################################################################
##
#F  VNDistanceSet( <g>, <d> , <v> ) . names of vertices at a certain distance
##
##  <#GAPDoc Label="VNDistanceSet">
##  <ManSection>
##  <Func Name="VNDistanceSet" Arg="graph, d_or_d's, vertex_or_list"/>
##
##  <Description>
##  Function that returns the set of vertices such that their distance to v
##  is d (if d is a number) or in d (if d is a list of distances).
##  The vertices of the set are given by their names.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNDistanceSet" );

#############################################################################
##
#F  VNInducedSubgraph( <g>, <l>) . subgraph induced by list of vertex names
##
##  <#GAPDoc Label="VNInducedSubgraph">
##  <ManSection>
##  <Func Name="VNInducedSubgraph" Arg="graph, list_of_names"/>
##
##  <Description>
##  Function that returns the subgraph of g induced by the vertices
##  whose name is in the list l
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNInducedSubgraph" );


#E  vngrape.gd  . . . . . . . . . . . . . . . . . . . . . . . . . . ends here
