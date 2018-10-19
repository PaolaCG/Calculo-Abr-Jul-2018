% PAOLA CASTRO
% 13-10248
% CALCULO NUMERICO /// LAB10 ejercicio 2


t = 1:4;
px=[105,135,120,105];
py=[35,35,219,35];
th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(xh, yh, 'r', 'linewidth', 1)
hold on;
plot(px,py,'k','linewidth',3)
whitebg('w')
fill(px,py,'w')


t = 1:5;
px=[113,128,128,113,113];
py=[245,245,219,219,245];
th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(px,py,'ro','linewidth',1)
plot(px, py, 'k', 'linewidth', 3)  #rellena blanco

t = 1:2;
px=[116,125,125,116,116];
py=[245, 245,279,279,245];
th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(px,py,'ro','linewidth',1)
plot(px, py, 'k', 'linewidth', 3)  #rellena blanco


t = 1:3;
px=[110,97,105];
py=[99,81,35];
th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(px,py,'ro','linewidth',1)
plot(px, py, 'k', 'linewidth', 3)



t = 1:3;
px=[130,143,135];
py=[99,81,35];
th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(px,py,'ro','linewidth',1)
plot(px, py, 'k', 'linewidth', 3)


t = 1:5;
px=[125,129,133,129, 125];
py=[279,283,154,245, 279];
th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(px,py,'ro','linewidth',1)
plot(px, py, 'k', 'linewidth', 3)

t = 1:5;
px=[116,112,106,112, 116];
py=[279,283,154,245, 279];

th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(px,py,'ro','linewidth',1)
plot(px, py, 'k', 'linewidth', 3)

t = 1:2;
px=[121,121];
py=[267,256];
th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(px,py,'ro','linewidth',1)
plot(px, py, 'k', 'linewidth', 3)


t = 1:2;
px=[119,119];
py=[267,256];
th = linspace(1, 5);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(px,py,'ro','linewidth',1)
plot(px, py, 'k', 'linewidth', 3)

t = 1:4;
px=[118,119,122,123];
py=[235,230, 230,235];
th = linspace(1, 7);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(xh, yh, 'k', 'linewidth', 3)

t = 1:4;
px=[101,101, 95, 102];
py=[56,35, 35,56];
th = linspace(1, 7);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(xh, yh, 'k', 'linewidth', 3)

t = 1:4;
px=[139, 139, 145,138];
py=[56,35, 35,56];
th = linspace(1, 7);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(xh, yh, 'k', 'linewidth', 3)
