import 'package:app/components/card_base.dart';
import 'package:app/components/text_field/text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TextField extends StatelessWidget {
  final Function change;
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String initialValue;
  final TextStyle textStyle;
  final int maxLength;
  final TextAlign textAlign;
  final String labelText;
  final TextStyle labelStyle;
  final int sizeInLine;
  final TextCapitalization textCapitalization;

  final _controller = TextFieldController();
  final TextEditingController _textEditingController;

  TextField(
      {Key key,
      this.change,
      this.hintText,
      this.icon,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.initialValue,
      this.textStyle,
      this.maxLength,
      this.labelText,
      this.labelStyle,
      this.sizeInLine = 1,
      this.textCapitalization = TextCapitalization.none,
      this.textAlign = TextAlign.left})
      : _textEditingController = TextEditingController(
          text: initialValue,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (obscureText) _controller.changeObscure();

    return CardBase(
      labelText: labelText,
      labelStyle: labelStyle,
      multiLine: sizeInLine > 1,
      body: Observer(
        builder: (_) {
          return TextFormField(
            style: textStyle,
            textCapitalization: textCapitalization,
            inputFormatters: [
              LengthLimitingTextInputFormatter(maxLength),
            ],
            textAlign: textAlign,
            keyboardType:
                sizeInLine == 1 ? keyboardType : TextInputType.multiline,
            obscureText: _controller.obscure,
            onChanged: change,
            maxLines: sizeInLine,
            controller: _textEditingController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 14),
              icon: _icon(),
              suffixIcon: _suffixIcon(),
              hintText: hintText,
              hintStyle:
                  textStyle.copyWith(color: textStyle.color.withOpacity(0.5)),
              border: InputBorder.none,
            ),
          );
        },
      ),
    );
  }

  Widget _icon() {
    if (icon == null) return null;
    final double size = textStyle.fontSize < 20 ? 20 : textStyle.fontSize;
    return Icon(
      icon,
      color: textStyle.color,
      size: size,
    );
  }

  Widget _suffixIcon() {
    if (!obscureText) return null;
    // final double size = textStyle.fontSize < 20 ? 20 : textStyle.fontSize;
    return IconButton(
      onPressed: () {
        _controller.changeObscure();
      },
      icon: Icon(
        _controller.obscure ? Icons.visibility : Icons.visibility_off,
        color: textStyle.color,
        // size: size,
      ),
    );
  }
}
