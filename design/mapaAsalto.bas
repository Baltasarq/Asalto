10 rem generado por BAS@txtMap, v0.1/ v0.47 20081228
20 rem Sun Dec 28 18:30:05 2008
30 restore:goto 9000
5000 rem *** Story data ***
5005 rem *** Rooms ***
5010 let MaxLocs = 53:dim h$(MaxLocs):rem dim h$(MaxLocs,255):rem spectrum
5015 for n = 1 to MaxLocs
5020 read h$(n)
5025 next n
5027 data "Aldea Sajona.  No ha quedado nada en pie, ni piedra sobre piedra. El entorno es desolador. "
5029 data "Sobre la colina.  En el nebuloso valle, a tus pies, se extiende la aldea sajona que tu partida ha venido a atacar. "
5031 data "Camino entre colinas.  El camino avanza por el valle, desde la parte alta, al este, a una zona harto boscosa, al oeste. "
5033 data "Cruce de caminos.  La senda se bifurca hacia el norte, rodeando las estribaciones de la sierra que cierra el valle al oeste, con el paso del perro como ruta entre las estribaciones. "
5035 data "Linde del Bosque.  Hacia el oeste se extiende frondoso el bosque que rodea la sierra. La salida es posible se abre hacia el sureste en forma de paso encajonado, mientras al sur distingues la boca de una cueva. "
5037 data "Bosque.  El frondoso bosque hace que jirones de niebla se enzarcen en sus ramas y arbustos. La estrecha senda serpentea entre raices discurre de un luminoso este a oeste. "
5039 data "Paso del perro.  Abruptamente el bosque desaparece en un paso rocoso. El estrecho e inquietante desfiladero del paso del perro, torciendo de este a sur. "
5041 data "Entrada a la cueva.  El paso entre el desfiladero sigue de norte a sureste. La entrada a una cueva se abre al sur en la pared de roca. "
5043 data "Derrumbe.  El camino desciende desde el paso del perro, hacia el oeste, a los valles, al este. Un gran desmoronamiento de rocas bloquea el camino al oeste. "
5045 data "Gruta de entrada.  El estrecho paso se adentra hacia el sur, desde la boca, al norte. "
5047 data "Gran lago.  Una gran estancia alberga un lago de profundas e iridiscentes aguas, debido a la luz exterior. No hay más salida que el este. "
5049 data "Salida del paso secreto.  Una gran estancia se abre hacia el oeste, y se estrecha hasta morir, al este, en una parte de agua. "
5051 data "Puente semipodrido.  La sala se abre en semioscuridad a un puente cubierto de podredumbre sobre el lecho de un canal, de este a oeste. "
5053 data "Recodo de la cueva.  La iridiscente cueva gira de este a sur. "
5055 data "Pasaje arenoso.  La gruta desciende de norte a sur sobre un lecho arenoso. Al este, un agujero del que llega claridad. "
5057 data "Pasaje del agua.  Como un acueducto, el agua baja con gran fuerza de norte a este, aunque la salida practicable es la del oeste. "
5059 data "Estalactitas.  Muchas estalactitas se agrupan encima de tu cabeza, y se abren cual arco de entrada hacia el estee y sur. "
5061 data "Puente de piedra.  Un arco de piedra se eleva, cual puente sobre la oscuridad, de este a oeste. En su mitad, un altar. "
5063 data "Recodo del canal.  La estancia arenosa contempla el paso del canal, de norte a este. "
5065 data "Laberinto1.  Un tramo de cueva estrecho te permite avanzar hacia el norte y el sur; un pasaje surge al este. "
5067 data "Laberinto2.  Un tramo de cueva estrecho te permite avanzar de este a oeste; un pasaje surge al sur. "
5069 data "Laberinto3.  Un tramo de cueva estrecho te permite avanzar de este a oeste; un pasaje surge al sur. "
5071 data "Laberinto4.  Un tramo de cueva estrecho te permite avanzar de oeste a sur. "
5073 data "Laberinto8.  Un tramo de cueva estrecho te permite avanzar de oeste a norte. "
5075 data "Laberinto7.  Un tramo de cueva estrecho te permite avanzar de este a oeste. Al norte surge un pasaje. "
5077 data "Laberinto6.  Un tramo de cueva estrecho te permite avanzar de este a oeste. Al norte y al sur surgen pasajes. "
5079 data "Laberinto5.  Un tramo de cueva estrecho te permite avanzar de este a oeste. Al norte surge un pasaje. "
5081 data "Albergue de refugiados.   Una amplia estancia, iluminada por varias antorchas, sirve de refugio a hombres de distintas razas. Las banderas, con los dragones rojo y blanco, que se exhiben en una de las paredes. Un hombre de barba blanca y larga con larga vara es la cabeza visible de esta gente."
5083 data "Refectorio de refugiados.   En esta gran sala, mayor incluso que la anterior, se han colocado largas mesas de madera bajo la luz de las antorchas. En otras partes, catres de todos los estilos se amontonan unos junto a otros."
5085 data "Espiral.   Una espiral, cual escalera de caracol gigante, desciende a las profundidades."
5087 data "Inicio de la espiral.  La espiral se eleva en la penumbra de la cueva. La base y el tope destacan bajo la luz de las antorchas."
5089 data "Estrecho pasaje.   La caverna se estrecha ahora. Parece un pasaje para una sola persona, excavado en la roca. Dobla hacia el norte desde el oeste."
5091 data "Puerta bloqueada.   En otros tiempos, era una puerta. Ahora, el pasaje se encuentra bloqueado por grandes rocas entre las columnas de un arco de medio punto."
5093 data "Precipicio.   El camino ahora no excede de dos palmos de cornisa sobre un abismo insondable. El soporte de roca gira de oeste a sur."
5095 data "Pasaje de salida.   El paso se va haciendo menos estrecho a medida que se avanza hacia el sur, para entonces comenzar hacia el este."
5097 data "Pasaje de gravilla.   El paso se anchea y guijarros mojados y mohosos tachonan el suelo de roca."
5099 data "Puente sobre el acueducto.   Un puente se tiende de norte a sur sobre el curso del agua. Resbaladizas escaleras descienden hacia el oeste."
5101 data "Remanso.   El agua forma un meandro del que sale con menos furor. La curva exterior del meandro forma un cala arenosa."
5103 data "Canal de agua.   El agua descendiende con renovadas fuerzas, dejando un estrecho paso elevado lateral para subir, esquivando estalactitas."
5105 data "Cascada.   Una hermosa y gran cascada hace descender el agua con gran fuerza hacia el canal que ya pasaste. La cascada embalsa el agua en un lago de escasa profundidad."
5107 data "Interior de la cascada.   El interior de la cascada es musgoso y rocoso, con la cortina de agua tras de ti. El sitio es estrecho sin duda, y el nivel del agua ha crecido un poco."
5109 data "Explanada.   Una gran explanda enlosetada contempla un bello panorama de estalactitas. Unos casi imperceptibles escalones conducen al este."
5111 data "Idolo.   El Idolo es un centinela siniestro de una gran roca que se encuentra su izquierda."
5113 data "Pasaje estrecho.   El paso corre de norte a sur, con el canal en un lado, y se estrecha, aunque se observa un aumento de claridad hacia el sur."
5115 data "Pasaje de la serpiente.   El pasaje sigue de norte a sur."
5117 data "Lago interior.   Unas escaleras, al oeste, permiten bajar al nivel del lago interior, formado por un salto de agua. Al norte, un pasaje sube hacia una zona oscura."
5119 data "Cruce de pasajes.   Un cruce de estrechos pasajes permite ir al oeste, al este (donde se observa menos oscuridad), y al sur, un lugar de gran luminosidad."
5121 data "Hogar de Ambrosio.  Un catre, algunas velas y una mesa es todo lo que tiene Ambrosio."
5123 data "Salida de la cueva.   Una puerta impide la salida de la cueva, ya se adivina la luz diurna al otro lado."
5125 data "Bosque a la entrada.   Apenas se puede reconocer la entrada de la cueva, al norte. El sendero sale del bosque hacia el oeste."
5127 data "Sendero del bosque.   El sendero recorre esta parte del bosque de este a oeste."
5129 data "Camino norte.   El camino norte de Westmorland se interna hacia el bosque, al norte (en tu estado no puedes ir), y a Westmorland, al sur."
5131 data "Westmorland.   La villa bulle de actividad con el mercado en el centro de la plaza, donde también se encuentra el castillo."
5136 rem *** Dirs ***
5141 let MaxDirs = 12:dim d(MaxLocs,MaxDirs)
5146 for n = 1 to MaxLocs
5151 for i = 1 to MaxDirs
5156 read d(n,i)
5161 next i
5166 next n
5171 rem N S E W U D NE SW NW SE ENTER EXIT 
5173 data 0,2,0,0,0,0,0,0,0,0,0,0
5175 data 1,0,0,3,0,0,0,0,0,0,0,0
5177 data 0,0,2,4,0,0,0,0,0,0,0,0
5179 data 5,0,3,9,0,0,0,0,0,0,0,0
5181 data 0,4,0,6,0,0,0,0,0,0,0,0
5183 data 0,0,5,7,0,0,0,0,0,0,0,0
5185 data 0,8,6,0,0,0,0,0,0,0,0,0
5187 data 7,10,0,0,0,0,0,0,0,0,0,0
5189 data 0,0,4,0,0,0,0,0,0,0,0,0
5191 data 8,0,0,11,0,0,0,0,0,0,0,0
5193 data 0,0,10,0,0,0,0,0,0,0,0,0
5195 data 0,0,0,13,0,0,0,0,0,0,0,0
5197 data 0,0,12,14,0,0,0,0,0,0,0,0
5199 data 0,15,13,0,0,0,0,0,0,0,0,0
5201 data 14,17,16,0,0,0,0,0,0,0,0,0
5203 data 0,0,0,15,0,0,0,0,0,0,0,0
5205 data 15,20,18,0,0,0,0,0,0,0,0,0
5207 data 0,0,19,17,0,0,0,0,0,0,0,0
5209 data 0,0,0,18,0,0,0,0,0,0,0,0
5211 data 17,22,25,0,0,0,0,0,0,0,0,0
5213 data 0,27,23,20,0,0,0,0,0,0,0,0
5215 data 0,24,27,22,0,0,0,0,0,0,0,0
5217 data 0,25,0,21,0,0,0,0,0,0,0,0
5219 data 22,0,0,26,0,0,0,0,0,0,0,0
5221 data 22,0,23,21,0,0,0,0,0,0,0,0
5223 data 26,28,20,27,0,0,0,0,0,0,0,0
5225 data 27,0,25,0,0,0,0,0,0,0,0,0
5227 data 26,0,30,29,0,0,0,0,0,0,0,0
5229 data 0,0,28,0,0,0,0,0,0,0,0,0
5231 data 0,0,0,28,0,31,0,0,0,0,0,0
5233 data 0,0,32,0,30,0,0,0,0,0,0,0
5235 data 33,0,0,31,0,0,0,0,0,0,0,0
5237 data 0,32,34,0,0,0,0,0,0,0,0,0
5239 data 0,35,0,33,0,0,0,0,0,0,0,0
5241 data 34,0,36,0,0,0,0,0,0,0,0,0
5243 data 37,0,0,35,0,0,0,0,0,0,0,0
5245 data 42,36,0,38,0,0,0,0,0,0,0,0
5247 data 0,0,37,39,0,0,0,0,0,0,0,0
5249 data 0,0,38,40,0,0,0,0,0,0,0,0
5251 data 0,0,39,41,0,0,0,0,0,0,0,0
5253 data 0,0,40,0,0,0,0,0,0,0,0,0
5255 data 0,37,43,0,0,0,0,0,0,0,0,0
5257 data 0,0,0,42,0,0,0,0,0,0,0,0
5259 data 0,45,0,0,0,0,0,0,0,0,0,0
5261 data 44,46,0,0,0,0,0,0,0,0,0,0
5263 data 45,0,0,47,0,0,0,0,0,0,0,0
5265 data 0,49,46,48,0,0,0,0,0,0,0,0
5267 data 0,0,47,0,0,0,0,0,0,0,0,0
5269 data 47,0,0,0,0,0,0,0,0,0,0,0
5271 data 0,0,0,51,0,0,0,0,0,0,0,0
5273 data 0,0,50,52,0,0,0,0,0,0,0,0
5275 data 0,53,51,0,0,0,0,0,0,0,0,0
5277 data 52,0,0,0,0,0,0,0,0,0,0,0
5282 rem *** OBJS ***
5287 let MaxObjs = 23:dim n$(MaxObjs):rem dim n$(MaxObjs,255):rem spectrum
5292 for n = 1 to MaxObjs
5297 read n$(n)
5302 next n
5307 return
5312 data "altar"
5317 data "ambrosio"
5322 data "antorcha apagada"
5327 data "antorcha encendida"
5332 data "banderas"
5337 data "capa"
5342 data "cascada"
5347 data "derrumbe"
5352 data "esmeralda"
5357 data "espada"
5362 data "harapo"
5367 data "hilo"
5372 data "hombre"
5377 data "idolo"
5382 data "lago"
5387 data "llave"
5392 data "pedernal"
5397 data "piedra"
5402 data "puerta"
5407 data "rocas"
5412 data "serpiente"
5417 data "tronco"
5422 data "trozo"
5427 rem *** OBJS ***
5432 dim o$(MaxObjs):rem dim o$(MaxObjs,255):rem spectrum
5437 for n = 1 to MaxObjs
5442 read o$(n)
5447 next n
5452 return
5457 data "Justo en la mitad del puente, su objetivo es sustentar algo importante."
5462 data "Ambrosio es un hombre de mediana edad, que te mira afable."
5467 data "Apagada."
5472 data "Ilumina perfectamente."
5477 data "Son las banderas britana y sajona, respectivamente."
5482 data "Tu capa, de fina lana tintada de negro, que te distingue como oficial al mando en las batallas. Bueno, es una de las cosas, al menos."
5487 data "La cortina de agua es impenetrable a la vista, pero la profundidad del lago permite arriesgarse a atravesarla."
5492 data "Muchas, inalcanzables rocas, apiladas una sobre otra."
5497 data "Es preciosa."
5502 data "Legado de tu padre, fiel herramienta en mil batallas."
5507 data "Un trozo un poco grande de capa."
5512 data "Un hilo se ha desprendido al cortar la capa con la espada."
5517 data "Es el jefe de los refugiados."
5522 data "El Idolo tiene dos agujeros por ojos."
5527 data "La luz exterior entra por un lugar del techo, formando caprichosos reflejos en el abovedado."
5532 data "Entre sus cosas, ves una llave."
5537 data "Se trata de una dura piedra."
5542 data "Recia y pesada, pero no muy grande, de forma piramidal."
5547 data "Muy recia y con un gran candado."
5552 data "Son muchas, aunque no demasiado pesadas y con huecos entre ellas. A lo mejor, empujando ..."
5557 data "Una serpiente bloquea el paso. Entre el agua y el animal, nada se puede hacer."
5562 data "Es un trono recio, pero de liviano peso."
5567 data "Es un poco de lo que antes era tu capa."
5572 rem *** ATRS OBJS ***
5577 let MaxAtrs=3:dim o(MaxObjs,MaxAtrs):let AtrNumLoc=1:let AtrStatic=2:let AtrWear=3
5582 for n = 1 to MaxObjs
5587 for i = 1 to MaxAtrs
5592 read o(n,i)
5597 next i
5602 next n
5607 rem numLoc, scenery, wearable
5609 data 18,1,0
5611 data 19,1,0
5613 data 19,0,0
5615 data 19,0,0
5617 data 28,1,0
5619 data 1,0,0
5621 data 40,1,0
5623 data 9,1,0
5625 data 38,0,0
5627 data 1,0,0
5629 data 1,0,0
5631 data 1,0,0
5633 data 28,1,0
5635 data 43,1,0
5637 data 46,1,0
5639 data 48,1,0
5641 data 16,0,0
5643 data 18,0,0
5645 data 49,1,0
5647 data 33,1,0
5649 data 45,1,0
5651 data 15,0,0
5653 data 1,0,0
9000 rem *** playing engine draft (sort of...)***
9010 print "Loading ...": gosub 5000
9020 print "Enter initial of any compass direction. QUIT ends. Only capitals."
9040 print "Introduzca la inicial de cualquier direccion del compas. FIN termina. Use mays."
9050 let room=1
9060 print:print h$(room)
9070 print:input ">"; i$
9080 if i$="N" then if d(room,1) > 0 then let room=d(room,1):goto 9060
9090 if i$="S" then if d(room,2) > 0 then let room=d(room,2):goto 9060
9100 if i$="E" then if d(room,3) > 0 then let room=d(room,3):goto 9060
9110 if i$="O" or i$="W" then if d(room,4) > 0 then let room=d(room, 4):goto 9060
9120 if i$="U" then if d(room,5) > 0 then let room=d(room,5):goto 9060
9130 if i$="D" then if d(room,6) > 0 then let room=d(room,6):goto 9060
9140 if i$="NE" then if d(room,7) > 0 then let room=d(room,7):goto 9060
9150 if i$="SW" or i$="SO" then if d(room,8) > 0 then let room=d(room,8):goto 9060
9160 if i$="NW" or i$="NO" then if d(room,9) > 0 then let room=d(room,9):goto 9060
9170 if i$="SE" then if d(room,10) > 0 then let room=d(room,10):goto 9060
9180 if i$="ENTER" or i$="ENTRAR" then if d(room,11) > 0 then let room=d(room,11):goto 9060
9190 if i$="EXIT" or i$="SALIR" then if d(room,12) > 0 then let room=d(room,12):goto 9060
9200 if i$="L" or i$="M" or i$="MIRAR" or i$="LOOK" then goto 9060
9210 if i$="QUIT" or i$="Q" or i$="SALIR" or i$="FIN" then stop
9300 print "?": goto 9070
