import 'package:figmatoflutter/presentation/screens/main/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHandler extends StatefulWidget {
  const ScreenHandler({super.key});

  @override
  State<ScreenHandler> createState() => _ScreenHandlerState();
}

class _ScreenHandlerState extends State<ScreenHandler> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final iconSize = screenWidth < 600 ? 20.0 : 24.0; 
    final textSize = screenWidth < 600 ? 10.0 : 12.0;
    final fabSize = screenWidth < 600 ? 56.0 : 64.0;
    final bottomBarHeight = screenWidth < 600 ? 60.0 : 70.0;
    final notchMargin = screenWidth < 600 ? 5.0 : 8.0;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            backgroundColor: const Color.fromRGBO(235, 122, 94, 1),
            mini: screenWidth < 600,
            child: Icon(
              Icons.credit_card_outlined,
              color: const Color.fromRGBO(255, 255, 255, 1),
              size: fabSize * 0.5,
            ),
          ),
        ],
      ),
      body: HomeScreen(),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: notchMargin,
        child: Container(
          height: bottomBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: screenWidth < 600 ? 30.0 : 40.0,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home_outlined, color: Colors.black, size: iconSize),
                    Text(
                      'Home',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color.fromRGBO(17, 17, 19, 1),
                        fontSize: textSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: screenWidth < 600 ? 30.0 : 40.0,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, color: Colors.black, size: iconSize),
                    Text(
                      'Discovery',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color.fromRGBO(17, 17, 19, 1),
                        fontSize: textSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth < 600 ? 30.0 : 40.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: iconSize),
                    Text(
                      'My Card',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color.fromRGBO(17, 17, 19, 1),
                        fontSize: textSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: screenWidth < 600 ? 30.0 : 40.0,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_border, color: Colors.black, size: iconSize),
                    Text(
                      'Loyalty',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color.fromRGBO(17, 17, 19, 1),
                        fontSize: textSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: screenWidth < 600 ? 30.0 : 40.0,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.grid_view, color: Colors.black, size: iconSize),
                    Text(
                      'More',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color.fromRGBO(17, 17, 19, 1),
                        fontSize: textSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}