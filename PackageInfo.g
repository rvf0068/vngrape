SetPackageInfo( rec(
PackageName := "vngrape",
Subtitle := "Vertex Names in GRAPE",
Version := "1.0",
PackageDoc := rec(
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

