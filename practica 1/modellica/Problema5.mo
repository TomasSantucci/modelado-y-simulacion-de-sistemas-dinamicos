package Problema5

model DiscreteSIR
  parameter Real N = 1e6;
  discrete Real S(start = N), I(start = 10), R;
  parameter Real alpha = 1, gamma = 0.5;
algorithm
  when sample(0, 1) then
    S := pre(S) - alpha * pre(S) * pre(I) / N;
    I := pre(I) + alpha * pre(S) * pre(I) / N - gamma * pre(I);
    R := pre(R) + gamma * pre(I);
  end when;
end DiscreteSIR;

model DiscreteSEIR
  parameter Real N = 1e6;
  discrete Real S(start = N), E(start = 90), I(start = 10), R;
  parameter Real alpha = 1, gamma = 0.5, mu = 0.5;
algorithm
  when sample(0, 1) then
    S := pre(S) - alpha * pre(S) * pre(I) / N;
    E := pre(E) + alpha * pre(S) * pre(I) / N - mu * pre(E);
    I := pre(I) + mu * pre(E) - gamma * pre(I);
    R := pre(R) + gamma * pre(I);
  end when;
end DiscreteSEIR;

end Problema5;