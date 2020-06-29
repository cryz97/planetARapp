import 'package:flutter/material.dart';

List<Planet> planets = <Planet>[
  Planet(
    name: 'Mercurio',
    color: Colors.blueGrey,
    diameter: 0.383,
    moons: [],
    description:
        'Mercurio es el planeta más pequeño y cercano al Sol del Sistema Solar.'
        ' Lleva el nombre de la deidad romana Mercurio, el mensajero de los dioses',
    intro: 'Mercurio es el planeta más pequeño de nuestro sistema solar. '
        'Es solo un poco más grande que la luna de la Tierra. Es el planeta más cercano al sol, pero en realidad no es el más caliente. '
        'Venus es más caliente. Junto con Venus, la Tierra y Marte, Mercurio es uno de los planetas rocosos. Tiene una superficie sólida '
        'que está cubierta de cráteres',
    formation:
        'Mercurio es el planeta más pequeño de nuestro sistema solar. Es solo un poco más grande que la luna de la Tierra. Es el planeta más cercano al sol, pero en realidad no es el más caliente. Venus es más caliente. Junto con Venus, la Tierra y Marte, Mercurio es uno de los planetas rocosos. Tiene una superficie sólida que está cubierta de cráteres',
    history:
        'Las primeras observaciones de Mercurio registradas registradas son de las tabletas Mul.Apin. Estas observaciones probablemente fueron realizadas por un astrónomo asirio alrededor del siglo XIV aC [119]. El nombre cuneiforme utilizado para designar a Mercury en las tabletas Mul.Apin se transcribe como Udu.Idim.Guu4.Ud ("el planeta que salta"). Los registros babilónicos de Mercurio se remontan al 1er milenio antes de Cristo. Los babilonios llamaron al planeta Nabu el nombre del mensajero a los dioses en su mitología ',
    imgAssetPath: 'assets/images/mercury.jpg',
    vidAssetPath: 'assets/images/mercury.webp',
  ),
  Planet(
    name: 'Venus',
    color: Colors.orangeAccent,
    diameter: 0.949,
    moons: [],
    description:
        'Venus es el segundo planeta desde el Sol, orbitándolo cada 224.7 días terrestres. Es un planeta terrestre ',
    intro:
        'Venus es el segundo planeta desde el Sol, orbitándolo cada 224.7 días terrestres. [13] Tiene el período de rotación más largo (243 días) de cualquier planeta en el Sistema Solar y gira en dirección opuesta a la mayoría de los otros planetas (lo que significa que el Sol se elevaría en el oeste y se establecería en el este). [14] No tiene satélites naturales. Lleva el nombre de la diosa romana del amor y la belleza',
    formation:
        'La superficie venusiana fue un tema de especulación hasta que algunos de sus secretos fueron revelados por la ciencia planetaria en el siglo XX. Los módulos de aterrizaje de Venera en 1975 y 1982 devolvieron imágenes de una superficie cubierta de sedimentos y rocas relativamente angulares. [24] La superficie fue cartografiada en detalle por Magellan en 1990–91. El suelo muestra evidencia de extenso volcanismo, y el azufre en la atmósfera puede indicar que ha habido algunas erupciones recientes',
    history:
        'Aunque algunas civilizaciones antiguas se refirieron a Venus como la" estrella de la mañana "y como la" estrella de la tarde ", los nombres que reflejan la suposición de que eran dos objetos separados, las observaciones más antiguas registradas de Venus por los antiguos sumerios muestran que reconocieron a Venus como un solo objeto, [128] lo asoció con la diosa Inanna. [128] [129] [130] Los movimientos de Inanna en varios de sus mitos, incluidos Inanna y Shukaletuda y el Descenso de Inanna al inframundo, parecen ser paralelos al movimiento del planeta Venus. [128] La tableta Venus de Ammisaduqa, que se cree que se compiló a mediados del siglo XVII a. C., [131] muestra que los babilonios entendieron que los dos eran un solo objeto, al que la tabla llamaba la "brillante reina del cielo", y que apoya esta opinión con observaciones detalladas. ',
    imgAssetPath: 'assets/images/venus.jpg',
    vidAssetPath: 'assets/images/venus.webp',
  ),
  Planet(
    name: 'Tierra',
    color: Colors.blue,
    moons: [
      Moon(
        name: 'Luna',
        description:
            'La Luna es un cuerpo astronómico que orbita el planeta Tierra y es el único satélite natural permanente de la Tierra',
        intro:
            'La Luna es un cuerpo astronómico que orbita el planeta Tierra y es el único satélite natural permanente de la Tierra. Es el quinto satélite natural más grande del Sistema Solar y el más grande entre los satélites planetarios en relación con el tamaño del planeta que orbita (su principal). ',
        formation:
            'La Luna se formó hace 4.510 millones de años, [f] unos 60 millones de años después del origen del Sistema Solar. Se han propuesto varios mecanismos de formación, [29] que incluyen la fisión de la Luna desde la corteza terrestre a través de la fuerza centrífuga [30] (que requeriría un giro inicial de la Tierra demasiado grande), [31] la captura gravitacional de un pre en forma de luna [32] (lo que requeriría una atmósfera de la Tierra no disipada para disipar la energía de la Luna que pasa), [31] y la co-formación de la Tierra y la Luna juntas en el disco de acreción primordial (que no explica el agotamiento de los metales en la Luna). [31] Estas hipótesis tampoco pueden explicar el alto momento angular del sistema Tierra-Luna ',
        history:
            'La comprensión de los ciclos de la Luna fue un desarrollo temprano de la astronomía: en el siglo V aC, los astrónomos de Babilonia registraron el ciclo de Saros de 18 años de eclipses lunares [169] y los astrónomos de la India describieron la Luna mensualmente. alargamiento. [170] El astrónomo chino Shi Shen (fl. 4to siglo aC) dio instrucciones para predecir los eclipses lunares y solares. [171] Más tarde, la forma física de la Luna y la causa de la luz de la luna se entendieron. El antiguo filósofo griego Anaxágoras (d. 428 aC) razonó que el Sol y la Luna eran rocas esféricas gigantes, y que esta última reflejaba la luz de la primera. [172] [173] Aunque los chinos de la dinastía Han creían que la Luna era energía equivalente al qi, su teoría de influencia radiante también reconocía que la luz de la Luna era simplemente un reflejo del Sol, y Jing Fang (78–37 aC) notó la esfericidad de la luna. [174] En el siglo II dC, Lucian escribió la novela Una historia verdadera, en la que los héroes viajan a la Luna y conocen a sus habitantes. En 499 dC, el astrónomo indio Aryabhata mencionó en su Aryabhatiya que la luz solar reflejada es la causa del brillo de la Luna. [175] El astrónomo y físico Alhazen (965-1039) descubrió que la luz del sol no se reflejaba desde la Luna como un espejo, sino que se emitía desde todas las partes de la superficie iluminada por el Sol de la Luna en todas direcciones. [176] Shen Kuo (1031–1095) de la dinastía Song creó una alegoría que equipara la cera y decrecimiento de la Luna a una bola redonda de plata reflectante que, cuando se rocía con polvo blanco y se ve desde un lado, parece ser una media luna ',
        imgAssetPath: 'assets/images/moon.jpg',
        vidAssetPath: 'assets/images/moon.webp',
      )
    ],
    diameter: 1.0,
    description:
        'La Tierra es el tercer planeta desde el Sol y el único objeto astronómico que se sabe que alberga la vida.',
    intro:
        'La Tierra es el tercer planeta desde el Sol y el único objeto astronómico conocido por albergar vida. Según la datación radiométrica y otras fuentes de evidencia, la Tierra se formó hace más de 4.500 millones de años. ',
    formation:
        'El material más antiguo encontrado en el Sistema Solar tiene una fecha de 4.5672 ± 0.0006 mil millones de años (Bya). Por 4.54 ± 0.04 Bya la Tierra primordial se había formado. Los cuerpos en el Sistema Solar se formaron y evolucionaron con el sol. En teoría, una nebulosa solar separa un volumen de una nube molecular por colapso gravitacional, que comienza a girar y aplanarse en un disco circunstular, y luego los planetas crecen fuera de ese disco con el Sol. Una nebulosa contiene gas, granos de hielo y polvo (incluidos los nucleidos primordiales). Según la teoría nebular, los planetesimales se formaron por acreción, y la Tierra primordial tardó entre 10 y 20 millones de años (Mys) en formarse ',
    history:
        'La atmósfera y los océanos de la Tierra se formaron por actividad volcánica y desgasificación. El vapor de agua de estas fuentes se condensó en los océanos, aumentado por el agua y el hielo de los asteroides, protoplanetas y cometas. [60] En este modelo, los "gases de efecto invernadero" atmosféricos evitan que los océanos se congelen cuando el Sol que se está formando tiene solo el 70% de su luminosidad actual. [61] Por 3.5 Bya, se estableció el campo magnético de la Tierra, lo que ayudó a evitar que la atmósfera fuera arrancada por el viento solar',
    imgAssetPath: 'assets/images/earth.jpg',
    vidAssetPath: 'assets/images/earth.webp',
  ),
  Planet(
    name: 'Marte',
    moons: [
      Moon(
        name: 'Deimos',
        description:
            'Deimos es el más pequeño y exterior de los dos satélites naturales del planeta Marte, el otro es Fobos.',
        intro:
            'Deimos es el más pequeño y exterior de los dos satélites naturales del planeta Marte, y el otro es Fobos. Deimos tiene un radio promedio de 6.2 km (3.9 mi) y tarda 30.3 horas en orbitar a Marte. [2] Deimos está a 23,460 km (14,580 mi) de Marte, mucho más lejos que la otra luna de Marte, Phobos.',
        formation:
            'Deimos, al igual que la otra luna de Marte, Fobos, tiene espectros, albedos y densidades similares a las de un asteroide de tipo C o D [cita requerida]. Como la mayoría de los cuerpos de su tamaño, Deimos es altamente no esférico con dimensiones triaxiales de 15 × 12.2 × 11 km, [4] por lo que es el 56% del tamaño de Phobos. Deimos está compuesto de roca rica en material carbonoso, al igual que los asteroides de tipo C y los meteoritos de condrita carbonosa [cita requerida]. Está craterizado, pero la superficie es notablemente más lisa que la de Fobos, causada por el relleno parcial de cráteres con regolito [cita requerida]. El regolito es altamente poroso y tiene una densidad estimada por radar de solo 1.471 g / cm3. ',
        history:
            'El origen de las lunas de Marte es desconocido y las hipótesis son controvertidas. Las principales hipótesis son que se formaron por captura o por acreción. Debido a la similitud con la composición de los asteroides de tipo C o D, una hipótesis es que las lunas pueden ser objetos capturados en la órbita marciana desde el cinturón de asteroides, con órbitas que han sido circularizadas por arrastre atmosférico o fuerzas de marea, [23 ] ya que la captura requiere disipación de energía. La atmósfera marciana actual es demasiado delgada para capturar un objeto del tamaño de Phobos mediante el frenado atmosférico. [19] Geoffrey Landis ha señalado que la captura podría haber ocurrido si el cuerpo original fuera un asteroide binario que se separó debido a las fuerzas de las mareas. [24] La principal hipótesis alternativa es que las lunas acrecentaron en la posición actual. Otra hipótesis es que Marte estuvo una vez rodeado por muchos cuerpos del tamaño de Fobos y Deimos, quizás expulsados ​​en órbita a su alrededor por una colisión con un planetesimal',
        imgAssetPath: 'assets/images/deimos.jpg',
        vidAssetPath: 'assets/images/deimos.webp',
      ),
      Moon(
        name: 'Phobos',
        description:
            'Phobos es el más interno y grande de los dos satélites naturales de Marte.',
        intro:
            'Phobos es un objeto pequeño de forma irregular con un radio medio de 11 km (7 millas) [1] y es siete veces más masivo que la luna exterior, Deimos. Fobos lleva el nombre del dios griego Fobos, hijo de Ares (Marte) y Afrodita (Venus) y la personificación del horror. ',
        formation:
            'Phobos tiene dimensiones de 27 km × 22 km × 18 km, [1] y retiene muy poca masa para ser redondeada por su propia gravedad. Phobos no tiene una atmósfera debido a su baja masa y baja gravedad. [15] Es uno de los cuerpos menos reflectantes del Sistema Solar, con un albedo de aproximadamente 0.071. [2] Los espectros infrarrojos muestran que tiene un material rico en carbono que se encuentra en las condritas carbonosas. En cambio, su composición muestra similitudes con la de la superficie de Marte. [16] La densidad de Phobos es demasiado baja para ser una roca sólida, y se sabe que tiene una porosidad significativa. [17] [18] [19] Estos resultados llevaron a la sugerencia de que Phobos podría contener un depósito sustancial de hielo. Las observaciones espectrales indican que la capa de regolito de la superficie carece de hidratación, pero no se descarta el hielo por debajo del regolito.',
        history:
            'El origen de las lunas marcianas es todavía controvertido. [44] Phobos y Deimos tienen mucho en común con los asteroides de tipo C carbonosos, con espectros, albedo y densidad muy similares a los de los asteroides de tipo C o D. [45] Según su similitud, una hipótesis es que ambas lunas pueden ser capturadas asteroides del cinturón principal. [46] [47] Ambas lunas tienen órbitas muy circulares que se encuentran casi exactamente en el plano ecuatorial de Marte, y por lo tanto, un origen de captura requiere un mecanismo para circularizar la órbita inicialmente altamente excéntrica, y ajustar su inclinación hacia el plano ecuatorial, muy probablemente por una combinación de la atmósfera fuerzas de arrastre y de marea, [48] aunque no está claro si hay tiempo suficiente disponible para que esto ocurra para Deimos. [44] La captura también requiere la disipación de energía. La atmósfera marciana actual es demasiado delgada para capturar un objeto del tamaño de Phobos mediante el frenado atmosférico. [44] Geoffrey A. Landis ha señalado que la captura podría haber ocurrido si el cuerpo original fuera un asteroide binario que se separara bajo las fuerzas de las mareas.',
        imgAssetPath: 'assets/images/phobos.jpg',
        vidAssetPath: 'assets/images/phobos.webp',
      )
    ],
    color: Colors.red,
    diameter: 0.532,
    description:
        'Marte es el cuarto planeta desde el Sol y el segundo planeta más pequeño en el Sistema Solar después de Mercurio',
    intro:
        'Marte es un planeta terrestre con una atmósfera delgada, con características superficiales que recuerdan a los cráteres de impacto de la Luna y los valles, desiertos y casquetes polares de la Tierra',
    formation:
        'Al igual que la Tierra, Marte se ha diferenciado en un núcleo metálico denso cubierto por materiales menos densos. [38] Los modelos actuales de su interior implican un núcleo con un radio de aproximadamente 1,794 ± 65 kilómetros (1,115 ± 40 mi), que consiste principalmente en hierro y níquel con aproximadamente 16–17% de azufre. [39] Se cree que este núcleo de sulfuro de hierro (II) es dos veces más rico en elementos más livianos que los de la Tierra. [40] El núcleo está rodeado por un manto de silicato que formó muchas de las características tectónicas y volcánicas del planeta, pero parece estar inactivo. Además del silicio y el oxígeno, los elementos más abundantes en la corteza marciana son el hierro, el magnesio, el aluminio, el calcio y el potasio. El grosor promedio de la corteza del planeta es de unos 50 km (31 mi), con un grosor máximo de 125 km (78 mi). [40] La corteza terrestre tiene un promedio de 40 km (25 millas).',
    history:
        'Los antiguos sumerios creían que Marte era Nergal, el dios de la guerra y la plaga. [258] Durante los tiempos sumerios, Nergal era una deidad menor de poca importancia, [258] pero, durante los últimos tiempos, su principal centro de culto era la ciudad de Nínive. [258] En los textos mesopotámicos, a Marte se le conoce como la "estrella del juicio del destino de los muertos". [259] La existencia de Marte como un objeto errante en el cielo nocturno fue registrada por los antiguos astrónomos egipcios y, en 1534 aC, estaban familiarizados con el movimiento retrógrado del planeta. [260] Para el período del Imperio Neo-Babilónico, los astrónomos babilónicos estaban haciendo registros regulares de las posiciones de los planetas y observaciones sistemáticas de su comportamiento. Para Marte, sabían que el planeta producía 37 períodos sinódicos, o 42 circuitos del zodíaco, cada 79 años. Inventaron métodos aritméticos para hacer correcciones menores en las posiciones predichas de los planetas. [261] [262] En el griego antiguo, el planeta era conocido como Πυρόεις. ',
    imgAssetPath: 'assets/images/mars.jpg',
    vidAssetPath: 'assets/images/mars.webp',
  ),
  Planet(
    name: 'Jupiter',
    color: Colors.brown,
    diameter: 1.7,
    moons: [],
    description:
        'Júpiter es el quinto planeta desde el Sol y el más grande del Sistema Solar. Es un planeta gigante ',
    intro:
        'Júpiter es el quinto planeta desde el Sol y el más grande del Sistema Solar. Es un planeta gigante con una milésima masa del Sol, pero dos veces y media la de todos los otros planetas del Sistema Solar combinados. Júpiter y Saturno son gigantes gaseosos; los otros dos planetas gigantes, Urano y Neptuno, son gigantes de hielo ',
    formation:
        'Los astrónomos han descubierto casi 500 sistemas planetarios con múltiples planetas. Regularmente, estos sistemas incluyen unos pocos planetas con masas varias veces más grandes que las de la Tierra (super-Tierras), que orbitan más cerca de su estrella que Mercurio y el Sol, ya veces también gigantes de gas de masa de Júpiter cerca de su estrella. La Tierra y sus planetas vecinos pueden haberse formado a partir de fragmentos de planetas después de que las colisiones con Júpiter destruyeran esas súper-Tierras cercanas al Sol. Cuando Júpiter se acercó al Sistema Solar interior, en lo que los teóricos denominan la hipótesis de la gran aproximación, se produjeron tirones y tirones gravitacionales que causaron una serie de colisiones entre las súper-Tierras a medida que sus órbitas comenzaban a superponerse. El movimiento de Júpiter hacia el exterior del Sistema Solar habría permitido la formación de planetas internos, incluida la Tierra',
    history:
        '"La observación de Júpiter se remonta al menos a los astrónomos babilónicos del siglo 7 u 8 aC. [102] Los antiguos chinos también observaron la órbita de Suìxīng (歲星) y establecieron su ciclo de 12 ramas terrenales en función de su número aproximado de años; la lengua china todavía usa su nombre (simplificado como) cuando se refiere a los años de edad. En el siglo IV aC, estas observaciones se habían convertido en el zodiaco chino, [103] con cada año asociado con una estrella de Tai Sui y un dios que controlaba la región de los cielos frente a la posición de Júpiter en el cielo nocturno; estas creencias sobreviven en algunas prácticas religiosas taoístas y en los doce animales del zodiaco del este de Asia, ahora a menudo se asume popularmente que están relacionados con la llegada de los animales antes de Buda. El historiador chino Xi Zezong ha afirmado que Gan De, un antiguo astrónomo chino, descubrió una de las lunas de Júpiter en el 362 aC a simple vista. Si es preciso, esto sería anterior al descubrimiento de Galileo por casi dos milenios. [104] [105] En su obra del siglo II, el Almagesto, el astrónomo helenístico Claudio Ptolomeo construyó un modelo planetario geocéntrico basado en deferentes y epiciclos para explicar el movimiento de Júpiter en relación con la Tierra, dando su período orbital alrededor de la Tierra como 4332.38 días, o 11.86 años.',
    imgAssetPath: 'assets/images/jupiter.jpg',
    vidAssetPath: 'assets/images/jupiter.webp',
  ),
  Planet(
    name: 'Saturno',
    color: Colors.lime,
    diameter: 1.55,
    moons: [],
    description:
        '"Saturno es el sexto planeta desde el Sol y el segundo más grande del Sistema Solar, después de Júpiter".',
    intro:
        'Saturno es el sexto planeta desde el Sol y el segundo más grande del Sistema Solar, después de Júpiter. Es un gigante de gas con un radio promedio aproximadamente nueve veces mayor que el de la Tierra. [12] [13] Tiene solo un octavo de la densidad promedio de la Tierra, pero con su mayor volumen, Saturno es 95 veces más masivo ',
    formation:
        'Saturno es un gigante gaseoso porque está compuesto principalmente de hidrógeno y helio. Carece de una superficie definida, aunque puede tener un núcleo sólido. [21] La rotación de Saturno hace que tenga la forma de un esferoide oblato; es decir, se aplana en los polos y protuberancias en su ecuador. Sus radios ecuatoriales y polares difieren en casi un 10%: 60,268 km versus 54,364 km. [2] Júpiter, Urano y Neptuno, los otros planetas gigantes del Sistema Solar, también están oblatos, pero en menor medida. La combinación del abultamiento y la tasa de rotación significa que la gravedad de la superficie efectiva a lo largo del ecuador, 8.96 m / s2, es del 74% que en los polos y es más baja que la gravedad de la superficie de la Tierra. Sin embargo, la velocidad de escape ecuatorial de casi 36 km / s es mucho mayor que la de la Tierra ".',
    history:
        'La observación y exploración de Saturno se puede dividir en tres fases principales. La primera era fue observaciones antiguas (como a simple vista), antes de la invención de los telescopios modernos. A partir del siglo XVII, se han realizado progresivamente más observaciones telescópicas avanzadas desde la Tierra. La tercera fase es la visitación por sondas espaciales, ya sea en órbita o sobrevuelo. En el siglo XXI, las observaciones continúan desde la Tierra (incluidos los observatorios que orbitan la Tierra, como el Telescopio Espacial Hubble) y, hasta su retiro en 2017, desde la órbita Cassini alrededor de Saturno',
    imgAssetPath: 'assets/images/saturn.jpg',
    vidAssetPath: 'assets/images/saturn.webp',
  ),
  Planet(
    name: 'Urano',
    color: Colors.teal,
    diameter: 1.3,
    moons: [],
    description:
        'Urano es el séptimo planeta desde el sol. Tiene el tercer planeta más grande',
    intro:
        'Urano es el séptimo planeta desde el sol. Tiene el tercer radio planetario más grande y la cuarta masa planetaria más grande en el Sistema Solar. Urano es similar en composición a Neptuno, y ambos tienen composiciones químicas a granel que difieren de las de los gigantes gaseosos más grandes, Júpiter y Saturno',
    formation:
        'Muchos sostienen que las diferencias entre los gigantes de hielo y los gigantes gaseosos se extienden a su formación. [116] [117] Se supone que el Sistema Solar se formó a partir de una gigantesca bola giratoria de gas y polvo conocida como la nebulosa presolar. Gran parte del gas de la nebulosa, principalmente hidrógeno y helio, formó el Sol, y los granos de polvo se juntaron para formar los primeros protoplanetas. A medida que los planetas crecían, algunos de ellos finalmente acumularon suficiente materia para que su gravedad se adhiriera al gas sobrante de la nebulosa. [116] [117] Cuanto más gas retenían, más grandes se hacían; cuanto más grandes se hicieron, más gas mantuvieron hasta que se alcanzó un punto crítico y su tamaño comenzó a aumentar exponencialmente. Los gigantes de hielo, con solo unas pocas masas terrestres de gas nebular, nunca alcanzaron ese punto crítico. [116] [117] [118] Simulaciones recientes de la migración planetaria han sugerido que ambos gigantes de hielo se formaron más cerca del Sol que sus posiciones actuales, y se movieron hacia el exterior después de la formación',
    history:
        'Al igual que los planetas clásicos, Urano es visible a simple vista, pero nunca fue reconocido como un planeta por observadores antiguos debido a su oscuridad y su órbita lenta. [21] Sir William Herschel anunció su descubrimiento el 13 de marzo de 1781, expandiendo los límites conocidos del Sistema Solar por primera vez en la historia y haciendo de Urano el primer planeta descubierto con un telescopio',
    imgAssetPath: 'assets/images/uranus.jpg',
    vidAssetPath: 'assets/images/uranus.webp',
  ),
  Planet(
    name: 'Neptuno',
    color: Colors.lightBlueAccent,
    diameter: 1.2,
    moons: [],
    description:
        'Neptuno es el octavo y más lejano planeta conocido del Sol en el Sistema Solar.',
    intro:
        'Neptuno es el octavo y más lejano planeta conocido del Sol en el Sistema Solar. En el Sistema Solar, es el cuarto planeta más grande por diámetro, el tercer planeta más masivo y el planeta gigante más denso. ',
    formation:
        'La formación de los gigantes de hielo, Neptuno y Urano, ha resultado difícil de modelar con precisión. Los modelos actuales sugieren que la densidad de materia en las regiones externas del Sistema Solar era demasiado baja para explicar la formación de cuerpos tan grandes a partir del método tradicionalmente aceptado de acreción del núcleo, y se han avanzado varias hipótesis para explicar su formación. Una de ellas es que los gigantes de hielo no se formaron por acumulación de núcleo, sino por inestabilidades dentro del disco protoplanetario original y luego sus atmósferas fueron expulsadas por la radiación de una estrella OB masiva cercana. ',
    history:
        'Algunas de las primeras observaciones registradas realizadas a través de un telescopio, los dibujos de Galileo el 28 de diciembre de 1612 y el 27 de enero de 1613 contienen puntos trazados que coinciden con lo que ahora se conoce como la posición de Neptuno. En ambas ocasiones, Galileo parece haber confundido a Neptuno con una estrella fija cuando apareció cerca, en conjunto, con Júpiter en el cielo nocturno; [22] por lo tanto, no se le atribuye el descubrimiento de Neptuno. En su primera observación en diciembre de 1612, Neptuno estaba casi inmóvil en el cielo porque se había vuelto retrógrado ese día. Este aparente movimiento hacia atrás se crea cuando la órbita de la Tierra lo lleva más allá de un planeta exterior. Debido a que Neptuno apenas estaba comenzando su ciclo retrógrado anual, el movimiento del planeta era demasiado leve para ser detectado con el pequeño telescopio de Galileo. [23] En julio de 2009, el físico David Jamieson de la Universidad de Melbourne anunció nuevas evidencias que sugerían que Galileo era al menos consciente de que la "estrella" que había observado se había movido en relación con las estrellas fijas',
    imgAssetPath: 'assets/images/neptune.jpg',
    vidAssetPath: 'assets/images/neptune.webp',
  ),
];

