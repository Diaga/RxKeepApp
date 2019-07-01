import 'package:flutter/material.dart';
import 'rxkeepPalette.dart';

class FantasiaAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.appBarBg,
      child: FantasiaAppBarContainer(),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight + 30.0);
}

class FantasiaAppBarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double inset = MediaQuery.of(context).size.width * 0.05;
    return Container(
      margin: EdgeInsets.only(
          top: inset * 2, right: inset, bottom: inset, left: inset),
      width: MediaQuery.of(context).size.width * 0.9,
      height: kToolbarHeight,
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Palette.appBarBody,
          ),
          child: Container(
            margin: EdgeInsets.all(kToolbarHeight * 0.2),
            child: Stack(
              children: <Widget>[
                FantasiaAlign(
                    widget: Icon(Icons.menu, color: Palette.appBarIconMenu),
                    x: -1,
                    y: 0),
                FantasiaAlign(
                    widget: Image.asset('assets/rxkeep/logo.png'), x: 0, y: 0),
                FantasiaAlign(widget: Icon(Icons.search), x: 0.6, y: 0),
                FantasiaAlign(widget: Icon(Icons.cloud_off), x: 0.9, y: 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FantasiaAlign extends StatelessWidget {
  final Widget widget;
  final double x;
  final double y;

  const FantasiaAlign({Key key, this.widget, this.x, this.y}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget,
      alignment: Alignment(x, y),
    );
  }
}
