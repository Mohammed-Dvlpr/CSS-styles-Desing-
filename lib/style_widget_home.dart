import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:styled_widget/styled_widget.dart';

class StyleWidgetHome extends StatefulWidget {
  const StyleWidgetHome({super.key});

  @override
  State<StyleWidgetHome> createState() => _StyleWidgetHomeState();
}

class _StyleWidgetHomeState extends State<StyleWidgetHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 50, 73, 113),
        body: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 30)),
          appBar(),
          titleWidget('Featured'),
        ]
            .toColumn(crossAxisAlignment: CrossAxisAlignment.start)
            .padding(left: 15, right: 15));
  }

  Widget titleWidget(String title) => <Widget>[
        Text(title.toUpperCase()).letterSpacing(5),
        Text('Products'.toUpperCase())
            .letterSpacing(5)
            .fontWeight(FontWeight.w600)
            .fontSize(22)
      ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);

  Widget appBar() => <Widget>[
        const Icon(Icons.menu),
        <Widget>[
          const Icon(Icons.search),
          const SizedBox(width: 20),
          const Icon(Icons.shopping_cart)
        ].toRow(),
      ].toRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      );
}
