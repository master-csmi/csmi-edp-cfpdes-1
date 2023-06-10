//+
SetFactory("Built-in");
//+
Point(1) = {0, 4, 0, 0.025};
//+
Point(2) = {0, 2, 0, 0.025};
//+
Point(3) = {2, 2, 0, 0.025};
//+
Point(4) = {2, 0, 0, 0.025};
//+
Point(5) = {4, 0, 0, 0.025};
//+
Point(6) = {4, 4, 0, 0.025};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 1};
//+
Line Loop(7) = {1, 2, 3, 4, 5, 6};
//+
Plane Surface(8) = {7};

//+
Physical Line("Left") = {1};
//+
Physical Line("Bottom") = {4};
//+
Physical Line("Other") = {2, 3, 5, 6};
//+
Physical Surface("Omega") = {8};