import 'package:mobx/mobx.dart';

part 'text_field_controller.g.dart';

class TextFieldController = _TextFieldControllerBase with _$TextFieldController;

abstract class _TextFieldControllerBase with Store {
  @observable
  bool obscure = false;

  @observable
  String text;

  @action
  void changeObscure() {
    obscure = !obscure;
  }

  @action
  void setText(value) {
    text = value;
  }
}
