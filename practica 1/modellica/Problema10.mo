package Problema10

model DiscreteCAR
  parameter Real L = 1;
  discrete Real X, Y, Theta, V, Psi;
algorithm
  when sample(0, 1) then
    X := pre(X) + cos(pre(Theta)) * cos(pre(Psi)) * pre(V);
    Y := pre(Y) + sin(pre(Theta)) * cos(pre(Psi)) * pre(V);
    Theta := pre(Theta) + sin(pre(Psi)) * pre(V) / L;
    V := pre(V) + (if time < 2 then 1 else 0);
    Psi := pre(Psi) + (if time < 1 then 0.1 else (if time < 2 then -0.1 else 0));
  end when;
end DiscreteCAR;

end Problema10;