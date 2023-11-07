import 'package:flutter/material.dart';
import 'package:flutterapp2_setstate_calculatorapp/colorscheme.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var input = '';
  var answer = '';
  var operations = '';
  var hideinput = false;
  double answersize = 34;
  onButtonClick(value) {
    if (value == "AC") {
      if (input.isNotEmpty || answer.isNotEmpty) {
        input = '';
        answer = '';
      }
    } else if (value == "<") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == "=") {
      if (input.isNotEmpty) {
        var userinput = input;
        userinput = input.replaceAll("x", "*");
        Parser parser_cal = Parser();
        Expression expression_cal = parser_cal.parse(userinput);
        ContextModel cm = ContextModel();
        var finalvalue = expression_cal.evaluate(EvaluationType.REAL, cm);
        answer = finalvalue.toString();
        if (answer.endsWith(".0")) {
          answer = answer.substring(0, answer.length - 2);
        }
        input = answer;
        hideinput = true;
        answersize = 52;
      }
    } else {
      input = input + value;
      hideinput = false;
      answersize = 34;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  hideinput ? '' : input,
                  style: TextStyle(fontSize: 48, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  answer,
                  style: TextStyle(
                      fontSize: answersize,
                      color: Colors.white.withOpacity(0.6)),
                ),
                SizedBox(
                  height: 30,
                ),
                const Divider(
                  color: Color.fromARGB(255, 77, 72, 72),
                  height: 25,
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
              ],
            ),
          )),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              calbutton(text: "AC", textcolor: Colors.red),
              calbutton(text: "<"),
              calbutton(
                  text: " ",
                  btn_color: Colors.transparent), //operatorcolor=green
              calbutton(text: "/", btn_color: operatorcolor),
            ],
          ),
          Row(
            children: [
              calbutton(text: "7"),
              calbutton(text: "8"),
              calbutton(text: "9"),
              calbutton(text: "x", btn_color: operatorcolor),
            ],
          ),
          Row(
            children: [
              calbutton(text: "4"),
              calbutton(text: "5"),
              calbutton(text: "6"),
              calbutton(text: "-", btn_color: operatorcolor),
            ],
          ),
          Row(
            children: [
              calbutton(text: "1"),
              calbutton(text: "2"),
              calbutton(text: "3"),
              calbutton(text: "+", btn_color: operatorcolor),
            ],
          ),
          Row(
            children: [
              calbutton(text: "%"),
              calbutton(text: "0"),
              calbutton(text: "."),
              calbutton(text: "=", btn_color: operatorcolor),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget calbutton({text, textcolor, btn_color = btncolor}) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.all(8),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(22),
                    backgroundColor: btn_color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200),
                    )),
                onPressed: () => onButtonClick(text),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 18,
                      color: textcolor,
                      fontWeight: FontWeight.bold),
                ))));
  }
}
