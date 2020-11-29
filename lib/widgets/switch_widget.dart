import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:turn_on_off/pages/place/controllers/switch_controller.dart';

class SwitchWidget extends StatelessWidget {
  final SwitchController controller;

  const SwitchWidget({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Observer(
          builder: (_) {
            return Container(
              alignment: Alignment.topCenter,
              child: Container(
                height: controller.henghtStrip,
                width: 1,
                color: Colors.white,
              ),
            );
          },
        ),
        Observer(
          builder: (_) {
            return InkWell(
              onTap: () {
                controller.setTurn(!controller.turn);
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: controller.marginTop,
                  bottom: controller.marginBottom,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
