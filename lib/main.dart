import 'package:flutter/material.dart';

void main() {
  runApp(const Tasbih());
}

class Tasbih extends StatefulWidget {
  const Tasbih({super.key});

  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {
  int counter = 0;
  int i = 0;
  String tasbih = "";
  String subhanAllah = "سبحان الله";
  String alhamdlellah = "الحمد لله";
  String allahAkber = "الله أكبر";
  String laEllahElaAllah = "لا إله إلا الله";
  MaterialButton increase = MaterialButton(onPressed: () {});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tasbih App"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "أذكار بعد الصلاة",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              MaterialButton(
                color: Colors.teal,
                onPressed: () {
                  setState(() {
                    tasbih = subhanAllah;
                    increase = MaterialButton(
                      color: Colors.teal,
                      shape: CircleBorder(),
                      onPressed: () {
                        setState(() {
                          startCounter();
                        });
                      },
                      child: Icon(Icons.add, size: 52, color: Colors.white),
                    );
                  });
                },
                child: Text(
                  "إبدأ التسبيح",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30),

              Text(
                tasbih,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 100),
              Text(
                "$counter",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                color: Colors.grey[200],
                onPressed: () {
                  setState(() {
                    restart();
                  });
                },
                child: Text(
                  "Clear",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              increase,
            ],
          ),
        ),
      ),
    );
  }

  void startCounter() {
    if (i <= 100) {
      counter++;
      i++;
      if (i == 34) {
        tasbih = alhamdlellah;
        counter = 1;
      } else if (i == 67) {
        tasbih = allahAkber;
        counter = 1;
      } else if (i == 100) {
        tasbih = laEllahElaAllah;
        counter = 1;
      } else if (i > 100) {
        restart();
      }
    }
  }

  void restart() {
    counter = 0;
    i = 0;
    tasbih = "";
    increase = MaterialButton(onPressed: () {});
  }
}
