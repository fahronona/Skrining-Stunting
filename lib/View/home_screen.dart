import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skrining_stanting/Component/form_com.dart';
import 'package:skrining_stanting/View/tentang_stunting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hallo!",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                    Text("Ahmad Iwan",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff666464),
                        ))
                  ],
                ),
                Icon(
                  Icons.account_circle,
                  size: 40,
                  color: Color(0xff31BA65),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                      height: 135,
                      width: MediaQuery.of(context).size.width / 1,
                      child: SvgPicture.asset(
                        "assets/background.svg",
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                    top: 10,
                    left: 20,
                    child: SvgPicture.asset("assets/image-orang.svg")),
                Positioned(
                    right: 20,
                    top: 25,
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Selamat Datang",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                          Text(
                              "Lakukan cek stunting secara berkala di aplikasi Skrining dan Pencegahan Stunting",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ))
              ],
            ),
          ),
          titleCom("Feature", 10),
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TentangStunting()));
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/menu-1.svg"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Tentang Stunting",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/menu-2.svg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Deteksi Stunting",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ))
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SvgPicture.asset("assets/menu-3.svg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Monitoring",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ))
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/menu-4.svg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Evaluasi",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
