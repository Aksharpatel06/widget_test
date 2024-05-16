import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassMorphismSreen extends StatelessWidget {
  const GlassMorphismSreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/img/img3.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: GlassmorphicContainer(
            width: width / 3,
            height: height / 2,
            borderRadius: 40,
            border: 2,
            blur: 2,
            borderGradient: LinearGradient(colors: [
              Colors.white10,
              Colors.white10,
            ]),
            linearGradient: LinearGradient(colors: [
              Colors.black12,
              Colors.black12,
            ]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 34,horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Glass',
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black54,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                        Text(
                          'Morphism',
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                              fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Text(
                            'mockup.',
                            style: GoogleFonts.ibmPlexSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(color:Color(0xffD0D4CD))
                              ),
                              child: Text('4K',style: GoogleFonts.ibmPlexSans(color: Color(0xffB1B0AC),fontSize: 8),),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(color:Color(0xffD0D4CD))
                              ),
                              child: Text('PSD',style: TextStyle(color: Color(0xffB1B0AC),fontSize: 8),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        SizedBox(
                          width: 120,
                          child: Text('Isolated Objects & Editable Colors',style:GoogleFonts.ibmPlexSans(
                              color: Color(0xffD0D4CD),
                              fontWeight: FontWeight.w500,
                              fontSize: 12)),
                        ),
                      ],
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff5A764E),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:Color(0xffBAC1B7),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff5A764E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
