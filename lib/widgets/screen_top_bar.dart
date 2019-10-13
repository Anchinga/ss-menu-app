import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';
import 'package:ss_menu/models/app_state.dart';
import 'package:ss_menu/screens/cart_screen.dart';

class ScreenTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: 30.0,
          width: 30.0,
        ),
        Text(
          'Menu App',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 30.0,
          ),
        ),
        GestureDetector(
          onTap: () {
            final String currentRoute = ModalRoute.of(context).settings.name;
            if (currentRoute != CartScreen.id)
              Navigator.pushNamed(context, CartScreen.id);
          },
          child: Badge(
            animationType: BadgeAnimationType.scale,
            badgeContent: appState.getCartSize() > 0
                ? Text(
                    appState.getCartSize().toString(),
                    style: TextStyle(color: Colors.white),
                  )
                : null,
            child: Icon(
              Icons.shopping_cart,
              size: 30.0,
            ),
          ),
        ),
      ],
    );
  }
}
