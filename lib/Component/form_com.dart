import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleCom(String title, double mrTop) {
  return Padding(
    padding: EdgeInsets.only(top: mrTop, left: 18),
    child: Text(
      title,
      style: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff4D4646)),
    ),
  );
}

Widget titleFormCom(String title, double mrTop, double left) {
  return Padding(
    padding: EdgeInsets.only(top: mrTop, left: left),
    child: Text(
      title,
      style: GoogleFonts.poppins(
          fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff4D4646)),
    ),
  );
}

Widget textCom(String title, double mrTop, double left) {
  return Padding(
    padding: EdgeInsets.only(top: mrTop, left: left, right: 18),
    child: Text(
      title,
      textAlign: TextAlign.justify,
      style: GoogleFonts.poppins(
          fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff4D4646)),
    ),
  );
}

Widget simpleForm(TextEditingController cntrl,
    {String title = "-",
    double mrTop = 10,
    TextInputType txtInput = TextInputType.name}) {
  return Padding(
    padding: EdgeInsets.only(top: mrTop, right: 18, left: 18),
    child: Container(
      color: Colors.transparent,
      height: 48,
      child: TextField(
        style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff4D4646)),
        controller: cntrl,
        keyboardType: txtInput,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 20, right: 18, left: 18),
          hintText: title,
          hintStyle: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xffA7A5A5)),
          fillColor: Colors.grey[200],
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    ),
  );
}

class FormDropdwon extends StatelessWidget {
  final dynamic nilai;
  final String hintText;
  final Map mapDropdown;
  final Function(dynamic value) onPres;
  final double mrTop;

  const FormDropdwon(
      {Key? key,
      this.nilai,
      this.hintText = "",
      required this.mapDropdown,
      required this.onPres,
      this.mrTop = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: mrTop, right: 20, left: 20),
      child: Container(
        //height: 90,
        padding: EdgeInsets.only(left: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: DropdownButtonFormField(
            isExpanded: true,
            value: nilai,
            isDense: true,
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff4D4646)),
            decoration: InputDecoration(
                hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA7A5A5)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
            items: mapDropdown.keys.map<DropdownMenuItem<int>>((key) {
              return DropdownMenuItem<int>(
                  value: key, child: Text(mapDropdown[key]));
            }).toList(),
            hint: Container(
                //padding: EdgeInsets.only(left: 16),
                child: Text(
              hintText,
              style: TextStyle(color: Colors.grey[400]),
            )),
            onChanged: onPres,
          ),
        ),
      ),
    );
  }
}
