import 'package:flutter/material.dart';
class TextInputScreen extends StatefulWidget{
  @override  
  State<TextInputScreen>createState()=>_TextInputScreenState();
}
class _TextInputScreenState extends State<TextInputScreen>{
  String _text='';
  void changeText(String val){
    setState(() {
      _text=val;
    });}
    @override  
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Text Input Example'),
        ),
        body: Padding(padding:const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: changeText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                  labelText:'Enter Text',
                
              ),
            ),
            SizedBox(height: 20),
            Text('You typed:$_text',
            style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        ),
      );
    }
}