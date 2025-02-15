import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/keyboard_pages/electro_piano.dart';
import 'package:musicedu_app/keyboard_pages/melodica.dart';
import 'package:musicedu_app/keyboard_pages/org.dart';
import 'package:musicedu_app/keyboard_pages/piano.dart';

class KeyBoards extends StatelessWidget {
  const KeyBoards({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              //Arkaplan resmi
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Piano(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Piyano',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              image: AssetImage('assets/page_images/piano.jpg'),
                              height: 160,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElectroPiano(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Elektronik Piyano',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              image: AssetImage(
                                  'assets/page_images/electropiano.jpg'),
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SafeArea(
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Org(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Org',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              image: AssetImage('assets/page_images/org.jpg'),
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SafeArea(
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Melodica(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Melodika',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              image:
                                  AssetImage('assets/page_images/melodica.jpg'),
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// onPressed: () {
// Navigator.pushAndRemoveUntil(
// context,
// MaterialPageRoute(
// builder: (context) => HomePage()),
// ModalRoute.withName('/HomePage'));
// }
