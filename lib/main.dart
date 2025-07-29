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
      title: 'Flutter Demo', // ชื่อแอป
      debugShowCheckedModeBanner: false,
      theme :  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true, // ใช้ Material Design 3
      ),
      home: const MyHomePage(), // กำหนดหน้าแรกของแอป
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('Home Page'), // กำหนดชื่อ AppBar
        backgroundColor: Colors.blue, // ปรับแต่งสี AppBar
      ),
      body: Center( //center ใช้จัดการ Layout ให้อยู่ตรงกลาง
        child: Container( //กล่อง
          padding: EdgeInsets.all(10.0), // กำหนด Padding รอบๆ Container
          width: 300.0,
          height: 150.0,
          decoration: BoxDecoration(
            color: Colors.amber, // ใช้สีเพียงสีเดียวใน decoration
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10.0), // มุมโค้งมนด้านซ้าย
              right: Radius.elliptical(50.0, 10), // มุมโค้งมนด้านขวา
            ), // มุมโค้งมน
          ),
          child: Center(
            child: Image.asset('assets/image/image.png',
            width: 150.0, // กำหนดความกว้างของรูปภาพ
            //height: 150.0, // กำหนดความสูงของรูปภาพ
            fit: BoxFit.contain, // ปรับขนาดรูปภาพให้เต็มพื้นที่
            ),
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