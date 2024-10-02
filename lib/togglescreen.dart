import 'package:flutter/material.dart';
class ToggleScreen extends StatefulWidget{
  @override  
  State<ToggleScreen>createState()=>_ToggleScreenState();
}
class _ToggleScreenState extends State<ToggleScreen>{
  bool _isOn=false;

  void _toggleSwitch(){
    setState(() {
      _isOn =!_isOn;
    });
  }
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _isOn?'ON':'OFF',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _toggleSwitch,
             child: Text(_isOn?'Turn OFF':'Turn ON'),
             ),
          ],
        ),
      ),
    );
  }
}