import 'package:app_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints) =>
            (constraints.maxWidth > 520) ? _TableDesktopMenu() : _MobileMenu());
  }
}

class _TableDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      //height: 50,
      child: Row(
        children: [
          CustomFlatButton(
              text: "Contador Statful",
              onPressed: () => Navigator.pushNamed(context, "/stateful"),
              color: Colors.black),
          SizedBox(width: 10),
          CustomFlatButton(
              text: "Contador Provider",
              onPressed: () => Navigator.pushNamed(context, "/provider"),
              color: Colors.black),
          SizedBox(width: 10),
          CustomFlatButton(
              text: "Otra Pagina",
              onPressed: () => Navigator.pushNamed(context, "/abc123"),
              color: Colors.black)
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      //height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
              text: "Contador Statful",
              onPressed: () => Navigator.pushNamed(context, "/stateful"),
              color: Colors.black),
          SizedBox(width: 10),
          CustomFlatButton(
              text: "Contador Provider",
              onPressed: () => Navigator.pushNamed(context, "/provider"),
              color: Colors.black),
          SizedBox(width: 10),
          CustomFlatButton(
              text: "Otra Pagina",
              onPressed: () => Navigator.pushNamed(context, "/abc123"),
              color: Colors.black)
        ],
      ),
    );
  }
}
