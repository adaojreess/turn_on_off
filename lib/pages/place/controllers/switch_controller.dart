import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
part 'switch_controller.g.dart';
class SwitchController = _SwitchControllerBase with _$SwitchController;

abstract class _SwitchControllerBase with Store {
  
  @observable
  bool turn = true;

  @action
  setTurn(bool value) => turn = value;

  double get marginTop => turn ? 80 : 0;

  double get marginBottom => turn ? 0 : 80;

  double get henghtStrip => turn ? 100 : 20;

  Color get backgroungSwitch => turn ? Colors.transparent.withAlpha(25) : Color(0xff111013);
}
