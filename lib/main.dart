import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      theme :  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        //useMaterial3: true, // ใช้ Material Design 3
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(), // กำหนดหน้าแรกของแอป
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue, // ปรับแต่งสี AppBar
      ),
      body: Center( //center ใช้จัดการ Layout ให้อยู่ตรงกลาง
        //mainAxisAlignment: MainAxisAlignment.center, // จัดตำแหน่งวิด
        child: Container( //กล่อง
          padding: EdgeInsets.all(50.0),
          width: 300.0,
          height: 200.0,
          //color: Colors.amber, // กำหนดสีพื้นหลังของ Container
          
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(20.0)), // มุมโค้งมน
          ),

          child : const Text(
            'inside Container',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.brown),
          )
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // การกระทำที่จะทำเมื่อกดปุ่ม
          print('FAB Pressed!');
        },
        child: const Icon(Icons.add), // ไอคอนสำหรับปุ่ม
      ),
    );
  }
}


