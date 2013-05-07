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

#E  vngrape.gd  . . . . . . . . . . . . . . . . . . . . . . . . . . ends here
