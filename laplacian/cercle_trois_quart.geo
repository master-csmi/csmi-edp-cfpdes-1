h=0.025;
//+
Point(1) = {1, 0, 0, h};
//+
Point(2) = {-1, 0, 0, h};
//+
Point(3) = {0, 0, 0, h};
//+
Point(4) = {0, -1, 0, h};
//+
Circle(1) = {1, 3, 2};
//+
Circle(2) = {4, 3, 2};
//+
Line(3) = {4, 3};
//+
Line(4) = {3, 1};
//+
Curve Loop(5) = {2, -1, -4, -3};
//+
Plane Surface(6) = {5};

Physical Curve("Dirichlet") = {1, 2, 3, 4};

Physical Surface("Omega",10) = {6};