class Planet extends CelestialBody {
  final List<Moon> moons;

  Planet({
    String name,
    this.moons = const [],
    Color color,
    double diameter,
    String description,
    String intro,
    String formation,
    String history,
    String imgAssetPath,
    String vidAssetPath,
  }) : super(
          name: name,
          diameter: diameter,
          color: color,
          description: description,
          intro: intro,
          formation: formation,
          history: history,
          imgAssetPath: imgAssetPath,
          vidAssetPath: vidAssetPath,
        );
}

class Moon extends CelestialBody {
  Moon(
      {String name,
      String description,
      String intro,
      String formation,
      String history,
      String imgAssetPath,
      String vidAssetPath})
      : super(
          name: name,
          diameter: 0.28,
          color: Colors.grey,
          description: description,
          intro: intro,
          formation: formation,
          history: history,
          imgAssetPath: imgAssetPath,
          vidAssetPath: vidAssetPath,
        );
}

class CelestialBody {
  final String name;
  final double diameter;
  final Color color;
  final String description;
  final String intro;
  final String formation;
  final String history;
  final String imgAssetPath;
  final String vidAssetPath;

  CelestialBody({
    @required this.name,
    @required this.diameter,
    @required this.color,
    this.description,
    this.intro,
    this.formation,
    this.history,
    this.imgAssetPath,
    this.vidAssetPath,
  });
}
