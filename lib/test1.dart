/*
 * @Author: 大明冯 
 * @Date: 2019-09-19 10:02:35 
 * @Last Modified by: 大明冯
 * @Last Modified time: 2019-09-19 13:38:33
 */
import 'package:flutter/material.dart';

class Test1Demo extends StatelessWidget {
  const Test1Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100],
      alignment: FractionalOffset.topRight,
      padding: EdgeInsets.all(10),
      child: Text(
        '这是一段测试的文字',
        style: new TextStyle(
          color: Colors.blue,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.overline,
          // decorationColor: Colors.blue,
          // decorationStyle: TextDecorationStyle.wavy
        )
      ),
    );
  }
}