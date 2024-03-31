function x=discreteSIR(pre_x,t)
  al=1;
  gam=0.5;
  mu=0.5;
  N=1e6;
  R0=1.5;
  T_I=3;
  T_R=12;

  pre_S=pre_x(1);
  pre_E=pre_x(2);
  pre_I=pre_x(3);
  pre_R=pre_x(4);
  pre_N=pre_x(5:end);

  S = pre_S - pre_N(1);
  E = pre_E + pre_N(1) - pre_N(T_I);
  I = pre_I + pre_N(T_I) - pre_N(T_R);
  R = pre_R + pre_N(T_R);
  act_N = R0 / (T_R - T_I) * I * S / N;

  N = [act_N;pre_N(1:end-1)];

  x = [S;E;I;R;N];
endfunction