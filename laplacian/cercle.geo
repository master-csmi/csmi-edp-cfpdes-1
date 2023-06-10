h=1.0;
Point(1) = {-1, 0, 0, h};
//+
Point(2) = {0, 0, 0, h};
//+
Point(3) = {1, 0, 0, h};
//+
Point(4) = {0, -1, 0, h};

Circle(4) = {3,2,1};
Circle(5) = {4,2,3};
Circle(6) = {1,2,4};

Curve Loop(1) = {4, 6, 5};
//+
Plane Surface(1) = {1};

Physical Curve("Dirichlet", 7) = {4};
//+
Physical Curve("Neumann", 8) = {5};
//+
Physical Curve("Robin", 9) = {6};

Physical Surface("Omega", 10) = {1};