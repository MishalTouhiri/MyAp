import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<Calculator> {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();
  int result = 0;

  void calculateSum() {
    int num1 = int.tryParse(firstNumberController.text) ?? 0;
    int num2 = int.tryParse(secondNumberController.text) ?? 0;

    setState(() {
      result = num1 + num2;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('الناتج: $result'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'حاسبة',
<<<<<<< HEAD
          style: TextStyle(color: Colors.red),
=======
          style: TextStyle(color: Colors.black),
>>>>>>> d41c6be7c699aa5ecf7898aa78440926c0b453af
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.green,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'الرقم الأول',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'الرقم الثاني',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: calculateSum,
              style: TextButton.styleFrom(
                foregroundColor: Colors.blueAccent,
                backgroundColor: Colors.black,
              ),
              child: Text('إجمع'),
            ),
          ],
        ),
      ),
    );
  }
}
