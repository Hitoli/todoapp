import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/features/home/screens/home_screen.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
        child: Text("Gift Cards",
            style: GoogleFonts.playfair(
                textStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 28))),
      )),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarIcon(),
              NavBarIcon(),
              NavBarIcon(),
              NavBarIcon(),
            ],
          ),
        ),
      ),
      body: HomeScreen(),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        child: SvgPicture.asset("assets/icons/home.svg"),
      ),
    );
  }
}
