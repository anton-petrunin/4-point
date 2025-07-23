input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";




beginfig(10) 
save u,p;
u:=1cm;
path p[];

z.x1=(0,0)*u;
z.x2=(2,0)*u;
z.x3=(1.4,2)*u;
z.x4=.5[z.x3,.4[z.x1,z.x2]];
z.xx4=.5[z.x3,(-.4)[z.x1,z.x2]];
z.x5=whatever[z.x3,z.x4];
y.x5=y.x4*y.x4/y.x3;
z.xx5=whatever[z.x3,z.xx4];
y.xx5=y.xx4*y.xx4/y.x3;

z.shift=(6,0)*u;

draw z.x1--z.x3--z.x2--z.x4--cycle;
draw z.x3--z.x5;
draw z.x1--z.x2--z.x5--cycle;
draw (z.x1--z.x3--z.x2--z.xx4--cycle) shifted z.shift;
draw (z.x3--z.xx5) shifted z.shift;
draw (z.x1--z.x2--z.xx5--cycle) shifted z.shift;

dOt z.x1,z.x2,z.x3,z.x4,z.x1+z.shift,z.x2+z.shift,z.x3+z.shift,z.xx4+z.shift,z.x5,z.xx5+z.shift;

label.lft(btex $x_1$ etex, z.x1);
label.rt(btex $x_2$ etex, z.x2);
label.top(btex $x_3$ etex, z.x3);
label.rt(btex $x_4$ etex, z.x4);
whitelabel.bot(btex $x_5$ etex, z.x5);

label.lft(btex $x_1$ etex, z.x1+z.shift);
label.rt(btex $x_2$ etex, z.x2+z.shift);
label.top(btex $x_3$ etex, z.x3+z.shift);
label.ulft(btex $x_4$ etex, z.xx4+z.shift);
label.ulft(btex $x_5$ etex, z.xx5+z.shift);

endfig;

beginfig(15)
save u,p;
u:=1cm;
path p[];

z.x1=(0,0)*u;
z.x2=(2,0)*u;
z.x3=(1.4,2)*u;
z.x4=.5[z.x3,.4[z.x1,z.x2]];
z.xx4=.5[z.x3,(-.4)[z.x1,z.x2]];
z.x5=whatever[z.x3,z.x4]=whatever[z.x1,z.x2];
z.xx5=whatever[z.x3,z.xx4]=whatever[z.x1,z.x2];

z.shift=(6,0)*u;

draw z.x1--z.x3--z.x2--cycle;
draw z.x3--z.x5;
draw (z.x2--z.x3--z.xx5--cycle) shifted z.shift;
draw (z.x3--z.x1) shifted z.shift;

dOt z.x1,z.x2,z.x3,,z.x1+z.shift,z.x2+z.shift,z.x3+z.shift,,z.x5,z.xx5+z.shift;

label.lft(btex $x_1$ etex, z.x1);
label.rt(btex $x_2$ etex, z.x2);
label.top(btex $x_3$ etex, z.x3);
whitelabel.bot(btex $x_4$ etex, z.x5);

label.bot(btex $x_1$ etex, z.x1+z.shift);
label.rt(btex $x_2$ etex, z.x2+z.shift);
label.top(btex $x_3$ etex, z.x3+z.shift);
label.lft(btex $x_4$ etex, z.xx5+z.shift);

endfig;

beginfig(20) 
save u,p;
u:=1.4cm;
path p[];

z.a0=(1,0)*u;
z.a1=z.a0 rotated 60;
z.a2=z.a0 rotated 120;
z.a3=-z.a0 ;
z.a4=z.a0 rotated -120;
z.a5=z.a0 rotated -60;
z.b0=(0,.5)*u;
z.b2=z.b0 rotated 120;
z.b4=z.b0 rotated -120;

p0= z.a0..z.a1..z.a2..z.a3..z.a4..z.a5..cycle;
p1=z.a1..z.b0..z.b2..z.a4;
p2=z.a3..z.b2..z.b4..z.a0;
p3=z.a5..z.b4..z.b0..z.a2;

draw p0;
draw p1;
draw p2;
draw p3;

whitelabel(btex {\scriptsize $12$} etex , z.a0);
whitelabel(btex {\scriptsize $32$} etex , z.a1);
whitelabel(btex {\scriptsize $31$} etex , z.a2);
whitelabel(btex {\scriptsize $21$} etex , z.a3);
whitelabel(btex {\scriptsize $23$} etex , z.a4);
whitelabel(btex {\scriptsize $13$} etex , z.a5);

whitelabel(btex {\scriptsize $34$} etex , z.b0);
whitelabel(btex {\scriptsize $24$} etex , z.b2);
whitelabel(btex {\scriptsize $14$} etex , z.b4);

whitelabel(btex {\scriptsize $123$} etex , point .5 of p0);
whitelabel(btex {\scriptsize $231$} etex , point 1.5 of p0);
whitelabel(btex {\scriptsize $312$} etex , point 2.5 of p0);
whitelabel(btex {\scriptsize $123$} etex , point 3.5 of p0);
whitelabel(btex {\scriptsize $231$} etex , point 4.5 of p0);
whitelabel(btex {\scriptsize $312$} etex , point 5.5 of p0);

whitelabel(btex {\scriptsize $432$} etex , point .5 of p1);
whitelabel(btex {\scriptsize $243$} etex , point 1.5 of p1);
whitelabel(btex {\scriptsize $324$} etex , point 2.5 of p1);


whitelabel(btex {\scriptsize $421$} etex , point .5 of p2);
whitelabel(btex {\scriptsize $142$} etex , point 1.5 of p2);
whitelabel(btex {\scriptsize $214$} etex , point 2.5 of p2);

whitelabel(btex {\scriptsize $413$} etex , point .5 of p3);
whitelabel(btex {\scriptsize $341$} etex , point 1.5 of p3);
whitelabel(btex {\scriptsize $134$} etex , point 2.5 of p3);


endfig;

beginfig(30) 
save u,p;
u:=1cm;
path p[];

z.o=(0,0)*u;
z.a1=(0,1)*u;
z.a2=z.a1 rotated 120;
z.a3=z.a1 rotated -120;

z.shift = (3,0)*u;

z.b1=(0,-.6)*u;
z.b4=(0,1)*u;
z.b3=(.4,.6)*u;
z.b2= z.b3 xscaled -1;

z.c3=(.8,.2)*u;
z.c2=z.c3 xscaled -1;

draw z.a1..z.o..z.a2;
draw z.a3..z.o..z.a2;
draw z.a1..z.o..z.a3;

z.e=(.5,-.1)*u;
z.d2=(0,.2)*u+z.e;
z.d3=(0,.2)*u-z.e;

draw (z.b1..z.b2..z.b4..z.b3..z.b1) shifted z.shift;

draw (z.b1..z.c2..z.b4..z.c3..cycle) shifted (2*z.shift);

p4=z.b1..z.d2{up}..z.d3{up}..z.b4;

draw p4 shifted (3*z.shift);

draw (z.d2{direction 1 of p4}..z.b4) shifted (3*z.shift);
draw (z.b1..{direction 2 of p4}z.d3) shifted (3*z.shift);

dOt z.o,z.a1,z.a2,z.a3,
z.b1+z.shift,z.b2+z.shift,z.b3+z.shift,z.b4+z.shift,
z.b1+2*z.shift,z.c2+2*z.shift,z.c3+2*z.shift,z.b4+2*z.shift,
z.b1+3*z.shift,z.d2+3*z.shift,z.d3+3*z.shift,z.b4+3*z.shift;

endfig;

end
