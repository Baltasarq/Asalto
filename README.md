# Asalto y Castigo

[Asalto y Castigo](https://ifdb.org/viewgame?id=ddsabmlsks2v4jaf) es una [aventura conversacional](https://es.wikipedia.org/wiki/Aventura_conversacional), o juego de texto, ambientada en las leyendas artúricas. En la actualidad, se conoce a estos juegos como ficción interactiva.

Fue publicada en 2009, como una precuela de [El Trono de Inglaterra](http://github.com/baltasarq/Trono). La trama discurre antes
los acontecimientos narrados en el relato anterior, concretamente, la vuelta a
Westmorland desde una expedición de castigo a una aldea sajona (Ulfius, Uther y
Arturo Pendragón eran britanos). En una época en la que inglaterra se llamaba
Locres, y de la que la mayor información que perdura en la mente de todos es
la leyenda artúrica, magia, caballeros y druídas se reúnen para contar una
historia protagonizada, en realidad, por seres humanos.

El juego se desarrolla introduciendo comandos para dirigir a Ulfius, el
personaje controlado por el jugador. Ulfius era uno de los mejores generales
de Uther, y en este caso acaba de dirigir una expedición de castigo contra una
aldea sajona indefensa que le ha decepcionado profundamente. La guerra también
está durando muchos años, y Ulfius empieza a pensar que nunca acabará.

## Sobre el proceso de creación

Este juego es algo especial, tanto personalmente para mi como para aquellos que lo van a jugar. Los segundos, que son en realidad los primeros, se van a
enfrentar, probablemente, a la ardua tarea de bajarse un emulador para poder
jugar, simulando que están delante de una máquina de los años 80. Y esto es, en realidad, lo mismo que la hace muy especial para mi, pues después de mucho
tiempo me he puesto de nuevo a desarrollar un proyecto en BASIC, y, encima,
comencé a hacerlo en el Spectrum 128k real de toda mi vida.

La sabiduría popular dice que no se deberían repetir ciertas cosas de las que se tiene un gran recuerdo cuando se era niño, debido al riesgo de llevarse una
decepción. En este caso, así fue: la aventura en Spectrum tardaba mucho tiempo
en responder a cada comando (5 segs), así que opté por portarla a un
Amstrad CPC 6128 128k. Y es que, por mucho que me costara reconocerlo en aquella época, esta máquina era muy superior en prestaciones que mi querido Speccy.

Al final, cumplí el objetivo de tener algo rápido en Spectrum, compilando el BASIC mediante [HiSoft COLT Compiler](https://worldofspectrum.net/item/0008254/).

Otro objetivo, en cualquier caso, era demostrar o realizar una prueba de concepto
en la que se demuestre que con pocos medios se pueden hacer cosas interesantes,
y que lo realmente importante es una buena historia inmersiva. No tengo ni la
menor idea de si lo he conseguido, claro.

## Cómo jugar

El primer comando a aprender es:

> ayuda

Que resume los comandos disponibles.

El juego se basa en usar y manipular objetos, que pueden ser cogidos y dejados:

> coge la espada
Hecho.
> dejar espada
Hecho.

A veces es necesario meter un objeto en otro:

> mete la espada en la capa

O tirar un objeto lejos de ti:

> tira la espada

Si quieres obtener más detalles de un objeto en concreto:

> ex espada
> examina la espada
> examinar espada

Este juego es peculiar porque se ha desarrollado con unas restricciones debidas
al lenguaje utilizado (Basic) y la escasa memoria disponible (unos 40ks). Sólo
los objetos mencionados explícitamente como "puedes ver", tras la descripción de
una localidad, son manipulables. El resto no se consideran importantes para
avanzar en la aventura.

Si quieres saber que objetos llevas:
> ex
> examina
> examinar
> examinate
> examinarte

Como se puede ver, el juego entiende infinitivos e imperativos. Si quieres echar
un vistazo a tu alrededor (aunque se hará automáticamente cada vez que llegues
a un sitio nuevo):

> m
> mira
> mirar

Después de describir un lugar, se indican los objetos que son manipulables en
esa localidad por el jugador, bajo el epígrafe: "Puedes ver".

Para moverse de un lugar a otro, es necesario utilizar las direcciones
cardinales, que se mencionan en la descripción del lugar en el que estás ahora:

norte, sur, este, oeste, arriba y abajo.

Excepto arriba y abajo, las cuatro primeras pueden abreviarse a su inicial:

> e
> este

A veces puede ser necesario atacar e incluso matar a alguien o algo:

> atacar sajones
> ataca a los sajones
> mata al hombre
> matar hombre

Es posible que durante la aventura sea necesario también manipular objetos para
transformarlos en otra herramienta:

> corta la capa

Cortar, recortar, y afilar están disponibles.

A veces es necesario abrirse paso a golpes, y para eso está el verbo "empujar":

> empuja a los refugiados

Finalmente, hay algunos personajes con los que puedes interactuar durante la
aventura. Se avisa de su presencia en el momento oportuno, y es posible hablar
con ellos mediante el verbo "habla"

> habla con ambrosio
> hablar con jefe

## Construcción

Esta aventura fue creada en [Sinclair Basic para el Spectrum](https://worldofspectrum.net/item/0023325/). Además, la [porté en su momento a Amstrad](https://amstrad.es/doku/doku.php?id=juegos:asalto_y_castigo) (Locomotive BASIC) y MSX (Microsoft BASIC). En el directorio `blassic/`, se encuentra el fuente en BASIC para [Blassic](http://www.blassic.net/), un intérprete de BASIC que se ejecuta en máquinas actuales, pero siguiendo las directrices de los micros de los 80 del siglo pasado.

[Programandala portó Asalto y Castigo al Sinclair QL](http://programandala.net/es.programa.asalto_y_castigo.html).

Además de rememorar viejos y gloriosos tiempos, quería comprobar si era posible conseguir un relato inmersivo con recursos minimalistas... espero haberlo conseguido.

## Ejecución

En el apartado de [releases](http://github.com/baltasarq/Asalto/releases/), se pueden encontrar los archivos para cada uno de los microordenadores mencionados. Será necesario un emulador del sistema seleccionado, como por ejemplo [FBZX](https://www.rastersoft.com/programas/fbzx.html) para Spectrum, o [Caprice32](https://github.com/ColinPitrat/caprice32) para Amstrad.

## Versiones on-line

- [Jugar online a Asalto y Castigo, versión Spectrum](https://spectrumcomputing.co.uk/playonline.php?eml=1&downid=88422)
- [Jugar online a Asalto y Castigo, versión Amstrad](https://amstrad.es/rvmplayer.php?file=asaltocpc1.0.zip&emuonline=DISC)
