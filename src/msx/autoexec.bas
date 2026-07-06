5 color 15,0,0
10 X = PEEK(&H2D)
20 IF X=0 GOTO 60
30 IF X=1 GOTO 90
40 IF X>=2 GOTO 130
50 '
60 SCREEN 2
70 BLOAD"espada.sc2",S
80 RUN "asalto.bas"
90 '
100 SCREEN 8
110 BLOAD"espada.sc8",S
120 RUN "asalto.bas"
130 '
140 SCREEN 12
150 BLOAD"espada.s12",S
160 RUN "asalto.bas"

