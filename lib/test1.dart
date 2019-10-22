/*
 * @Author: 大明冯 
 * @Date: 2019-09-19 10:02:35 
 * @Last Modified by: 大明冯
 * @Last Modified time: 2019-09-21 22:53:49
 */
import 'package:flutter/material.dart';
import 'dart:math';

class Test1Demo extends StatelessWidget {
  const Test1Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple[100],
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: BoxList(count: 5, boxType: 'row'),
              ),
            ),
            Container(
              color: Colors.black,
              height: 2.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: BoxList(count: 5, boxType: 'column',),
              ),
            ),
          ],
        ));
  }
}

class BoxList extends StatelessWidget {
  final int count;
  final String boxType;
  const BoxList({Key key, this.count, this.boxType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = List<int>.generate(count, (i) => i + 1).map((j) => Box(j)).toList();
    return boxType == 'row'? Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:  CrossAxisAlignment.start,
      children:  list,
    ): Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: list,
    );
  }
}

Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256)+0, Random().nextInt(256)+0, Random().nextInt(256)+0);
}
          
class Box extends StatelessWidget {
  const Box(int j,  {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: randomColor(),
      height: 50.0,
      width: 50.0,
    );
  }
}
