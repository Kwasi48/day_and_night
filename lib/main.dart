import 'package:flutter/material.dart';
import 'shoe_theme.dart';

void main () {
  runApp( const ShoeApp());
}

class ShoeApp extends StatefulWidget {

   const ShoeApp({super.key});

  @override
  State<ShoeApp> createState() => _ShoeAppState();
}

class _ShoeAppState extends State<ShoeApp> {
  bool _isWhichColor = true;
  bool _isdark = true;

  @override
  Widget build(BuildContext context) {
     final theme = (_isWhichColor ? ShoeTheme.dark() : ShoeTheme.light());
    return  MaterialApp(
      theme: theme,
      title: 'Day or Night',
      home: Scaffold(
        appBar: AppBar(
          title:  const Text("Day or Night"),
          centerTitle: true,
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("☀️ or 🌃",
              style:  TextStyle(fontSize:  60, ),),
              FloatingActionButton(
                backgroundColor: theme.primaryColor,
                child:  Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon( _isdark ? Icons.dark_mode : Icons.light_mode),
                ),
                  onPressed: (){
                  setState(() {
                    _isWhichColor = !_isWhichColor;
                    _isdark = !_isdark;
                  });
                  }
              )
            ],
          ),
        ),
      ),

    );
  }
}
