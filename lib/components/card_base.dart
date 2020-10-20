import 'package:flutter/material.dart';

class CardBase extends StatelessWidget {
  final String labelText;
  final TextStyle labelStyle;
  final bool multiLine;
  final Widget body;

  const CardBase({
    Key key,
    @required this.labelText,
    @required this.labelStyle,
    @required this.body,
    this.multiLine = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(8));

    return Material(
      elevation: 1.8,
      borderRadius: borderRadius,
      child: Container(
        padding: const EdgeInsets.only(
          top: 4,
          left: 16,
          right: 16,
          bottom: 4,
        ),
        decoration: const BoxDecoration(
          borderRadius: borderRadius,
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            labelText == null
                ? Container()
                : Positioned(
                    top: 5,
                    child: Text(
                      labelText,
                      style: labelStyle,
                    ),
                  ),
            Container(
                margin: EdgeInsets.only(top: multiLine ? 24 : 9), child: body),
          ],
        ),
      ),
    );
  }
}
