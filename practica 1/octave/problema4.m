T_R = 12;
S0 = 1e6;
E0 = 90;
I0 = 10;
R0 = 0;

x0=[S0;E0;I0;R0; zeros(T_R,1)];

[t,x] = dtsim(@discreteNSEIR,x0,1,400);

plot(t,x(1:4,:));