import 'package:first_flutter_project/Module_11/module_11_class_2/widget/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = '0';
  String _input = '0';
  String _ope = '0';
  double num1 = 0;
  double num2 = 0;

  void buttonPress(String value){
    print('Int value = $value');
    setState(() {
      if(value == 'C'){
        _output = '0';
        _input = '0';
        _ope = '';
        num1 = 0;
        num2 = 0;
      }else if(value == '='){
        num2 = double.parse(_input);
        if(_ope == '+'){
          _output = (num1+num2).toString();
        }else if(_ope == '-'){
          _output = (num1-num2).toString();
        }else if(_ope == '*'){
          _output = (num1*num2).toString();
        }else if(_ope == '÷'){
          _output = num2 != 0 ? (num1/num2).toString() : 'Error';
        }
      }else if(['+','-','*','÷'].contains(value)){
        num1 = double.parse(_input);
        _ope = value;
        _input = '';
      }else{
        if(_input == '0'){
          _input = value;
        }else{
          _input += value; //to assign more than 1 value in the output
          //for example - 2, 20, 222, etc
        }
        _output = _input;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //app background color black
      body: Column(
        //this will show the output
        children: [
          Expanded( //this will take available space in the body
            child: Container(
              alignment: Alignment.bottomRight, //here we are working on output location
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if(_ope.isNotEmpty && _input.isNotEmpty)
                    //additional line to show user input of calculation
                    (_ope.isNotEmpty && _input.isNotEmpty) ? Text('$num1 $_ope $_input',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                    ),) : SizedBox(),
                  SizedBox(height: 20,),
                  Text(_output,
                      style:TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )),
                ],
              ),
            ),
          ), //this will show the output
          Row(
            children: [
              calculator_button(onClick: () => buttonPress('7'),text:'7'),
              calculator_button(onClick: () => buttonPress('8'),text:'8'),
              calculator_button(onClick: () => buttonPress('9'),text:'9'),
              calculator_button(onClick: () => buttonPress('÷'),text:'÷',color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              calculator_button(onClick: () => buttonPress('4'),text:'4'),
              calculator_button(onClick: () => buttonPress('5'),text:'5'),
              calculator_button(onClick: () => buttonPress('6'),text:'6'),
              calculator_button(onClick: () => buttonPress('*'),text:'*',color: Colors.orange),
            ],
          ),
          Row(
            children: [
              calculator_button(onClick: () => buttonPress('1'),text:'1'),
              calculator_button(onClick: () => buttonPress('2'),text:'2'),
              calculator_button(onClick: () => buttonPress('3'),text:'3'),
              calculator_button(onClick: () => buttonPress('-'),text:'-',color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              calculator_button(onClick: () => buttonPress('C'),text:'C',color: Colors.white),
              calculator_button(onClick: () => buttonPress('0'),text:'0'),
              calculator_button(onClick: () => buttonPress('='),text:'='),
              calculator_button(onClick: () => buttonPress('+'),text:'+',color: Colors.orange,),
            ],
          ),
        ],
      ),
    );
  }
}


