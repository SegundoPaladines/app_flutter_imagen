import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text("App Imagen"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            _fondo(),
            _principalContainer(),
          ],
        ),
      )
    );
  }
}

Widget _fondo() {
  return const Image(
    image: AssetImage('assets/fondo.jpg'),
    height: double.infinity,
    width: double.infinity,
    fit: BoxFit.cover,
  );
}

Widget _principalContainer () {
  return Center(
    child: SizedBox(
      height: 300,
      child: Column(
        children: <Widget>[_foto(), _contenedorTextos()],
      ),
    ),
  );
}

Widget _contenedorTextos() {
  return Center(
    child: Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      height: 80,
      color: const Color.fromRGBO(0, 0, 0, 0.6),
      child: Column(
        children: <Widget>[ _titulo(), _subtitlo()],
      ),
    ),
  );
}

Widget _titulo() {
  return const Center(
      child: Text(
    'Segundo Paladines',
    style: TextStyle(
      fontFamily: 'roboto',
      fontSize: 32,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
  ));
}

Widget _subtitlo() {
  return const Center(
    child: Text(
      'Web Developer',
      style: TextStyle(
        fontFamily: 'roboto',
        fontSize: 16,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontStyle: FontStyle.italic,
      ),
    )
  );
}


Widget _foto() {
  return const Center(
    child: ClipRRect(
      borderRadius:BorderRadius.only(
        bottomLeft: Radius.circular(75),
        topLeft: Radius.circular(75),
        bottomRight: Radius.circular(75),
        topRight: Radius.circular(75),
      ),
      child: FadeInImage(
        width: 150,
        height: 150,
        placeholder: AssetImage('assets/foto.png'),
        image: AssetImage('assets/foto.png'),
        fit: BoxFit.fill,
      ),
    ),
  );
}