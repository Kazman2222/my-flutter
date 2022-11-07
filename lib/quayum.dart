import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: quayum()
));
class quayum extends StatefulWidget {
  const quayum({super.key});



  @override
  State<quayum> createState() => _quayumState();
}

class _quayumState extends State<quayum> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PORTFOLIO',
          style: TextStyle(
            fontFamily: 'AlegreyaSans'
          ) ,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MY NAME IS KAZEEM QUAYUM',
          style: TextStyle(
fontFamily: 'Poppins',
fontSize: 25.0
          ),
        ),
        
      ),
    );
  }
}