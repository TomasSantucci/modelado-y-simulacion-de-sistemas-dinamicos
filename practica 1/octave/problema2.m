S0 = 1e6;
I0 = 10;
R0 = 0;
x0=[S0;I0;R0];
[t,x] = dtsim(@discreteSIR,x0,1,100);
plot(t,x);