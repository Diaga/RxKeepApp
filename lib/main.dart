import 'package:flutter/material.dart';

import 'fantasiaWidgets.dart';
import 'rxkeepPalette.dart';

void main() => runApp(RxKeep());

class RxKeep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RxKeep',
      home: Medication(),
    );
  }
}

class Medication extends StatefulWidget {
  @override
  _MedicationState createState() => _MedicationState();
}

class _MedicationState extends State<Medication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FantasiaAppBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          RxKeepSliver(),
        ],
      ),
    );
  }
}

class RxKeepSliver extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: MediaQuery.of(context).size.height * 0.3,
        backgroundColor: Palette.primary,
        flexibleSpace: const FlexibleSpaceBar(

        ),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
