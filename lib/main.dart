import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Иконка и картинки',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Центрируем элементы
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16), // Равное расстояние
                child: Image.asset('images/img1.jpg', width: 200, height: 200),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset('images/img2.jpg', width: 200, height: 200),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset('images/img3.jpg', width: 200, height: 200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
