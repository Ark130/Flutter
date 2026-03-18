import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/widgets/appbar_widget.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Cards Page'),
      body: SingleChildScrollView(
        child: Column(children: [
          ChavosCard(), 
          CustomCard(), 
          ActividadCard(),
          FavoriteCard(),
          ComidaCard()
          ]),
      ),
    );
  }
}

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                child: Image.network(
                  'https://images.bigbadtoystore.com/images/p/full/2025/01/2f0b7595-fa64-4d98-a066-7d22ef58df53.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentGeometry.topRight,
                child: Container(
                  padding: EdgeInsets.only(right: 15, top: 10),
                  width: 50,
                  height: 50,
                  child: IconButton(
                    iconSize:30,
                    onPressed: ()=>{isFavorite= !isFavorite, setState(() {})},
                    icon: Icon(
                      isFavorite?Icons.favorite:
                      Icons.favorite_border),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Text('Agnes Tachyon'),
      ],)
    );
  }
}


class ComidaCard extends StatefulWidget {
  const ComidaCard({super.key});

  @override
  State<ComidaCard> createState() => _ComidaCardState();
}

class _ComidaCardState extends State<ComidaCard> {
  bool isFavorite = false;
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                child: Image.network(
                  'https://s7d1.scene7.com/is/image/mcdonalds/MediumOreoFrappe_832x472:product-header-desktop?wid=830&hei=456&dpr=off',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentGeometry.topRight,
                child: Container(
                  padding: EdgeInsets.only(right: 15, top: 10),
                  child: IconButton(
                    iconSize: 30,
                    onPressed: () => setState(() {
                      isFavorite = !isFavorite;
                    }),
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Frappe Oreo',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Una deliciosa bebida fría de Oreo, perfecta para refrescarte y disfrutar en cualquier momento.',
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Botón Pedir
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Pedir'),
                ),
                // Incrementador
                Row(
                  children: [
                    IconButton(
                      onPressed: () => setState(() {
                        if (quantity > 0) quantity--;
                      }),
                      icon: Icon(Icons.remove_circle_outline),
                    ),
                    Text(
                      '$quantity',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () => setState(() {
                        quantity++;
                      }),
                      icon: Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChavosCard extends StatelessWidget {
  const ChavosCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network(
              'https://media.admagazine.com/photos/653c7a12daa2255f3e1d1298/16:9/w_1920,c_limit/casa-cabo-san-lucas-1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Casa a orillas de la playa',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Una hermosa casa ubicada a orillas del mar, perfecta para relajarse y disfrutar del paisaje.',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network(
              'https://www.topgear.com/sites/default/files/news-listicle/image/le-mans-icon-ford-gt40.jpg?w=827&h=465',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                'Ford GT40',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'El Ford GT40 es un legendario automóvil de carreras de los años 60, nacido de la intensa rivalidad entre Henry Ford II y Enzo Ferrari con el único objetivo de vencer a los italianos en las 24 Horas de Le Mans. Con una altura de apenas 40 pulgadas, este vehículo combinó el refinamiento aerodinámico europeo con la fuerza bruta de los motores V8 estadounidenses. Su dominio fue absoluto, logrando cuatro victorias consecutivas en la mítica prueba de resistencia entre 1966 y 1969, consolidándose como uno de los diseños más icónicos y exitosos en la historia del automovilismo mundial.',
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton.filled(onPressed: () {}, icon: Icon(Icons.favorite)),
                SizedBox(width: 5),
                IconButton.filled(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActividadCard extends StatelessWidget {
  const ActividadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Manhatthan Caffe',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network(
              'https://images3.alphacoders.com/128/thumb-1920-1284078.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Personaje desvelado y que le hace falta café',
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('donar')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}