// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SwitchController on _SwitchControllerBase, Store {
  final _$turnAtom = Atom(name: '_SwitchControllerBase.turn');

  @override
  bool get turn {
    _$turnAtom.reportRead();
    return super.turn;
  }

  @override
  set turn(bool value) {
    _$turnAtom.reportWrite(value, super.turn, () {
      super.turn = value;
    });
  }

  final _$_SwitchControllerBaseActionController =
      ActionController(name: '_SwitchControllerBase');

  @override
  dynamic setTurn(bool value) {
    final _$actionInfo = _$_SwitchControllerBaseActionController.startAction(
        name: '_SwitchControllerBase.setTurn');
    try {
      return super.setTurn(value);
    } finally {
      _$_SwitchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
turn: ${turn}
    ''';
  }
}
