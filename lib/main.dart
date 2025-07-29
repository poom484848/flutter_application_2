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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: const MyHomePage(),
    );
  }
}
 
// ตัวอย่างวิดเจ็ตที่ส่งคืนโดย property 'home' ของ MaterialApp
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue, // ปรับแต่งสี AppBar
      ),
 
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50.0),
          width: 300.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(19.0),
              left: Radius.circular(19.0),
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/kia.jpg'
              width: 150,
              // height: 100, // สามารถละเว้นมิติหนึ่งเพื่อรักษาอัตราส่วนภาพ
              fit: BoxFit.contain, // ปรับขนาดให้พอดีภายในกล่องโดยไม่ตัดภาพ
            ),
          ),
        ),
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
 