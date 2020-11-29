import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'place_page_controller.g.dart';

class PlacePageController = _PlacePageControllerBase with _$PlacePageController;

abstract class _PlacePageControllerBase with Store {
  @observable
  Color backgroundColor = Colors.yellow;
  @action
  setBackgoubdColor(Color value) => backgroundColor = value;
}