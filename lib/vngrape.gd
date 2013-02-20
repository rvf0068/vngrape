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
##  converts all indices in x to vertex names
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
##  converts all names in x to its indices
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareGlobalFunction( "VNN2I" );

#E  vngrape.gd  . . . . . . . . . . . . . . . . . . . . . . . . . . ends here
