import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';
import 'package:ss_menu/widgets/outlet_tab_button.dart';
import 'package:ss_menu/widgets/menu.dart';

class OutletsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: Container(
        color: kThemeColorRed,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  OutletTabButton(
                    id: 'ss',
                    text: 'SkewerSpot',
                  ),
                  OutletTabButton(
                    id: 'tfk',
                    text: 'TFK',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
