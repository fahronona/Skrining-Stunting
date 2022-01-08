import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skrining_stanting/Component/form_com.dart';
import 'package:skrining_stanting/View/home_screen.dart';

class DataDiriScreen extends StatefulWidget {
  const DataDiriScreen({Key? key}) : super(key: key);

  @override
  _DataDiriScreenState createState() => _DataDiriScreenState();
}

class _DataDiriScreenState extends State<DataDiriScreen> {
  TextEditingController namaAnakCtrl = TextEditingController();
  TextEditingController namaIbuCtrl = TextEditingController();
  TextEditingController namaAyahCtrl = TextEditingController();
  TextEditingController nomorIbuCtrl = TextEditingController();
  TextEditingController nomorAyahCtrl = TextEditingController();

  Map<int, String> pekerajaanAyah = {
    1: "PNS",
    2: "Swasta",
    3: "Wirausaha",
    4: "Petani / Nelayan",
    5: "Pekerja Mandiri",
    6: "Tidak Bekerja"
  };
  var pekerjaanAyahValue;

  Map<int, String> pekerajaanIbu = {
    1: "PNS",
    2: "Swasta",
    3: "Wirausaha",
    4: "Petani / Nelayan",
    5: "Pekerja Mandiri",
    6: "Tidak Bekerja"
  };
  var pekerjaanIbuValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          titleCom('Data diri', 43),
          titleFormCom('Nama Anak', 15, 18),
          simpleForm(namaAnakCtrl, title: "Masukan nama anak", mrTop: 10),
          titleFormCom('Nama Ibu', 15, 18),
          simpleForm(namaIbuCtrl, title: "Masukan nama ibu", mrTop: 10),
          titleFormCom('Nama Ayah', 15, 18),
          simpleForm(namaAyahCtrl, title: "Masukan nama ayah", mrTop: 10),
          titleFormCom('Nomor Handphone Ibu', 15, 18),
          simpleForm(nomorIbuCtrl,
              title: "Masukan nomor handphone ibu",
              mrTop: 10,
              txtInput: TextInputType.phone),
          titleFormCom('Nomor Handphone Ayah', 15, 18),
          simpleForm(nomorAyahCtrl,
              title: "Masukan nomor handphone ayah",
              mrTop: 10,
              txtInput: TextInputType.phone),
          titleFormCom('Pekerjaan Ayah', 15, 18),
          FormDropdwon(
            mapDropdown: pekerajaanAyah,
            hintText: "Pilih pekerjaan ayah",
            mrTop: 10,
            nilai: pekerjaanAyahValue,
            onPres: (value) {
              setState(() {
                pekerjaanAyahValue = value;
              });
            },
          ),
          titleFormCom('Pekerjaan Ibu', 15, 18),
          FormDropdwon(
            mapDropdown: pekerajaanIbu,
            hintText: "Pilih pekerjaan ibu",
            mrTop: 10,
            nilai: pekerjaanIbuValue,
            onPres: (value) {
              setState(() {
                pekerjaanIbuValue = value;
              });
            },
          ),
          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (route) => false);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff31BA65),
                ),
                child: Center(
                    child: Text("Simpan",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
