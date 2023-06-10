//+
SetFactory("Built-in");
//+
Point(1) = {-0.5, -0.5, 0, 0.1};
//+
Point(2) = {1, -0.5, 0, 0.1};
//+
Point(3) = {-0.5, 1.5, 0, 0.1};
//+
Point(4) = {1, 1.5, 0, 0.1};
//+
Line(1) = {3, 1};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 4};
//+
Line(4) = {4, 3};
//+
Line Loop(5) = {1, 2, 3, 4};
//+
Plane Surface(6) = {5};

Physical Line("Left") = {1};
Physical Line("Bottom") = {2};
Physical Line("Right") = {3};
Physical Line("Top") = {4};

Physical Surface("Omega") = {6};