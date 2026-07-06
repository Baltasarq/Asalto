1REMAsalto
2definta-z
3GOSUB9998:COLOR3:PRINT"Asalto y castigo":PRINT:PRINT"baltasarq@yahoo.es":PRINT"http://caad.es/baltasarq/"
5PRINT:PRINT"C.A.A.D.":PRINT"http://www.caad.es/":PRINT:PRINT:GOSUB9970:CL=37:GOSUB9998
12T$="El sol despunta de entre la niebla, haciendo humear los tejados de paja.":GOSUB9850:GOSUB9970:PRINT
14T$="Piensas en el encargo realizado por Uther Pendragon. Atacar una aldea tranquila, aunque sea una llena de sajones, no te llena de orgullo.":GOSUB9850
16OS=23:NL=1:LS=51:SG=0:SX=0:HA=0:AC=-1:UN=-1:OT=-1:CT=0:J$="No lo veo, o no es importante."
18K$="Direcciones:n(orte), s(ur), e(ste), o(este), arriba, abajo. (M)irar redescribe un lugar, (ex)aminar permite examinar un objeto, o, al no indicar nada, a ti. Se puede cortar, nadar, atacar, empujar o golpear algo, cogerlo, dejarlo, y tirarlo."
20GOSUB500:GOSUB9970:PRINT:T$="Los hombres se ciernen sobre la aldea, y la destruyen. No hubo tropas enemigas, ni honor en la batalla.":GOSUB9850:GOSUB5136:GOSUB5572:GOSUB9960:GOSUB9998:T$="- Sire Ulfius, la batalla ha terminado.":GOSUB9840
40PRINT:T$="Lentamente, das la orden de volver a casa. Los oficiales detienen como pueden el saqueo.":GOSUB9850:GOSUB5282:GOSUB9970
100GOSUB9998:GOSUB9980
110GOSUB3000:GOSUB9995:GOSUB8000:GOSUB7000:GOTO110
500AS=18:DIMA$(18)
505DIMN(18):RESTORE525
510FORI=1TOAS:READA$(I):READN(I):NEXTI
525DATA "abajo",0,"abre",1,"arriba",0,"ataca",1,"ayuda",0,"bucea",0,"coge",1,"deja",1,"este",0,"examina",0,"habla",1,"mete",2,"mira",0,"norte",0,"oeste",0,"su",0,"termina",0,"tira",1
530RETURN
540AC=-1:N=LEN(M$)
544IFN>1THENGOTO550
546IFM$="e"THENAC=9:RETURN
548IFM$="m"THENAC=13:RETURN
550IFN>2THENIFLEFT$(M$,3)="nad"THENAC=6:RETURN
551IFN>6THENIFLEFT$(M$,6)="recort"THENAC=4:RETURN
552IFN>4THENIFLEFT$(M$,4)="afil"THENAC=4:RETURN
553IFN>3THENIFLEFT$(M$,3)="mat"THENAC=4:RETURN
554IFM$="examinate"ORM$="examinarte"THENAC=10:RETURN
555IFM$="fin"THENAC=17:RETURN
556IFN>4THENIFLEFT$(M$,4)="cort"THENAC=4:RETURN
557IFN>5THENIFLEFT$(M$,5)="empuj"THENAC=4:RETURN
558IFN>5THENIFLEFT$(M$,5)="golpe"THENAC=4:RETURN
559IFN>4THENIFLEFT$(M$,4)="romp"THENAC=4:RETURN
560IFN>7THENN=7:M$=LEFT$(M$,7)
565I=1:F=AS+1:M=2
575M=INT((I+F)/2)
580IFLEFT$(A$(M),N)=M$THENAC=M:RETURN
582IFI=MTHENRETURN
585IFA$(M)>M$THENF=M:GOTO575
590I=M:GOTO575
1000AQ=0
1010IFO(OJ,1)=0ORO(OJ,1)=NLTHENAQ=1
1015RETURN
2000T$=""
2005FORN=1TOOS
2010IFO(N,1)=NL AND O(N,2)=2THENT$=T$+"  - "+CHR$(ASC(LEFT$(N$(N),1))-(ASC("a")-ASC("A")))+RIGHT$(N$(N),LEN(N$(N))-1)+CHR$(13)+CHR$(10):GOTO2035
2015IFO(N,1)=NLTHENT$=T$+"  - "+N$(N)+CHR$ (13)+CHR$(10)
2035NEXT N
2045IFT$<>""THENPRINT"Puedes ver:"+CHR$(13)+CHR$(10)+T$
2050RETURN
2500M$=""
2505IFNL=11ORNL=38ORNL=44THENO(15,1)=NL
2510IFNL=16THENM$="En la distancia, por entre los resquicios de las rocas, y allende el canal de agua, los sajones tratan de buscar la salida que encontraste por casualidad."
2515IFNL<10 AND D(8,1)<>0THENM$="Tus hombres siguen tus pasos."
2520IFO(2,1)<>255 AND O(16,2)=0 AND (NL=46ORSG=1)THENM$="Tu benefactor te sigue, esperanzado.":O(2,1)=NL:RETURN
2530IFNL=28THEND(28,3)=0:RETURN
2540IFNL=31 AND D(31,1)=0THENM$="Las rocas bloquean el camino.":RETURN
2545IFNL=31THENM$="Las rocas yacen desmoronadas a lo largo del pasaje.":RETURN
2999RETURN
3000IFNL<>8ORD(8,1)=0THENGOTO3100
3015D(8,1)=0:SX=1:T$="Una partida sajona aparece por el este. Para cuando te vuelves al norte, ya no te queda ninguna duda:era una trampa.":GOSUB9850:GOSUB9960
3020PRINT:T$="En el estrecho paso es posible resistir, aunque por desgracia sus efectivos son muy superiores a los tuyos.":GOSUB9850:GOSUB9970:GOSUB9998
3025T$="Tus oficiales te conminan a huir. Capturando a un general britano, ganan doblemente. Sabes que es cierto, y te duele.":GOSUB9840:PRINT:GOSUB9970
3100IFSX>0 AND NL<12THENSX=SX+1:T$="No sabes cuanto tiempo te queda ...":GOSUB9850:PRINT
3200IFSX>10 AND NL<12THENT$="Los sajones te capturan. Su general, sonriendo ampliamente, dice:'bien, bien'. Del gran Ulfius podremos sacar una buena ventaja.":GOSUB9840:GOSUB9960:LET AC=17:GOTO7000
3300IFNL<10 AND D(8,1)=0THENT$="Tus hombres luchan con denuedo contra los sajones.":PRINT:GOSUB9850
3400OJ=4:GOSUB1000:IFNL>19 AND AQ=0THENT$="Ante la reinante e intimidante oscuridad, retrocedes a donde puedes ver.":GOSUB9850:GOSUB9960:NL=17:GOSUB9998:GOSUB9980:RETURN
3500IFNL<>51THENGOTO4999
3505T$="Agotado, das parte en el castillo de tu llegada y de lo que ha pasado.":GOSUB9850:GOSUB9970:PRINT
3510T$="Pides audiencia al rey, Uther Pendragon.":GOSUB9850:GOSUB9960:GOSUB9998
3515T$="El rey, te indica el valido, ha ordenado que no se le moleste, pues sufre una amarga tristeza.":GOSUB9840:GOSUB9970
3520PRINT:T$="No puedes entenderlo. El rey, tu amigo.":GOSUB9850:GOSUB9970
3525PRINT:T$="Agotado, decepcionado, apesadumbrado, decides ir a dormir a tu casa. Es lo poco que puedes hacer.":GOSUB9850:GOSUB9960
3530T$="Te HAS GANADO un buen descanso.":PRINT:GOSUB9850:PRINT:AC=17:GOTO7000
4999RETURN
5000IFNL<=25 THEN ON NL GOTO5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5068,5069,5070,5071,5072,5073,5074,5075
5010N=NL-25:ON N GOTO5076,5077,5078,5079,5080,5081,5082,5083,5084,5085,5086,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,5100,5101
5030END
5051T$="Aldea Sajona. No ha quedado nada en pie, ni piedra sobre piedra. El entorno es desolador. Solo resta volver al sur, a casa.":RETURN
5052T$="Sobre la colina, casi sobre la niebla de la aldea sajona arrasada al norte, a tus pies. El camino desciende hacia el oeste.":RETURN
5053T$="Camino entre colinas. El camino avanza por el valle, desde la parte alta, al este, a una zona harto boscosa, al oeste.":RETURN
5054T$="Cruce de caminos. Una senda parte al oeste, a la sierra por el paso del perro, y otra hacia el norte, por un frondoso bosque que la rodea.":RETURN
5055T$="Desde la linde, al sur, hacia el oeste se extiende frondoso el bosque que rodea la sierra. La salida se abre hacia el sur.":RETURN
5056T$="Bosque. Jirones de niebla se enzarcen en frondosas ramas y arbustos. La senda serpentea entre raices, de un luminoso este al oeste.":RETURN
5057T$="Paso del perro. Abruptamente, del bosque se pasa a un estrecho camino entre altas rocas. El inquietante desfiladero tuerce de este a sur.":RETURN
5058T$="Entrada a la cueva. El paso entre el desfiladero sigue de norte a este. La entrada a una cueva se abre al sur en la pared de roca.":RETURN
5059T$="Derrumbe. El camino desciende hacia la agreste sierra, al oeste, desde los verdes valles al este. Pero un gran derrumbe bloquea la sierra.":RETURN
5060T$="Gruta de entrada. El estrecho paso se adentra hacia el oeste, desde la boca, al norte.":RETURN
5061T$="Gran lago. Una gran estancia alberga un lago de profundas e iridiscentes aguas, debido a la luz exterior. No hay otra salida que el este.":RETURN
5062T$="Salida del paso secreto. Una gran estancia se abre hacia el oeste, y se estrecha hasta morir, al este, en una parte de agua.":RETURN
5063T$="Puente semipodrido. La sala se abre en semioscuridad a un puente cubierto de podredumbre sobre el lecho de un canal, de este a oeste.":RETURN
5064T$="Recodo de la cueva. La iridiscente cueva gira de este a sur.":RETURN
5065T$="Pasaje arenoso. La gruta desciende de norte a sur sobre un lecho arenoso. Al este, un agujero del que llega claridad.":RETURN
5066T$="Pasaje del agua. Como un acueducto, el agua baja con gran fuerza de norte a este, aunque la salida practicable es la del oeste.":RETURN
5067T$="Estalactitas. Muchas estalactitas se agrupan encima de tu cabeza, y se abren cual arco de entrada hacia el este y sur.":RETURN
5068T$="Puente de piedra. Un arco de piedra se eleva, cual puente sobre la oscuridad, de este a oeste. En su mitad, un altar.":RETURN
5069T$="Recodo arenoso del canal. La furiosa corriente, de norte a este, impide el paso, excepto al oeste. Al fondo, se oye un gran estruendo.":RETURN
5070T$="Un tramo de cueva estrecho te permite avanzar hacia el norte y el sur; un pasaje surge al este.":RETURN
5071T$="Un tramo de cueva estrecho te permite avanzar de este a oeste; un pasaje surge al sur.":RETURN
5072T$="Un tramo de cueva estrecho te permite avanzar de este a oeste; un pasaje surge al sur.":RETURN
5073T$="Un tramo de cueva estrecho te permite avanzar de oeste a sur.":RETURN
5074T$="Un tramo de cueva estrecho te permite avanzar de este a norte.":RETURN
5075T$="Un tramo de cueva estrecho te permite avanzar de este a oeste. Al norte y al sur surgen pasajes.":RETURN
5076T$="Un tramo de cueva estrecho te permite avanzar de este a oeste. Al norte surge un pasaje.":RETURN
5077T$="Un tramo de cueva estrecho te permite avanzar al oeste. Al norte surge un pasaje.":RETURN
5078T$="Refugio. Una amplia estancia de norte a este, hace de albergue a refugiados:hay banderas de ambos bandos. Un hombre anciano te contempla. Los refugiados te rodean.":RETURN
5079T$="Espiral. Cual escalera de caracol gigante, desciende a las profundidades, dejando a los refugiados al oeste.":RETURN
5080T$="Inicio de la espiral. Se eleva en la penumbra. La caverna se estrecha ahora como para una sola persona, hacia el este.":RETURN
5081T$="Puerta norte. En este pasaje grandes rocas se encuentran entre las columnas de un arco de medio punto.":RETURN
5082T$="Precipicio. El camino ahora no excede de dos palmos de cornisa sobre un abismo insondable. El soporte de roca gira en 'u' de oeste a sur.":RETURN
5083T$="Pasaje de salida. El paso se va haciendo menos estrecho a medida que se avanza hacia el sur, para entonces comenzar hacia el este.":RETURN
5084T$="Pasaje de gravilla. El paso se anchea de oeste a norte, y guijarros mojados y mohosos tachonan el suelo de roca.":RETURN
5085T$="Puente sobre el acueducto. Un puente se tiende de norte a sur sobre el curso del agua. Resbaladizas escaleras descienden hacia el oeste.":RETURN
5086T$="Remanso. Estruendosa corriente baja con el pasaje elevado desde el oeste, y forma un meandro arenoso. Unas escaleras suben al este.":RETURN
5087T$="Canal de agua. El agua baja del oeste con renovadas fuerzas, dejando un estrecho paso elevado lateral para avanzar a este o a oeste.":RETURN
5088T$="Gran Cascada. Cae el agua hacia el este, descendiendo con gran fuerza hacia el canal, no sin antes embalsarse en un lago poco profundo.":RETURN
5089T$="Interior de la cascada. Musgoso y rocoso, con la cortina de agua tras de ti, el nivel del agua ha crecido un poco en este curioso hueco.":RETURN
5090T$="Explanada. Una gran explanada enlosetada contempla un bello panorama de estalactitas. unos casi imperceptibles escalones conducen al este.":RETURN
5091T$="Idolo. El Idolo parece un centinela siniestro de una gran roca que se encuentra al sur. Se puede volver a la explanada al oeste.":RETURN
5092T$="Pasaje estrecho. Como un pasillo que corteja el canal de agua, a su lado, baja de norte a sur. Se aprecia un aumento de luz hacia el sur.":RETURN
5093T$="Pasaje de la serpiente. El pasaje sigue de norte a sur.":RETURN
5094T$="Lago interior. Unas escaleras dan paso a un hermoso lago interior, y siguen hacia el oeste. Al norte, un oscuro y estrecho pasaje sube.":RETURN
5095T$="Cruce de pasajes. Estrechos pasos permiten ir al oeste, al este (menos oscuro), y al sur, un lugar de gran luminosidad.":RETURN
5096T$="Hogar de Ambrosio. Un catre, algunas velas y una mesa es todo lo que tiene Ambrosio.":RETURN
5097T$="Salida de la cueva. Por el oeste, una puerta impide, cuando cerrada, la salida de la cueva. Se adivina la luz diurna al otro lado.":RETURN
5098T$="Bosque a la entrada. Apenas se puede reconocer la entrada de la cueva, al este. El sendero sale del bosque hacia el oeste.":RETURN
5099T$="Sendero del bosque. El sendero recorre esta parte del bosque de este a oeste.":RETURN
5100T$="Camino norte. El camino norte de Westmorland se interna hacia el bosque, al norte (en tu estado no puedes ir), y a Westmorland, al sur.":RETURN
5101T$="Westmorland. La villa bulle de actividad con el mercado en el centro de la plaza, donde se encuentra el castillo.":RETURN
5136DS=6:DIMD(51,6):RESTORE5170
5146FORN=1TOLS
5151FORI=1TODS
5156READD(N,I)
5161NEXTI
5166NEXTN
5168RETURN
5170DATA0,2,0,0,0,0,1,0,0,3,0,0,0,0,2,4,0,0,5,0,3,9,0,0,0,4,0,6,0,0,0,0,5,7,0,0,0,8,6,0,0,0,7,10,0,0,0,0,0,0,4,0,0,0,8,0,0,11,0,0,0,0,10,0,0,0,0,0,0,13,0,0,0,0,12,14,0,0,0,15,13,0,0,0,14,17,16,0,0,0,0,0,0,15,0,0,15,20,18,0,0,0,0,0,19,17,0,0
5180DATA0,0,0,18,0,0,17,22,25,0,0,0,0,27,23,20,0,0,0,24,27,22,0,0,0,25,0,21,0,0,22,0,26,0,0,0,22,28,23,21,0,0,26,0,20,27,0,0,27,0,0,25,0,0,26,0,0,0,0,0,0,0,0,28,0,30,0,0,31,0,29,0,0,0,0,30,0,0,0,33,0,31,0,0,32,0,34,0,0,0,35,0,0,33,0,0
5185DATA40,34,0,36,0,36,0,0,35,37,35,0,0,0,36,38,0,0,0,0,37,39,0,0,0,0,38,0,0,0,0,35,41,0,0,0,0,0,0,40,0,0,41,43,0,0,0,0,42,0,0,0,0,0,43,0,0,45,0,0,0,47,44,46,0,0,0,0,45,0,0,0,45,0,0,0,0,0,0,0,47,49,0,0,0,0,48,50,0,0,0,51,49,0,0,0,50,0,0,0,0,0
5282RESTORE5312:DIMN$(23)
5292FORN=1TOOS:READN$(N):NEXTN
5307RETURN
5312DATA"altar","ambrosio","antorcha","amorfa","banderas","capa","cascada","derrumbe","esmeralda","espada","harapo","hilo","hombre","idolo","lago","llave","pedernal","piedra","puerta","rocas","serpiente","tronco","trozo"
5430ON UN GOTO 5435,5440,5445,5450,5455,5460,5465,5470,5475,5480,5485,5490,5495,5500,5505,5510,5515,5520,5525,5530,5535,5540,5545
5432END
5435T$="Justo en la mitad del puente, debe sostener algo importante.":RETURN
5440T$="Ambrosio es un hombre de mediana edad, que te mira afable.":RETURN
5445T$="Apagada.":RETURN
5450T$="Ilumina perfectamente.":RETURN
5455T$="Son las banderas britana y sajona. Dos dragones rampantes enfrentados, rojo y blanco, respectivamente.":RETURN
5460T$="Tu capa de general, de fina lana tintada de negro.":RETURN
5465T$="No ves nada por la cortina de agua, el lago es muy poco profundo.":RETURN
5470T$="Muchas, inalcanzables rocas, apiladas una sobre otra.":RETURN
5475T$="Es preciosa.":RETURN
5480T$="Legado de tu padre, fiel herramienta en mil batallas.":RETURN
5485T$="Un trozo un poco grande de capa.":RETURN
5490T$="Un hilo se ha desprendido al cortar la capa con la espada.":RETURN
5495T$="Es el jefe de los refugiados.":RETURN
5500T$="El Idolo tiene dos agujeros por ojos.":RETURN
5505T$="La luz entra por un resquicio, y caprichosos reflejos te maravillan.":RETURN
5510T$="Una llave grande, de hierro herrumboso.":RETURN
5515T$="Se trata de una dura y afilada piedra.":RETURN
5520T$="Recia y pesada, pero no muy grande, de forma piramidal.":RETURN
5525T$="Muy recia y con un gran candado.":RETURN
5530T$="Son muchas, aunque parecen ligeras y con huecos entre ellas.":RETURN
5535T$="Una serpiente bloquea el paso al sur, corriendo a su lado el agua.":RETURN
5540T$="Es un tronco recio, pero de liviano peso.":RETURN
5545T$="Es un poco de lo que antes era tu capa.":RETURN
5572DIMO(23,2):RESTORE5607
5582FORN=1TOOS:FORI=1TO2
5592READO(N,I)
5597NEXTI:NEXTN
5605RETURN
5607DATA18,1,19,2,255,0,255,0,28,1,0,0,38,1,9,1,39,0,0,0,255,0,255,0,28,1,41,1,44,1,46,1,255,0,18,0,47,1,31,1,43,1,15,0,255,0
7000IFAC=-1THENT$="No conozco ese verbo.":GOSUB9850:RETURN
7010IFN(AC)=1 AND UN=-1THENT$=J$:GOSUB9850:RETURN
7015IFN(AC)=2 AND (UN=-1OROT=-1)THENT$=J$:GOSUB9850:RETURN
7020IFN(AC)>0THENOJ=UN:GOSUB1000:IFAQ=0THENT$=J$:GOSUB9850:RETURN
7030IFN(AC)=2 AND OT<>-1THENOBJ=OT:GOSUB1000:IFAQ=0THENT$=J$:GOSUB9850:RETURN
7045IFAC<>17THENGOTO7055
7050IFAC=17THENM$="Volver a intentarlo (S/N):":GOSUB9940:IFLEFT$(M$,1)="n"ORLEFT$(M$,1)="N"THENGOSUB9998:NEW
7052RUN
7055IFAC=13THENGOSUB9998:GOSUB9980:RETURN
7060IFAC=10 AND UN=-1THENGOSUB7950:RETURN
7062IFAC=10THENOJ=UN:GOSUB1000:IFAQ=1THENGOSUB5430:GOSUB9850:RETURN
7064IFAC=10THENT$=J$:GOSUB9850:RETURN
7065IFAC=14THENNU=1:GOSUB7900:RETURN
7070IFAC=16THENNU=2:GOSUB7900:RETURN
7075IFAC=9THENNU=3:GOSUB7900:RETURN
7080IFAC=15THENNU=4:GOSUB7900:RETURN
7085IFAC=3THENNU=5:GOSUB7900:RETURN
7090IFAC=1THENNU=6:GOSUB7900:RETURN
7095IFAC=5THENT$=K$:GOSUB9850:GOSUB9960:RETURN
7100IFAC=7THENGOSUB7515:RETURN
7110IFAC=8THENGOSUB7500:RETURN
7115IFAC<>6ORNL<>11THENGOTO7150
7120NL=12:T$="Caes hacia el fondo por el peso de tu coraza. Como puedes, te desprendes de ella y buceas, pensando en avanzar, aunque perdido.":GOSUB9850:GOSUB9960
7130PRINT:T$="Consigues emerger, si bien en un sitio desconocido de la caverna ...":GOSUB9850:GOSUB9960:GOSUB9998:GOSUB9980:RETURN
7150IFAC=6THENT$="No tiene sentido nadar ahora.":GOSUB9850:RETURN
7160IFAC=4THENGOSUB7530:RETURN
7170IFAC=11THENGOSUB7600:RETURN
7180IFAC=18THENGOSUB7700:RETURN
7190IFAC<>2ORNL<>47THENGOTO7250
7200OJ=16:GOSUB1000:IFAQ<>1THENGOTO7250
7210T$="La puerta se abre, rechinando, mientras hiedras y hierbas se rompen en su trazado.":GOSUB9850:GOSUB9970:PRINT
7220T$="Ambrosio, alegre, se despide de ti. 'Estoy seguro de que volveremos a vernos', dice. Se ha ido.":GOSUB9840
7230O(2,1)=255:O(16,1)=255:D(47,4)=48:RETURN
7250IFAC=2 AND NL=47THENT$="El candado bloquea la puerta.":GOSUB9850:RETURN
7260IFAC=2THENT$="No hay nada que abrir ahora.":GOSUB9850:RETURN
7270IFAC=12THENGOSUB7715:RETURN
7499GOSUB7990:RETURN
7500IFUN=10 AND NL<12THENT$="No, es lo que queda de tu padre.":GOSUB9850:RETURN
7504IFUN=4THENT$="No, sin luz es imposible moverse por la caverna.":GOSUB9850:RETURN
7506IFO(UN,1)=0THENO(UN,1)=NL:T$="Hecho.":GOSUB9850:RETURN
7510T$="No llevas eso contigo.":GOSUB9850:RETURN
7515IFO(UN,1)=0THENT$="Pero si ya lo tienes ...":GOSUB9850:RETURN
7518IFUN=16 AND O(16,2)=1THENT$="Ambrosio la retiene consigo.":GOSUB9850:RETURN
7520IFO(UN,2)<>0THENT$="No es algo que se pueda coger.":GOSUB9850:RETURN
7525O(UN,1)=0:T$="Hecho.":GOSUB9850:RETURN
7530N=0:OJ=OT:IFOT=-1THENOT=10:OJ=10:N=1
7535GOSUB1000
7536IFUN=22ANDOT=10ANDCT=0ANDN<>1ANDAQ=1THENT$="Sabes que el resultado es la hoja de tu espada, mellada. No.":GOSUB9850:RETURN
7537IFUN=22ANDOT=17ANDCT=0ANDAQ=1THENCT=1:T$="Con el pedernal, recortas la punta del tronco.":GOSUB9850:RETURN
7538IFUN=22ANDCT=0THENLET T$="El problema es encontrar la herramienta adecuada para hacerlo.":GOSUB9850:RETURN
7539IFUN=22ANDCT=1THENLET T$="La punta ya es lo suficientemente afilada.":GOSUB9850:RETURN
7540IFUN=6AND((AQ=1ANDOT=10)ORN=1)THENO(6,1)=255:O(11,1)=0:O(12,1)=0:O(23,1)=0:T$="Rasgas la capa, como buenamente puedes.":GOSUB9850:RETURN
7541IFUN=6THENGOTO7595
7542IFUN=20ANDOT=22ANDAQ=1ANDN=0ANDCT=1THENO(20,1)=255:D(31,1)=32:T$="Haciendo palanca, consigues desencajar una, y el resto caen por su propio peso.":GOSUB9850:RETURN
7544IFUN=20ANDOT=22ANDAQ=1ANDN=0THENT$="Lo intentas con el tronco, pero la punta es demasiado gruesa, y no penetra entre los resquicios de las rocas.":GOSUB9850:RETURN
7545IFUN=20ANDOT=10THENT$="Tu espada no hace nada, ni, por descontado, tus manos desnudas.":GOSUB9850:RETURN
7550IFAQ=0THENT$="En cualquier caso, no con las manos desnudas.":GOSUB9850:RETURN
7552IFUN=20ANDOT=22THENO(20,1)=255:D(31,1)=32:T$="Haciendo palanca, consigues desencajar una, y el resto caen por su propio peso.":GOSUB9850:RETURN
7555OJ=3:GOSUB1000:IFUN<>17OROT<>10ORAQ<>1THENGOTO7560
7557O(3,1)=255:O(4,1)=NL:N$(3)="amorfa":N$(4)="antorcha":T$="Poderosas chispas salen del choque entre espada y pedernal, encendiendo la antorcha.":GOSUB9850:RETURN
7560IFUN=17ANDOT=10THENT$="Ante el potente choque con la espada, poderosas chispas saltan en todas direcciones.":GOSUB9850:RETURN
7565IFUN=17THENGOTO7595
7570IFUN=21ANDOT=10THENT$="Ante los amenazadores tajos, la serpiente huye.":D(43,2)=44:O(21,1)=255:GOSUB9850:RETURN
7575IFUN=21THENGOTO7595
7590T$="Eso no es lo adecuado ahora.":GOSUB9850:RETURN
7595T$="Con eso no...":GOSUB9850:RETURN
7600IFUN<>2THENGOTO7660
7602IFO(2,1)<>19THENGOTO7625
7605O(3,1)=0:O(17,1)=0:O(2,1)=46:T$="- Hola, buen hombre.":GOSUB9840:T$="- Hola, Ulfius. Mi nombre es Ambrosio.":GOSUB9840:GOSUB9960:PRINT
7610T$="Por primera vez, Ulfius se sienta y cuenta a Ambrosio todo lo que ha pasado. Y tras tanto acontecido, llora desconsoladamente.":GOSUB9850:GOSUB9970:GOSUB9998
7615T$="Ambrosio le propone un trato, que acepta:por ayudarle a salir de la cueva, objetos, vitales para la empresa, le son entregados.":GOSUB9850:GOSUB9970:PRINT:T$="- Bien, Ambrosio, emprendamos la marcha.":GOSUB9840:PRINT
7620T$="Ulfius se da la vuelta para ver si Ambrosio le sigue, pero ... ha desaparecido.":GOSUB9850:GOSUB9970:PRINT:T$="Ulfius piensa entonces en el hecho curioso de que supiera su nombre.":GOSUB9850:GOSUB9960:RETURN
7625IFNL<>46ORSG<>0THENGOTO7655
7630T$="- La llave, Ambrosio, estaba ya en tu poder. Y es obvio que conoceis un camino mas corto.":GOSUB9840
7635T$="- Estoy atrapado en la cueva por magia de maligno poder. En cuanto al camino, vos debeis hacer el vuestro, verlo todo con vuestros ojos.":GOSUB9840:T$="Ulfius sacude la cabeza.":GOSUB9850
7640T$="- No lo entiendo, la verdad.":GOSUB9840
7655IFNL>=45ANDNL<=47THENT$="- Por favor, Ulfius, cumple tu promesa. Toma la llave en tu mano y abre la puerta de la cueva.":O(16,1)=0:O(16,2)=0:SG=1:GOSUB9840:RETURN
7660IFUN=13THENGOSUB7670:RETURN
7665T$="No tiene sentido hablar con eso.":GOSUB9850:RETURN
7670IFHA=0THENT$="- Me llamo Ulfius y ...":GOSUB9840:T$="El hombre asiente, impaciente.":GOSUB9850:T$="- Somos refugiados de la gran guerra. Buscamos la paz.":GOSUB9840
7680HA=1
7685OJ=18:GOSUB1000:IFAQ<>1THENGOTO7697
7687O(18,1)=18:T$="El hombre se irrita.":GOSUB9850:T$="- No podemos permitiros huir con la piedra del druida.":GOSUB9840:T$="Hace un gesto...":GOSUB9850
7690T$="- La piedra debe devolverse a su lugar de encierro.":GOSUB9840:T$="Un hombre te arrebata la piedra y se la lleva.":GOSUB9850:RETURN
7697OJ=10:GOSUB1000:IFAQ=1THENT$="El hombre se enfurece, y alza su mano indicando al norte.":GOSUB9850:T$="- Nadie portando armas puede pasar.":GOSUB9840:RETURN
7699D(28,3)=29:T$="El hombre, calmado, indica hacia el este y habla:":GOSUB9850:T$="- Si vienes en paz, puedes ir en paz.":GOSUB9840:T$="Todos se apartan y permiten ahora el paso al este.":RETURN
7700IFNL=19AND(UN=10ORUN=18)ANDHA=1THENO(UN,1)=39:T$="La corriente lo arrastra fuertemente, hasta perderlo de vista.":GOSUB9850:RETURN
7707IFNL=19THENT$="No quieres perder eso.":GOSUB9850:RETURN
7709IFNL=13ORNL=16THENT$="No hay suficiente profundidad.":GOSUB9850:RETURN
7710T$="No tiene sentido tirar nada ahora.":GOSUB9850:RETURN
7715IFOT<>14THENT$="No tiene sentido meter nada en eso.":GOSUB9850:RETURN
7730IFUN=18ORUN=9THENO(UN,1)=255
7735IFO(18,1)=255ANDO(9,1)=255THEND(41,2)=42:T$="La gran roca se desplaza y deja el paso libre.":GOSUB9850:RETURN
7737IFUN<>18ANDUN<>9THENT$="No encaja.":GOSUB9850:RETURN
7740T$="Encaja:metido. Desaparece en su interior.":GOSUB9850:RETURN
7900IFD(NL,NU)>0THENNL=D(NL,NU):GOSUB9998:GOSUB9980:RETURN
7910T$="No es posible.":GOSUB9850:RETURN
7950T$="Inventario:":GOSUB9850:I=0:FORN=1TOOS:IFO(N,1)=0THENI=1:PRINT"  - "+N$(N)
7955NEXTN:IFI=0THENT$="No llevas nada contigo.":GOSUB9850
7970RETURN
7990T$="No puedes hacer eso.":GOSUB9850
7999RETURN
8000M$="":J=1:L=LEN(T$):AC=-1:UN=-1:OT=-1
8015IFJ<=LANDMID$(T$,J,1)=" "THENJ=J+1:GOTO8015
8025IFL>1ANDMID$(T$,L,1)=" "THENL=L-1:GOTO8025
8030IFJ>LTHENGOTO8080
8035CH=ASC(MID$(T$,J,1))
8040IFCH>=ASC("A")ANDCH<=ASC("Z")THENCH=(ASC("a")-ASC("A"))+CH
8045IFCH<>ASC(" ")THENM$=M$+CHR$(CH):GOTO8070
8050GOSUB8090
8055IFOT<>-1THENGOTO8085
8065IFMID$(T$,J,1)=" "THENJ=J+1:GOTO8065
8067GOTO8030
8070J=J+1
8075GOTO8030
8080GOSUB8090
8085RETURN
8090IFNOT (M$<>"con"ANDM$<>"de"ANDM$<>"del"ANDM$<>"el"ANDM$<>"la"ANDM$<>"los"ANDM$<>"las"ANDM$<>"a"ANDM$<>"al"ANDM$<>"por"ANDM$<>"en"ANDM$<>"y")THENGOTO8120
8095IFAC<>-1THENGOTO8105
8100IFRIGHT$(M$,1)="r"THENM$=LEFT$(M$,LEN(M$)-1)
8101GOSUB540
8102GOTO8120
8105IFUN=-1THENGOSUB8160:UN=OJ:GOTO8120
8110IFOT=-1THENGOSUB8160:OT=OJ
8120M$="":RETURN
8155IFM$="anciano"ORM$="jefe"THENOJ=13:RETURN
8160N=LEN(M$):OJ=-1:IFN=0THENRETURN
8162IFN>9THENN=9:M$=LEFT$(M$,9)
8165IFN>2THENIFLEFT$(M$,3)="ojo"THENOJ=14:RETURN
8167IFN>6THENIFLEFT$(M$,7)="agujero"THENOJ=14:RETURN
8170I=1:F=OS+1
8175M=INT((I+F)/2)
8180IFLEFT$(N$(M),N)=M$THENOJ=M:RETURN
8185IFM=ITHENRETURN
8190IFN$(M)>M$THENF=M:GOTO8194
8192I=M
8194GOTO8175
9830GOTO9850
9840GOTO9850
9850IFT$=""THENRETURN
9855I=1:F=CL:N=LEN(T$)+1
9857IFCL>NTHENPRINTT$:GOTO9880
9860IFI<NANDMID$(T$,I,1)=" "THENI=I+1:F=F+1:GOTO9860
9862IFF>NTHENF=N:GOTO9870
9865IFF>1THENIFMID$(T$,F,1)<>" "THENF=F-1:GOTO9865
9870PRINTMID$(T$,I,F-I)
9875IFF<NTHENI=F+1:F=F+CL:GOTO9860
9880T$="":RETURN
9940PRINTM$:LINEINPUT "> ";M$
9944IFLEN(M$)=0THENGOTO9940
9946IFLEFT$(M$,1)=" "THENGOTO9940
9948M$=LEFT$(M$,1)
9950RETURN
9960PRINT:PRINT"...":PRINT
9970IFINKEY$<>""THENGOTO9970
9974IFINKEY$=""THENGOTO9974
9976RETURN
9980GOSUB2500:PRINT:GOSUB 5000:GOSUB9830
9984IFM$<>""THENT$=M$:M$="":PRINT:GOSUB9850
9986PRINT:GOSUB2000:RETURN
9995PRINT
9996LINEINPUT"> ";T$:IFT$=""THENGOTO9996
9997RETURN
9998KEYOFF:SCREEN0:WIDTH40:COLOR15,0,0:CLS:RETURN
