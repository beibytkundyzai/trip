import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double blackContainerSize = 120.0;
    final double greenContainerSize = 160.0; // Увеличиваем размер зеленого контейнера

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Действие по нажатию кнопки назад
            },
          ),
          title: Text(
            "Мои поездки",
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: blackContainerSize,
                    height: blackContainerSize,
                    margin: EdgeInsets.only(bottom: 60.0), // Добавленный отступ снизу
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(blackContainerSize / 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "20.5",
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                        Text("км расстояние", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.0), // Отступ между контейнерами
                  Padding(
                    padding: EdgeInsets.only(top: 35.0), // Отступ только сверху
                    child: Container(
                      width: greenContainerSize,
                      height: greenContainerSize,
                      decoration: BoxDecoration(
                        color: Color(0xFFD4EE72),
                        borderRadius: BorderRadius.circular(greenContainerSize / 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "5 Г",
                            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                          ),
                          Text("компенсация выбора",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Вклад в экологию благодаря вашим поездкам:",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: 40.0, // Ширина контейнера для эмодзи
                            height: 40.0, // Высота контейнера для эмодзи
                            decoration: BoxDecoration(
                              color: Colors.grey[300], // Серый цвет контейнера
                              borderRadius: BorderRadius.circular(20.0), // Делаем контейнер круглым
                            ),
                            child: Center(
                              child: Text(
                                "🌲", // Эмодзи елки
                                style: TextStyle(fontSize: 25.0),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              "Одно дерево может поглотить от 21.77 кг до 31.5 кг СО2 в год. Каждая ваша переписка приближает нас к устойчивому будущему и помогает нам сохранить нашу планету.",
                              style: TextStyle(color: Colors.grey, fontSize: 11.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "История поездок",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              _buildHistoryCard(context, "30 Апр, 21:15", "2919"),
              SizedBox(height: 11.0),
              _buildHistoryCard(context, "9 Апр, 11:20", "3121"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHistoryCard(BuildContext context, String date, String textBelow) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      padding: EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width - 32.0,
      height: 85.0,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  date,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
          SizedBox(height: 8.0), // Расстояние между датой и текстом
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.photo, size: 16.0), // Иконка фотокамеры
              SizedBox(width: 8.0),
              Text(
                textBelow,
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

