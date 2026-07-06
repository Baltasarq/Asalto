1 REM Asalto y Castigo
2 REM (c) 2009 Baltasar MIT License <baltasarq@gmail.com>
5 GO SUB 9998: INK 5: PRINT AT 5,7; BRIGHT 1;"Asalto y castigo": INK 6: PRINT AT 10,6;"baltasarq@gmail.com": INK 7: PRINT AT 18,0;"C.A.A.D.  http://www.caad.es": GO SUB 9965
7 LET Cols=32
10 GO SUB 9998: LET t$="El sol despunta de entre la niebla, haciendo humear los tejados de paja.": GO SUB 9850: GO SUB 9970: PRINT : LET t$="Piensas en el encargo realizado por Uther Pendragon. Atacar una aldea tranquila, aunque sea una llena de sajones, no te llena de orgullo.": GO SUB 9850
12 LET loc=1: LET sig=0: LET trSax=0: LET hablado=0: LET acc=-1: LET uno=-1: LET otro=-1: LET j$="No lo veo, o no es importante.": LET k$="Direcciones: n(orte), s(ur), e(ste), o(este), arriba, abajo. (M)irar redescribe una localidad, mientras que (ex)aminar permite examinar un objeto, o, al no indicar nada, a ti. Se puede nadar, atacar, empujar o golpear algo, cogerlo, dejarlo, y tirarlo.": LET chrA= CODE "A": LET chrZ= CODE "Z": LET diff=ABS ( CODE "a"-chrA)
15 GO SUB 500: GO SUB 9970
20 PRINT : LET t$="Los hombres se ciernen sobre la aldea, y la destruyen. No hubo tropas enemigas, ni honor en la batalla.": GO SUB 9850
25 GO SUB 5000: GO SUB 9960
30 CLS : LET t$="- Sire Ulfius, la batalla ha terminado.": GO SUB 9840
35 GO SUB 5136
40 PRINT : LET t$="Lentamente, das la orden de volver a casa. Los oficiales detienen como pueden el saqueo.": GO SUB 9850
45 GO SUB 5282: GO SUB 5430: GO SUB 5572: GO SUB 9965
100 REM bucleJuego
110 GO SUB 9998
115 GO SUB 9980
120 GO SUB 3000: GO SUB 9995
125 GO SUB 8010
130 GO SUB 7000
140 GO TO 120
500 REM accs
505 LET Accs=18: DIM a$(18,7): DIM n(18): RESTORE 525
510 FOR i=1 TO Accs
515 READ a$(i): READ n(i)
520 NEXT i
525 DATA "abajo",0,"abre",1,"arriba",0,"ataca",1,"ayuda",0,"bucea",0,"coge",1,"deja",1,"este",0,"examina",0,"habla",1,"mete",2,"mira",0,"norte",0,"oeste",0,"su",0,"termina",0,"tira",1
530 RETURN
540 REM locVerbo
542 LET acc=-1: LET n=LEN m$
544 IF n>1 THEN GO TO 552
546 IF m$="e" THEN LET acc=9: RETURN
548 IF m$="m" THEN LET acc=13: RETURN
552 IF n>2 THEN IF m$(1 TO 3)="nad" THEN LET acc=6: RETURN
554 IF m$="examinate" OR m$="examinarte" THEN LET acc=10: RETURN
555 IF m$="fin" THEN LET acc=17: RETURN
556 IF n>4 THEN IF m$(1 TO 4)="cort" THEN LET acc=4: RETURN
557 IF n>5 THEN IF m$(1 TO 5)="empuj" THEN LET acc=4: RETURN
558 IF n>5 THEN IF m$(1 TO 5)="golpe" THEN LET acc=4: RETURN
559 IF n>4 THEN IF m$(1 TO 4)="romp" THEN LET acc=4: RETURN
560 IF n>7 THEN LET n=7: LET m$=m$( TO 7)
565 LET i=1: LET f=Accs+1: LET m=2
575 LET m=INT ((i+f)/2)
580 IF a$(m)( TO n)=m$ THEN LET acc=m: RETURN
582 IF i=m THEN RETURN
585 IF a$(m)>m$ THEN LET f=m: GO TO 575
590 LET i=m: GO TO 575
1000 REM alcance
1005 LET aqui=0
1010 IF o(obj,1)=0 OR o(obj,1)=loc THEN LET aqui=1
1015 RETURN
2000 LET t$="": REM objsLoc
2005 FOR n=1 TO Objs
2010 IF o(n,1)=loc AND o(n,2)=2 THEN LET t$=t$+"  - "+CHR$ ( CODE (n$(n)(1))-diff)+n$(n)(2 TO )+CHR$ (13): GO TO 2035
2015 IF o(n,1)=loc THEN LET t$=t$+"  - "+n$(n)+CHR$ (13)
2035 NEXT n
2045 IF t$<>"" THEN PRINT "Puedes ver:"+CHR$ 13+t$
2050 RETURN
2500 REM proc1
2502 LET m$=""
2505 IF loc=11 OR loc=38 OR loc=44 THEN LET o(15,1)=loc
2510 IF loc=16 THEN LET m$="En la distancia\#014\#000\#000\#000\#000\#000, por entre los resquicios de las rocas\#014\#000\#000\#000\#000\#000, y allende el canal de agua\#014\#000\#000\#000\#000\#000, los sajones tratan de buscar la salida que encontraste por casualidad."
2515 IF loc<10 AND d(8,1)<>0 THEN LET m$="Tus hombres siguen tus pasos."
2520 IF o(2,1)<>255 AND o(16,2)=0 AND (loc=46 OR sig=1) THEN LET m$="Tu benefactor te sigue, esperanzado.": LET o(2,1)=loc: RETURN
2530 IF loc=28 THEN LET d(28,3)=0: RETURN
2540 IF loc=31 AND d(31,1)=0 THEN LET m$="Las rocas bloquean el camino.": RETURN
2545 IF loc=31 THEN LET m$="Las rocas yacen desmoronadas a lo largo del pasaje.": RETURN
2999 RETURN
3000 REM proc2
3007 IF loc=8 AND d(8,1)<>0 THEN LET d(8,1)=0: LET trSax=1: LET t$="Una partida sajona aparece por el este. Para cuando te vuelves al norte, ya no te queda ninguna duda: era una trampa.": GO SUB 9850: GO SUB 9960: PRINT : LET t$="En el estrecho paso es posible resistir, aunque por desgracia sus efectivos son muy superiores a los tuyos.": GO SUB 9850: GO SUB 9970: GO SUB 9998: LET t$="Tus oficiales te conminan a huir. Capturando a un general britano, ganan doblemente. Sabes que es cierto, y te duele.": GO SUB 9840: PRINT : GO SUB 9970
3008 IF trSax>0 AND loc<12 THEN LET trSax=trSax+1: LET t$="No sabes cuanto tiempo te queda ...": GO SUB 9850: PRINT
3009 IF trSax>10 AND loc<12 THEN LET t$="Los sajones te capturan. Su general, sonriendo ampliamente, dice: 'bien, bien'. Del gran Ulfius podremos sacar una buena ventaja.": GO SUB 9840: GO SUB 9960: LET acc=17: GO TO 7000
3015 IF loc<10 AND d(8,1)=0 THEN LET t$="Tus hombres luchan con denuedo contra los sajones.": PRINT : GO SUB 9850
3020 LET obj=4: GO SUB 1000: IF loc>19 AND aqui=0 THEN LET t$="Ante la reinante e intimidante oscuridad, retrocedes a donde puedes ver.": GO SUB 9850: GO SUB 9960: LET loc=17: GO SUB 9998: GO SUB 9980: RETURN
3025 IF loc=51 THEN LET t$="Agotado, das parte en el castillo de tu llegada y de lo que ha pasado.": GO SUB 9850: GO SUB 9970: PRINT : LET t$="Pides audiencia al rey, Uther Pendragon.": GO SUB 9850: GO SUB 9960: GO SUB 9998: LET t$="El rey, te indica el valido, ha ordenado que no se le moleste, pues sufre una amarga tristeza.": GO SUB 9840: GO SUB 9970: PRINT : LET t$="No puedes entenderlo. El rey, tu amigo.": GO SUB 9850: GO SUB 9970: PRINT : LET t$="Agotado, decepcionado, apesadumbrado, decides ir a dormir a tu casa. Es lo poco que puedes hacer.": GO SUB 9850: GO SUB 9960: LET t$="Te HAS GANADO un buen descanso": PRINT : GO SUB 9850: PRINT : LET acc=17: GO TO 7000
4999 RETURN
5000 REM locs
5010 LET Locs=51: DIM h$(51,138): RESTORE 5027
5015 FOR n=1 TO Locs
5020 READ h$(n)
5025 NEXT n
5026 RETURN
5027 DATA "Aldea Sajona. No ha quedado nada en pie, ni piedra sobre piedra. El entorno es desolador. Solo resta volver al sur, a casa."
5029 DATA "Sobre la colina, casi sobre la niebla de la aldea sajona arrasada al norte, a tus pies. El camino desciende hacia el oeste."
5031 DATA "Camino entre colinas. El camino avanza por el valle, desde la parte alta, al este, a una zona harto boscosa, al oeste."
5033 DATA "Cruce de caminos. Una senda parte al oeste, a la sierra por el paso del perro, y otra hacia el norte, por un frondoso bosque que la rodea."
5035 DATA "Desde la linde, al sur, hacia el oeste se extiende frondoso el bosque que rodea la sierra. La salida se abre hacia el sur."
5037 DATA "Bosque. Jirones de niebla se enzarcen en frondosas ramas y arbustos. La senda serpentea entre raices, de un luminoso este al oeste."
5039 DATA "Paso del perro. Abruptamente, del bosque se pasa a un estrecho camino entre altas rocas. El inquietante desfiladero tuerce de este a sur."
5041 DATA "Entrada a la cueva. El paso entre el desfiladero sigue de norte a este. La entrada a una cueva se abre al sur en la pared de roca."
5043 DATA "Derrumbe. El camino desciende hacia la agreste sierra, al oeste, desde los verdes valles al este. Pero un gran derrumbe bloquea la sierra."
5045 DATA "Gruta de entrada. El estrecho paso se adentra hacia el oeste, desde la boca, al norte. "
5047 DATA "Gran lago. Una gran estancia alberga un lago de profundas e iridiscentes aguas, debido a la luz exterior. No hay otra salida que el este."
5049 DATA "Salida del paso secreto. Una gran estancia se abre hacia el oeste, y se estrecha hasta morir, al este, en una parte de agua."
5051 DATA "Puente semipodrido. La sala se abre en semioscuridad a un puente cubierto de podredumbre sobre el lecho de un canal, de este a oeste."
5053 DATA "Recodo de la cueva. La iridiscente cueva gira de este a sur."
5055 DATA "Pasaje arenoso. La gruta desciende de norte a sur sobre un lecho arenoso. Al este, un agujero del que llega claridad."
5057 DATA "Pasaje del agua. Como un acueducto, el agua baja con gran fuerza de norte a este, aunque la salida practicable es la del oeste."
5059 DATA "Estalactitas. Muchas estalactitas se agrupan encima de tu cabeza, y se abren cual arco de entrada hacia el este y sur."
5061 DATA "Puente de piedra. Un arco de piedra se eleva, cual puente sobre la oscuridad, de este a oeste. En su mitad, un altar."
5063 DATA "Recodo arenoso del canal. La furiosa corriente, de norte a este, impide el paso, excepto al oeste. Al fondo, se oye un gran estruendo."
5065 DATA "Un tramo de cueva estrecho te permite avanzar hacia el norte y el sur; un pasaje surge al este."
5067 DATA "Un tramo de cueva estrecho te permite avanzar de este a oeste; un pasaje surge al sur."
5069 DATA "Un tramo de cueva estrecho te permite avanzar de este a oeste; un pasaje surge al sur."
5071 DATA "Un tramo de cueva estrecho te permite avanzar de oeste a sur."
5073 DATA "Un tramo de cueva estrecho te permite avanzar de este a norte."
5075 DATA "Un tramo de cueva estrecho te permite avanzar de este a oeste. Al norte y al sur surgen pasajes."
5077 DATA "Un tramo de cueva estrecho te permite avanzar de este a oeste. Al norte surge un pasaje."
5079 DATA "Un tramo de cueva estrecho te permite avanzar al oeste. Al norte surge un pasaje."
5081 DATA "Refugio. Una amplia estancia de norte a este, hace de albergue a refugiados: hay banderas de ambos bandos. Un hombre anciano te contempla."
5085 DATA "Espiral. Cual escalera de caracol gigante, desciende a las profundidades, dejando a los refugiados al oeste."
5087 DATA "Inicio de la espiral. Se eleva en la penumbra. La caverna se estrecha ahora como para una sola persona, hacia el este."
5091 DATA "Puerta norte. En este pasaje grandes rocas se encuentran entre las columnas de un arco de medio punto."
5093 DATA "Precipicio. El camino ahora no excede de dos palmos de cornisa sobre un abismo insondable. El soporte de roca gira en 'u' de oeste a sur."
5095 DATA "Pasaje de salida. El paso se va haciendo menos estrecho a medida que se avanza hacia el sur, para entonces comenzar hacia el este."
5097 DATA "Pasaje de gravilla. El paso se anchea de oeste a norte, y guijarros mojados y mohosos tachonan el suelo de roca."
5099 DATA "Puente sobre el acueducto. Un puente se tiende de norte a sur sobre el curso del agua. Resbaladizas escaleras descienden hacia el oeste."
5101 DATA "Remanso. Estruendosa corriente baja con el pasaje elevado desde el oeste, y forma un meandro arenoso. Unas escaleras suben al este."
5103 DATA "Canal de agua. El agua baja del oeste con renovadas fuerzas, dejando un estrecho paso elevado lateral para avanzar a este o a oeste."
5105 DATA "Gran Cascada. Cae el agua hacia el este, descendiendo con gran fuerza hacia el canal, no sin antes embalsarse en un lago poco profundo."
5107 DATA "Interior de la cascada. Musgoso y rocoso, con la cortina de agua tras de ti, el nivel del agua ha crecido un poco en este curioso hueco."
5109 DATA "Explanada. Una gran explanda enlosetada contempla un bello panorama de estalactitas. Unos casi imperceptibles escalones conducen al este."
5111 DATA "Idolo. El Idolo parece un centinela siniestro de una gran roca que se encuentra al sur. Se puede volver a la explanada al oeste."
5113 DATA "Pasaje estrecho. Como un pasillo que corteja el canal de agua, a su lado, baja de norte a sur. Se aprecia un aumento de luz hacia el sur."
5115 DATA "Pasaje de la serpiente. El pasaje sigue de norte a sur."
5117 DATA "Lago interior. Unas escaleras dan paso a un hermoso lago interior, y siguen hacia el oeste. Al norte, un oscuro y estrecho pasaje sube."
5119 DATA "Cruce de pasajes. Estrechos pasos permiten ir al oeste, al este (menos oscuro), y al sur, un lugar de gran luminosidad."
5121 DATA "Hogar de Ambrosio. Un catre, algunas velas y una mesa es todo lo que tiene Ambrosio."
5123 DATA "Salida de la cueva. Por el oeste, una puerta impide, cuando cerrada, la salida de la cueva. Se adivina la luz diurna al otro lado."
5125 DATA "Bosque a la entrada. Apenas se puede reconocer la entrada de la cueva, al este. El sendero sale del bosque hacia el oeste."
5127 DATA "Sendero del bosque. El sendero recorre esta parte del bosque de este a oeste."
5129 DATA "Camino norte. El camino norte de Westmorland se interna hacia el bosque, al norte (en tu estado no puedes ir), y a Westmorland, al sur."
5131 DATA "Westmorland. La villa bulle de actividad con el mercado en el centro de la plaza, donde se encuentra el castillo."
5136 REM Dirs
5141 LET Dirs=6: DIM d(51,6): RESTORE 5173
5146 FOR n=1 TO Locs
5151 FOR i=1 TO Dirs
5156 READ d(n,i)
5161 NEXT i
5166 NEXT n
5170 RETURN
5171 REM N S E W U D
5173 DATA 0,2,0,0,0,0
5175 DATA 1,0,0,3,0,0
5177 DATA 0,0,2,4,0,0
5179 DATA 5,0,3,9,0,0
5181 DATA 0,4,0,6,0,0
5183 DATA 0,0,5,7,0,0
5185 DATA 0,8,6,0,0,0
5187 DATA 7,10,0,0,0,0
5189 DATA 0,0,4,0,0,0
5191 DATA 8,0,0,11,0,0
5193 DATA 0,0,10,0,0,0
5195 DATA 0,0,0,13,0,0
5197 DATA 0,0,12,14,0,0
5199 DATA 0,15,13,0,0,0
5201 DATA 14,17,16,0,0,0
5203 DATA 0,0,0,15,0,0
5205 DATA 15,20,18,0,0,0
5207 DATA 0,0,19,17,0,0
5209 DATA 0,0,0,18,0,0
5211 DATA 17,22,25,0,0,0
5213 DATA 0,27,23,20,0,0
5215 DATA 0,24,27,22,0,0
5217 DATA 0,25,0,21,0,0
5219 DATA 22,0,26,0,0,0
5221 DATA 22,28,23,21,0,0
5223 DATA 26,0,20,27,0,0
5225 DATA 27,0,0,25,0,0
5227 DATA 26,0,0,0,0,0
5231 DATA 0,0,0,28,0,30
5233 DATA 0,0,31,0,29,0
5235 DATA 0,0,0,30,0,0
5237 DATA 0,33,0,31,0,0
5238 DATA 32,0,34,0,0,0
5239 DATA 35,0,0,33,0,0
5243 DATA 40,34,0,36,0,36
5245 DATA 0,0,35,37,35,0
5247 DATA 0,0,36,38,0,0
5249 DATA 0,0,37,39,0,0
5250 DATA 0,0,38,0,0,0
5251 DATA 0,35,41,0,0,0
5253 DATA 0,0,0,40,0,0
5255 DATA 41,43,0,0,0,0
5257 DATA 42,0,0,0,0,0
5259 DATA 43,0,0,45,0,0
5261 DATA 0,47,44,46,0,0
5263 DATA 0,0,45,0,0,0
5265 DATA 45,0,0,0,0,0
5267 DATA 0,0,47,49,0,0
5268 DATA 0,0,48,50,0,0
5269 DATA 0,51,49,0,0,0
5271 DATA 50,0,0,0,0,0
5282 REM nObjs
5287 LET Objs=23: RESTORE 5312: DIM n$(23,9)
5292 FOR n=1 TO Objs
5297 READ n$(n)
5302 NEXT n
5307 RETURN
5312 DATA "altar","ambrosio","antorcha","amorfa","banderas","capa","cascada","derrumbe","esmeralda","espada","harapo","hilo","hombre","idolo","lago","llave","pedernal","piedra","puerta","rocas","serpiente","tronco","trozo"
5430 REM dObjs
5432 DIM o$(23,70): RESTORE 5457
5437 FOR n=1 TO Objs
5442 READ o$(n)
5447 NEXT n
5452 RETURN
5457 DATA "Justo en la mitad del puente, debe sostener algo importante."
5462 DATA "Ambrosio es un hombre de mediana edad, que te mira afable."
5467 DATA "Apagada.","Ilumina perfectamente."
5477 DATA "Son las banderas britana y sajona, respectivamente. Dos dragones."
5482 DATA "Tu capa de general, de fina lana tintada de negro."
5487 DATA "No ves nada por la cortina de agua. El lago es muy poco profundo."
5492 DATA "Muchas, inalcanzables rocas, apiladas una sobre otra."
5497 DATA "Es preciosa."
5502 DATA "Legado de tu padre, fiel herramienta en mil batallas."
5507 DATA "Un trozo un poco grande de capa."
5512 DATA "Un hilo se ha desprendido al cortar la capa con la espada."
5517 DATA "Es el jefe de los refugiados."
5522 DATA "El Idolo tiene dos agujeros por ojos."
5527 DATA "La luz entra por un resquicio, y caprichosos reflejos te maravillan."
5532 DATA "Una llave grande, de hierro herrumboso."
5537 DATA "Se trata de una dura piedra."
5542 DATA "Recia y pesada, pero no muy grande, de forma piramidal."
5547 DATA "Muy recia y con un gran candado."
5552 DATA "Son muchas, aunque parecen ligeras y con huecos entre ellas."
5557 DATA "Una serpiente bloquea el paso al sur, corriendo a su lado el agua."
5562 DATA "Es un tronco recio, pero de liviano peso."
5567 DATA "Es un poco de lo que antes era tu capa."
5572 REM atrObjs
5577 DIM o(23,2)
5582 FOR n=1 TO Objs
5587 FOR i=1 TO 2
5592 READ o(n,i)
5597 NEXT i
5602 NEXT n
5605 RETURN
5607 REM Loc Stc
5609 DATA 18,1
5611 DATA 19,2
5613 DATA 255,0
5615 DATA 255,0
5617 DATA 28,1
5619 DATA 0,0
5621 DATA 38,1
5623 DATA 9,1
5625 DATA 39,0
5627 DATA 0,0
5629 DATA 255,0
5631 DATA 255,0
5633 DATA 28,1
5635 DATA 41,1
5637 DATA 44,1
5639 DATA 46,1
5641 DATA 255,0
5643 DATA 18,0
5645 DATA 47,1
5647 DATA 31,1
5649 DATA 43,1
5650 DATA 15,0
5651 DATA 255,0
7000 REM proc0
7005 IF acc=-1 THEN LET t$="No conozco ese verbo.": GO SUB 9850: RETURN
7010 IF n(acc)=1 AND uno=-1 THEN LET t$=j$: GO SUB 9850: RETURN
7015 IF n(acc)=2 AND (uno=-1 OR otro=-1) THEN LET t$=j$: GO SUB 9850: RETURN
7020 IF n(acc)>0 THEN LET obj=uno: GO SUB 1000: IF aqui=0 THEN LET t$=j$: GO SUB 9850: RETURN
7030 IF n(acc)=2 AND otro<>-1 THEN LET obj=otro: GO SUB 1000: IF aqui=0 THEN LET t$=j$: GO SUB 9850: RETURN
7045 IF acc<>17 THEN GO TO 7055
7050 IF acc=17 THEN LET m$="Volver a intentarlo (S/N):": GO SUB 9940: IF m$(1)="n" OR m$(1)="N" THEN RANDOMIZE USR 0
7052 GO TO 5
7055 IF acc=13 THEN GO SUB 9998: GO SUB 9980: RETURN
7060 IF acc=10 AND uno=-1 THEN GO SUB 7950: RETURN
7062 IF acc=10 THEN LET obj=uno: GO SUB 1000: IF aqui=1 THEN LET t$=o$(uno): GO SUB 9850: RETURN
7064 IF acc=10 THEN LET t$=j$: GO SUB 9850: RETURN
7065 IF acc=14 THEN LET numDir=1: GO SUB 7900: RETURN
7070 IF acc=16 THEN LET numDir=2: GO SUB 7900: RETURN
7075 IF acc=9 THEN LET numDir=3: GO SUB 7900: RETURN
7080 IF acc=15 THEN LET numDir=4: GO SUB 7900: RETURN
7085 IF acc=3 THEN LET numDir=5: GO SUB 7900: RETURN
7090 IF acc=1 THEN LET numDir=6: GO SUB 7900: RETURN
7095 IF acc=5 THEN LET t$=k$: GO SUB 9850: GO SUB 9960: RETURN
7100 IF acc=7 THEN GO SUB 7515: RETURN
7110 IF acc=8 THEN GO SUB 7500: RETURN
7115 IF acc=6 AND loc=11 THEN LET loc=12: LET t$="Caes hacia el fondo por el peso de tu coraza. Como puedes, te desprendes de ella y buceas, pensando en avanzar, aunque perdido.": GO SUB 9850: GO SUB 9960: PRINT : LET t$="Consigues emerger, si bien en un sitio desconocido de la caverna ...": GO SUB 9850: GO SUB 9960: GO SUB 9998: GO SUB 9980: RETURN
7118 IF acc=6 THEN LET t$="No tiene sentido nadar ahora.": GO SUB 9850: RETURN
7120 IF acc=4 THEN GO SUB 7530: RETURN
7125 IF acc=11 THEN GO SUB 7600: RETURN
7130 IF acc=18 THEN GO SUB 7700: RETURN
7135 IF acc=2 AND loc=47 THEN LET obj=16: GO SUB 1000: IF aqui=1 THEN LET t$="La puerta se abre, rechinando, mientras hiedras y hierbas se rompen en su trazado.": GO SUB 9850: GO SUB 9970: PRINT : LET t$="Ambrosio, alegre, se despide de ti. 'Estoy seguro de que volveremos a vernos', dice. Se ha ido.": GO SUB 9840: LET o(2,1)=255: LET o(16,1)=255: LET o$(19)="Entreabierta.": LET d(47,4)=48: RETURN
7137 IF acc=2 AND loc=47 THEN LET t$="El candado bloquea la puerta.": GO SUB 9850: RETURN
7140 IF acc=2 THEN LET t$="No hay nada que abrir ahora.": GO SUB 9850: RETURN
7145 IF acc=12 THEN GO SUB 7715: RETURN
7499 GO SUB 7990: RETURN
7500 REM deja
7502 IF uno=10 AND loc<12 THEN LET t$="No, es lo que queda de tu padre.": GO SUB 9850: RETURN
7504 IF uno=4 THEN LET t$="No, sin luz es imposible moverse por la caverna.": GO SUB 9850: RETURN
7506 IF o(uno,1)=0 THEN LET o(uno,1)=loc: LET t$="Hecho.": GO SUB 9850: RETURN
7510 LET t$="No llevas eso contigo.": GO SUB 9850: RETURN
7515 REM coge
7516 IF o(uno,1)=0 THEN LET t$="Pero si ya lo tienes ...": GO SUB 9850: RETURN
7518 IF uno=16 AND o(16,2)=1 THEN LET t$="Ambrosio la retiene consigo.": GO SUB 9850: RETURN
7520 IF o(uno,2)<>0 THEN LET t$="No es algo que se pueda coger.": GO SUB 9850: RETURN
7525 LET o(uno,1)=0: LET t$="Hecho.": GO SUB 9850: RETURN
7530 REM romper
7532 LET n=0: LET obj=otro: IF otro=-1 THEN LET otro=10: LET obj=10: LET n=1
7535 GO SUB 1000
7540 IF uno=6 AND ((aqui=1 AND otro=10) OR n=1) THEN LET o(6,1)=255: LET o(11,1)=0: LET o(12,1)=0: LET o(23,1)=0: LET t$="Rasgas la capa, como buenamente puedes.": GO SUB 9850: RETURN
7541 IF uno=6 THEN GO TO 7595
7542 IF uno=20 AND otro=22 AND aqui=1 AND n=0 THEN LET o(20,1)=255: LET d(31,1)=32: LET t$="Haciendo palanca, consigues desencajar una, y el resto caen por su propio peso.": GO SUB 9850: RETURN
7545 IF uno=20 AND otro=10 THEN LET t$="Tu espada no hace nada, ni, por descontado, tus manos desnudas.": GO SUB 9850: RETURN
7550 IF aqui=0 THEN LET t$="En cualquier caso, no con las manos desnudas.": GO SUB 9850: RETURN
7552 IF uno=20 AND otro=22 THEN LET o(20,1)=255: LET d(31,1)=32: LET t$="Haciendo palanca, consigues desencajar una, y el resto caen por su propio peso.": GO SUB 9850: RETURN
7555 LET obj=3: GO SUB 1000: IF uno=17 AND otro=10 AND aqui=1 THEN LET o(3,1)=255: LET o(4,1)=loc: LET n$(3)="amorfa": LET n$(4)="antorcha": LET t$="Poderosas chispas salen del choque entre espada y pedernal, encendiendo la antorcha.": GO SUB 9850: RETURN
7560 IF uno=17 AND otro=10 THEN LET t$="Ante el potente choque con la espada, poderosas chispas saltan en todas direcciones.": GO SUB 9850: RETURN
7565 IF uno=17 THEN GO TO 7595
7570 IF uno=21 AND otro=10 THEN LET t$="Ante los amenazadores tajos, la serpiente huye.": LET d(43,2)=44: LET o(21,1)=255: GO SUB 9850: RETURN
7575 IF uno=21 THEN GO TO 7595
7590 LET t$="Eso no es lo adecuado ahora.": GO SUB 9850: RETURN
7595 LET t$="Con eso no...": GO SUB 9850: RETURN
7600 REM habla
7610 IF uno=2 AND o(2,1)=19 THEN LET o(3,1)=0: LET o(17,1)=0: LET o(2,1)=46: LET t$="- Hola, buen hombre.": GO SUB 9840: LET t$="- Hola, Ulfius. Mi nombre es Ambrosio.": GO SUB 9840: GO SUB 9960: PRINT : LET t$="Por primera vez, Ulfius se sienta y cuenta a Ambrosio todo lo que ha pasado. Y tras tanto acontecido, llora desconsoladamente.": GO SUB 9850: GO SUB 9970: GO SUB 9998: LET t$="Ambrosio le propone un trato, que acepta: por ayudarle a salir de la cueva, objetos, vitales para la empresa, le son entregados.": GO SUB 9850: GO SUB 9970: PRINT : LET t$="- Bien, Ambrosio, emprendamos la marcha.": GO SUB 9840: PRINT : LET t$="Ulfius se da la vuelta para ver si Ambrosio le sigue, pero ... ha desaparecido.": GO SUB 9850: GO SUB 9970: PRINT : LET t$="Ulfius piensa entonces en el hecho curioso de que supiera su nombre.": GO SUB 9850: GO SUB 9960: RETURN
7615 IF uno=13 THEN GO SUB 7650: RETURN
7620 IF uno=2 AND loc=46 AND sig=0 THEN LET t$="- La llave, Ambrosio, estaba ya en tu poder. Y es obvio que conoceis un camino mas corto.": GO SUB 9840: LET t$="- Estoy atrapado en la cueva debido a magia de maligno poder. En cuanto al camino, vos debeis hacer el vuestro, verlo todo con vuestros ojos.": GO SUB 9840: LET t$="Ulfius sacude la cabeza.": GO SUB 9850: LET t$="- No lo entiendo, la verdad.": GO SUB 9840
7625 IF uno=2 AND loc>=45 AND loc<=47 THEN LET t$="- Por favor, Ulfius, cumple tu promesa. Toma la llave en tu mano y abre la puerta de la cueva.": LET o(16,1)=0: LET o(16,2)=0: LET sig=1: GO SUB 9840: RETURN
7630 LET t$="No tiene sentido hablar con eso.": GO SUB 9850: RETURN
7650 IF hablado=0 THEN LET t$="- Me llamo Ulfius y ...": GO SUB 9840: LET t$="El hombre asiente, impaciente.": GO SUB 9850: LET t$="- Somos refugiados de la gran guerra. Buscamos la paz.": GO SUB 9840
7655 LET hablado=1
7660 LET obj=18: GO SUB 1000: IF aqui=1 THEN LET o(18,1)=18: LET t$="El hombre se irrita.": GO SUB 9850: LET t$="- No podemos permitiros huir con la piedra del druida.": GO SUB 9840: LET t$="Hace un gesto...": GO SUB 9850: LET t$="- La piedra debe devolverse a su lugar de encierro.": GO SUB 9840: LET t$="Un hombre te arrebata la piedra y se la lleva.": GO SUB 9850: RETURN
7665 LET obj=10: GO SUB 1000: IF aqui=1 THEN LET t$="El hombre se enfurece, y alza su mano indicando al norte.": GO SUB 9850: LET t$="- Nadie portando armas puede pasar.": GO SUB 9840: RETURN
7670 LET d(28,3)=29: LET t$="El hombre, calmado, indica hacia el este y habla:": GO SUB 9850: LET t$="- Si vienes en paz, puedes ir en paz.": GO SUB 9840: LET t$="Todos se apartan y permiten ahora el paso al este.": RETURN
7700 REM tira
7705 IF loc=19 AND (uno=10 OR uno=18) AND hablado=1 THEN LET o(uno,1)=39: LET t$="La corriente lo arrastra fuertemente, hasta perderlo de vista.": GO SUB 9850: RETURN
7707 IF loc=19 THEN LET t$="No quieres perder eso.": GO SUB 9850: RETURN
7709 IF loc=13 OR loc=16 THEN LET t$="No hay suficiente profundidad.": GO SUB 9850: RETURN
7710 LET t$="No tiene sentido tirar nada ahora.": GO SUB 9850: RETURN
7715 REM mete
7720 IF otro<>14 THEN LET t$="No tiene sentido meter nada en eso.": GO SUB 9850: RETURN
7730 IF uno=18 OR uno=9 THEN LET o(uno,1)=255
7735 IF o(18,1)=255 AND o(9,1)=255 THEN LET d(41,2)=42: LET t$="La gran roca se desplaza y deja el paso libre.": GO SUB 9850: RETURN
7737 IF uno<>18 AND uno<>9 THEN LET t$="No encaja.": GO SUB 9850: RETURN
7740 LET t$="Encaja: metido. Desaparece en su interior.": GO SUB 9850: RETURN
7900 REM movs
7905 IF d(loc,numDir)>0 THEN LET loc=d(loc,numDir): GO SUB 9998: GO SUB 9980: RETURN
7910 LET t$="No es posible.": GO SUB 9850: RETURN
7950 LET t$="": REM inv
7952 FOR n=1 TO Objs
7954 IF o(n,1)=0 THEN LET t$=t$+"  - "+n$(n)+CHR$ 13
7956 NEXT n
7958 IF t$<>"" THEN PRINT "Inventario:": PRINT : PRINT t$: GO TO 7970
7960 LET t$="No llevas nada contigo.": GO SUB 9850
7970 RETURN
7990 LET t$="No puedes hacer eso.": GO SUB 9850
7999 RETURN
8000 REM parser
8010 LET m$="": LET j=1: LET l=LEN t$: LET acc=-1: LET uno=-1: LET otro=-1
8015 IF j<=l AND t$(j)=" " THEN LET j=j+1: GO TO 8015
8025 IF l>1 AND t$(l)=" " THEN LET l=l-1: GO TO 8025
8030 IF j>l THEN GO TO 8080
8035 LET chrAsc= CODE t$(j)
8040 IF chrAsc>=chrA AND chrAsc<=chrZ THEN LET chrAsc=diff+chrAsc
8045 IF chrAsc<> CODE " " THEN LET m$=m$+CHR$ chrAsc: GO TO 8070
8050 GO SUB 8090
8055 IF otro<>-1 THEN GO TO 8085
8065 IF t$(j)=" " THEN LET j=j+1: GO TO 8065
8067 GO TO 8030
8070 LET j=j+1
8075 GO TO 8030
8080 GO SUB 8090
8085 RETURN
8090 IF NOT (m$<>"con" AND m$<>"de" AND m$<>"del" AND m$<>"el" AND m$<>"la" AND m$<>"los" AND m$<>"las" AND m$<>"a" AND m$<>"al" AND m$<>"por" AND m$<>"en" AND m$<>"y") THEN GO TO 8120
8095 IF acc<>-1 THEN GO TO 8105
8100 IF m$(LEN m$)="r" THEN LET m$=m$( TO LEN m$-1)
8101 GO SUB 540
8102 GO TO 8120
8105 IF uno=-1 THEN GO SUB 8157: LET uno=obj: GO TO 8120
8110 IF otro=-1 THEN GO SUB 8157: LET otro=obj
8120 LET m$="": RETURN
8155 REM locObj
8157 IF m$="anciano" OR m$="jefe" THEN LET obj=13: RETURN
8160 LET n=LEN m$: LET obj=-1: IF n=0 THEN RETURN
8162 IF n>9 THEN LET n=9: LET m$=m$( TO 9)
8165 IF n>2 THEN IF m$( TO 3)="ojo" THEN LET obj=14: RETURN
8167 IF n>6 THEN IF m$( TO 7)="agujero" THEN LET obj=14: RETURN
8170 LET i=1: LET f=Objs+1
8175 LET m=INT ((i+f)/2)
8180 IF n$(m)( TO n)=m$ THEN LET obj=m: RETURN
8185 IF m=i THEN RETURN
8190 IF n$(m)>m$ THEN LET f=m: GO TO 8194
8192 LET i=m
8194 GO TO 8175
9830 REM descMira
9835 INK 5
9837 GO TO 9850
9840 REM habla
9845 INK 6
9850 REM Format
9852 IF t$="" THEN RETURN
9855 LET i=1: LET f=Cols: LET n=LEN t$
9857 IF Cols>n THEN PRINT t$: GO TO 9880
9860 IF i<n AND t$(i)=" " THEN LET i=i+1: LET f=f+1: GO TO 9860
9862 IF f>n THEN LET f=n: GO TO 9870
9865 IF f>1 AND t$(f)<>" " THEN LET f=f-1: GO TO 9865
9870 PRINT t$(i TO f)
9875 IF f<n THEN LET i=f+1: LET f=f+Cols: GO TO 9860
9880 LET t$="": INK 7: RETURN
9940 REM siNo()
9942 PRINT m$: INPUT LINE m$
9944 IF LEN m$=0 THEN GO TO 9942
9946 IF m$(1)=" " THEN GO TO 9942
9948 LET m$=m$(1)
9950 RETURN
9960 REM Puntos
9965 PRINT #1; INK 4;"..."
9970 REM pausa
9972 IF INKEY$<>"" THEN GO TO 9972
9974 IF INKEY$="" THEN GO TO 9974
9976 RETURN
9980 REM mira
9982 GO SUB 2500: PRINT AT 1,0: LET t$=h$(loc): GO SUB 9830
9984 IF m$<>"" THEN LET t$=m$: LET m$="": PRINT : GO SUB 9850
9986 PRINT : GO SUB 2000: RETURN
9995 REM input
9996 INPUT ">"; LINE t$: IF t$="" THEN GO TO 9996
9997 INK 6: PRINT ">";t$: INK 7: RETURN
9998 BORDER 0: PAPER 0: INK 7: CLS : RETURN
