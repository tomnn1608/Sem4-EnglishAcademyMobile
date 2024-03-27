import 'package:flutter/material.dart';



class FlutterApp extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ValueListenableBuilder<bool>(
            valueListenable: _dark,
            builder: (context, color, child) {
              return ValueListenableBuilder<double>(
                valueListenable: _widthFactor,
                builder: (context, factor, child) {
                  return Scaffold(
                      backgroundColor:
                      _dark.value ? Colors.black : Colors.white,
                      appBar: AppBar(
                        actions: [
                          Switch(
                            value: _dark.value,
                            onChanged: (value) {
                              _dark.value = value;
                            },
                          ),
                          DropdownButton<double>(
                            value: _widthFactor.value,
                            onChanged: (value) {
                              _widthFactor.value = value!;
                            },
                            items: [
                              DropdownMenuItem<double>(
                                value: 0.5,
                                child: Text('Size: 50%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 0.75,
                                child: Text('Size: 75%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 1.0,
                                child: Text('Size: 100%'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      body: Center(
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width *
                                _widthFactor.value,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Iphone13141(),
                              ],
                            ),
                          )));
                },
              );
            }));
  }
}

class Iphone13141 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 8,
                top: 14,
                child: Text(
                  ' \$60.99',
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 24,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 257,
                child: Text(
                  'Start Date',
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 20,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 301,
                child: Text(
                  'Enrolled',
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 20,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 345,
                child: Text(
                  'Lectures',
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 20,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 389,
                child: Text(
                  'Skill Level',
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 20,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 433,
                child: Text(
                  'Language',
                  style: TextStyle(
                    color: Color(0xFFE7E7E7),
                    fontSize: 20,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 474,
                child: Text(
                  'Show More',
                  style: TextStyle(
                    color: Color(0xFF3559EF),
                    fontSize: 16,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 104,
                top: 17,
                child: Text(
                  ' \$84.99',
                  style: TextStyle(
                    color: Color(0xFFA7A7A7),
                    fontSize: 20,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 111,
                top: 30,
                child: Container(
                  width: 62,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFA7A7A7),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 280,
                top: 18,
                child: Container(
                  width: 94,
                  height: 23,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFC6C6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 292,
                top: 262,
                child: Container(
                  width: 82,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6E6E6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 341,
                top: 306,
                child: Container(
                  width: 33,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6E6E6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 346,
                top: 350,
                child: Container(
                  width: 28,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6E6E6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 331,
                top: 394,
                child: Container(
                  width: 43,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6E6E6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 319,
                top: 438,
                child: Container(
                  width: 55,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 291,
                top: 22,
                child: Stack(
                  children: [
                    Positioned(
                      left: 12,
                      top: 0,
                      child: Text(
                        '3 days left!',
                        style: TextStyle(
                          color: Color(0xFFFF2222),
                          fontSize: 12,
                          fontFamily: 'Lexend Deca',
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 3,
                      child: Container(
                        width: 9,
                        height: 9,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 9,
                              height: 9,
                              child: Stack(children: [
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 300,
                top: 264,
                child: Text(
                  '5 Hrs 20 Min',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 11,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 347,
                top: 308,
                child: Text(
                  '100',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 11,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 353,
                top: 352,
                child: Text(
                  '50',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 11,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 337,
                top: 396,
                child: Text(
                  'Basic',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 11,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 327,
                top: 440,
                child: Text(
                  'English',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFE7E7E7),
                    fontSize: 11,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 65,
                child: Container(
                  width: 358,
                  height: 66,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [Color(0xFF3258EF), Color(0xFFB766E7)],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 147,
                child: Container(
                  width: 358,
                  height: 66,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Color(0xFFDFDFDF)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 88,
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 159,
                top: 170,
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                    color: Color(0xFF3F3F3F),
                    fontSize: 16,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 219,
                child: Stack(
                  children: [
                    Positioned(
                      left: 11,
                      top: 0,
                      child: Text(
                        '30-Day Money-Black Guarantee',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6E6E6E),
                          fontSize: 12,
                          fontFamily: 'Lexend Deca',
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 3,
                      child: Container(
                        width: 9,
                        height: 9,
                        padding: const EdgeInsets.symmetric(horizontal: 0.33),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 363,
                top: 481,
                child: Container(
                  width: 11,
                  height: 11,
                  padding: const EdgeInsets.symmetric(vertical: 2.36),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 539,
                child: Container(
                  width: 358,
                  height: 247,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F5FA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 81,
                top: 574,
                child: Container(
                  width: 232,
                  height: 43,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 43,
                          height: 43,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 43,
                                  height: 43,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5FA),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFDCDCEC)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 11,
                                top: 11,
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0.07),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 63,
                        top: 0,
                        child: Container(
                          width: 43,
                          height: 43,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 43,
                                  height: 43,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5FA),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFDCDCEC)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 12,
                                top: 12,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 1.87),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 126,
                        top: 0,
                        child: Container(
                          width: 43,
                          height: 43,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 43,
                                  height: 43,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5FA),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFDCDCEC)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 12,
                                top: 12,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        child: Stack(children: [
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 0,
                        child: Container(
                          width: 43,
                          height: 43,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 43,
                                  height: 43,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5FA),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFDCDCEC)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 12,
                                top: 12,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 1.48),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 17.03,
                                        child: Stack(children: [
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 113,
                top: 670,
                child: Text(
                  'For details about the course',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6E6E6E),
                    fontSize: 12,
                    fontFamily: 'Lexend Deca',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 710,
                child: Container(
                  width: 322,
                  height: 51,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6DBFC),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(27.50),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0xFFE9E9F5),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 121,
                top: 728,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Call Us: ',
                        style: TextStyle(
                          color: Color(0xFF2C2C41),
                          fontSize: 12,
                          fontFamily: 'Lexend Deca',
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '+444 555 666 777',
                        style: TextStyle(
                          color: Color(0xFF3559EF),
                          fontSize: 12,
                          fontFamily: 'Lexend Deca',
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
