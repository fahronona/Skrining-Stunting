import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skrining_stanting/Model/model_onboarding.dart';
import 'package:skrining_stanting/View/data_diri_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pgCtrl = PageController();
  List<ModelOnboarding> onboarding = [
    ModelOnboarding(
        "assets/onboarding-1.svg", "Tumbuh Kembang Anak Sangat Penting"),
    ModelOnboarding("assets/onboarding-2.svg", "Cegah Anak dari Stunting"),
    ModelOnboarding(
        "assets/onboarding-3.svg", "Lakukan Pengecekan Selalu Rutin"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pgCtrl,
        itemCount: onboarding.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 189),
                  child: SvgPicture.asset(onboarding[index].assets),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(onboarding[index].title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff484343),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: index == 0 ? 25 : 10,
                      decoration: BoxDecoration(
                          color: index == 0
                              ? Color(0xff31BA65)
                              : Color(0xffC4C4C4),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: index == 1 ? 25 : 10,
                      decoration: BoxDecoration(
                          color: index == 1
                              ? Color(0xff31BA65)
                              : Color(0xffC4C4C4),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: index == 2 ? 25 : 10,
                      decoration: BoxDecoration(
                          color: index == 2
                              ? Color(0xff31BA65)
                              : Color(0xffC4C4C4),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.3,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          pgCtrl.jumpToPage(2);
                        },
                        child: index == 2
                            ? Container()
                            : Text("Skip",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff757373),
                                )),
                      ),
                      index == 2
                          ? InkWell(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DataDiriScreen()),
                                    (route) => false);
                              },
                              child: Container(
                                  height: 38,
                                  width: 85,
                                  decoration: BoxDecoration(
                                      color: Color(0xff31BA65),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                      child: Text("Mulai",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          )))),
                            )
                          : InkWell(
                              onTap: () {
                                pgCtrl.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: Container(
                                  height: 38,
                                  width: 85,
                                  decoration: BoxDecoration(
                                      color: Color(0xff31BA65),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                      child: Text("Lanjut",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          )))),
                            )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
