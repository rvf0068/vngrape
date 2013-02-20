SetPackageInfo( rec(
PackageName := "vngrape",
Subtitle := "Vertex Names in GRAPE",
Version := "1.0",
Date := "19/02/2013",            
##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY VERSION "1.0">
##  <!ENTITY RELEASEDATE "19 February 2013">
##  <#/GAPDoc>
        
PackageDoc :=
rec(
    BookName  := "vngrape",
    SixFile   := "doc/manual.six",
    Autoload  := true,
    ),
Dependencies := rec(
        GAP := "4.5",
        NeededOtherPackages := [["GAPDoc", "1.5"], ["GRAPE", "4.6.1"]],
        SuggestedOtherPackages := [],
        ),
AvailabilityTest := ReturnTrue
));

