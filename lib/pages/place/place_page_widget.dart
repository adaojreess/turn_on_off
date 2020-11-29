import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:turn_on_off/pages/place/controllers/place_page_controller.dart';
import 'package:turn_on_off/pages/place/controllers/switch_controller.dart';
import 'package:turn_on_off/widgets/switch_widget.dart';

class PlacePage extends StatelessWidget {
  final controller = PlacePageController();
  SwitchController switchController = SwitchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Observer(
          builder: (_) {
            return Container(
              padding: EdgeInsets.only(left: 35, right: 35),
              height: double.infinity,
              width: double.infinity,
              color: switchController.turn ? Colors.yellow : Colors.black,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                'Bedroom',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '74º',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          Container(
                            height: 130,
                            width: 45,
                            decoration: BoxDecoration(
                              color: switchController.backgroungSwitch,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            child: SwitchWidget(
                              controller: switchController,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
