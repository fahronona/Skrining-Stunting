import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skrining_stanting/Component/form_com.dart';

class TentangStunting extends StatefulWidget {
  const TentangStunting({Key? key}) : super(key: key);

  @override
  _TentangStuntingState createState() => _TentangStuntingState();
}

class _TentangStuntingState extends State<TentangStunting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tentang Stunting",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              )),
          //leadingWidth: 80,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: [
            titleFormCom("Apa itu Stunting ?", 20, 18),
            textCom(
                "Stunting (kerdil) adalah kondisi dimana balita memiliki panjang atau tinggi badan yang kurang jika dibandingkan dengan umur.",
                5,
                18),
            titleFormCom("Penyebab Stunting", 15, 18),
            titleFormCom("1. Asupan Zat Gizi", 10, 30),
            textCom(
                "Defisiensi zat gizi yang paling berat dan meluas terutama dikalangan balita ialah akibat kekurangan zat gizi sebagai akibat kekurangan konsumsi makanan dan hambatan mengabsorbsi zat gizi.  Zat energi digunakan oleh tubuh sebagai sumber tenaga yang tersedia pada makanan yang mengandung karbohidrat, protein yang digunakan oleh tubuh sebagai pembangun yang berfungsi memperbaiki sel-sel tubuh. Kekurangan zat gizi disebabkan karena mendapat makan yang tidak sesuai dengan kebutuhan pertumbuhan badan atau adanya ketidak seimbangan antara konsumsi zat gizi dan kebutuhan gizi dari segi kuantitatif maupun kualitatif (Irianto A, 2015)",
                5,
                30),
            titleFormCom("2. Riwayat Kehamilan", 10, 30),
            textCom(
                "a. Usia ibu hamil mempunyai hubungan erat dengan berat bayi lahir, pada usia ibu yang masih muda perkembangan organ-organ reproduksi dan fungsi fisiologisnya belum optimal (Depkes RI, 2013).",
                5,
                30),
            textCom(
                "b. Hamil dengan KEK (Kurang Energi Kronis) merupakan keadaan dimana ibu penderita kekurangan makanan yang berlangsung menahun (kronis) yang mengakibatkan timbulnya gangguan kesehatan pada ibu (Depkes RI, 2012). Menurut departemen kesehatan batas ibu hamil yang disebut resiko KEK jika ukuran LILA < 23,5 cm, dalam pedoman Depkes tersebut disebutkan intervensi yang diperlukan untuk WUS atau ibu hamil yang menderita resiko KEK.",
                5,
                30),
            textCom(
                "c. Kadar Hb (hemoglobin) masa kehamilan seringkali terjadi kekurangan zat besi dalam tubuh. Zat besi merupakan mineral yang sangat dibutuhkan untuk membentuk sel darah merah (hemoglobin). Selain itu mineral ini juga berperan sebagai komponen untuk membentuk mioglobin (protein yang membawa oksigen ke otot), kolagen (protein yang terdapat ditulang, tulang rawan, dan jaringan penyambung) serta enzim zat besi juga berfungsi dalam sistem pertahanan tubuh (Dewi, 2013).",
                5,
                30),
            titleFormCom("3. BBLR (Berat Badan Lahir", 10, 30),
            textCom(
                "BBLR merupakan prediktor penting dengan umur kehamilan kurang dari 37 minggu dengan berat badan kurang dari 2500 gram. Bila bayi lahir dengan usia kehamilan kurang dari 37 minggu dan berat badannya kurang dari seharusnya disebut dengan dismatur kurang bulan kecil untuk masa kehamilan.",
                5,
                30),
            titleFormCom("4. ASI Ekslusif", 10, 30),
            textCom(
                "Pemberian asi secara dini dan eksklusif sekurang-kurangnya 4-6 bulan akan membantu mencegah berbagai penyakit anak, termasuk gangguan lambung dan saluran nafas, terutama asma pada anak-anak. Hal ini disebabkan adanya antibody penting yang ada dalam kolostrum ASI (dalam jumlah yang lebih sedikit) akan melindungi bayi baru lahir dan mencegah timbulnya alergi. Untuk alasan tersebut, semua bayi baru lahir harus mendapatkan kolotrum (Rahmi, 2008 dalam Aprilia, 2009). Inisiasi menyusui dini dan ASI eksklusif selama 6 bulan pertama dapat mencegah kematian bayi dan infant yang lebih besar dengan mereduksi risiko penyakit infeksi (WHO, 2010).",
                5,
                30),
            titleFormCom("5. MP ASI", 10, 30),
            textCom(
                "Makanan pendamping air susu ibu (MP-ASI) adalah makanan atau minuman yang mengandung zat gizi yang diberikan  pada bayiatau  usia 6-24 bulan guna memenuhi kebutuhan gizi selain ASI. MP-ASI merupakan makanan peralihan dari ASI ke makanan keluarga. Pengenalan dan pemberian MP-ASI harus dilakukan secara bertahap baik bentuk maupun jumlahnya, sesuai dengan kemampuan bayi. Pemberian MP-ASI yang cukup kualitas dan kuantitasnya penting untuk pertumbuhan fisik dan perkembangan kecerdasan yang sangat pesat pada periode ni, tetap sangat diperlukan hygenitasnya dalam pemberian MP-ASI tersebut (Anonim, 2013).",
                5,
                30),
            titleFormCom("6. Infeksi", 10, 30),
            textCom(
                "Infeksi adalah invasi (masuk kedalam tubuh) dan multiaplikasi (pertumbuhan dan perkembangan) mikroorganisme patogen di jaringan tubuh atau jaringan, yang dapat menghasilkan cedera jaringan berikutnya dan kemajuan untuk terbuka penyakit melalui berbagai mekanisme seluler atau beracun (Notoadmojo, 2010). Beberapa contoh infeksi yang sering dialami yaitu infeksi enterik seperti diare, enteropati, dan cacing, dapat juga disebabkan oleh infeksi pernafasan (ISPA), malaria, berkurangnya nafsu makan akibat serangan infeksi, dan inflamasi. Konsumsi diet yang cukup tidak menjamin pertumbuhan fisik yang normal karena kejadian penyakit lain, seperti infeksi akut atau kronis, dapat mempengaruhi proses yang kompleks terhadap terjadinya atau pemeliharaan defisit pertumbuhan (Anisa, 2012).",
                5,
                30),
            titleFormCom("Dampak", 15, 18),
            titleFormCom("1. Dampak Jangka Pendek", 10, 30),
            textCom(
                "a.Peningkatan kejadian kesakitan dan kematian,\nb.Perkembangan kognitif, motorik dan verbal pada anak tidak optimal;\nc.Peningkatan biaya kesehatan.",
                5,
                30),
            titleFormCom("2. Dampak Jangka Panjang", 10, 30),
            textCom(
                "a.Postur tubuh yang tidak optimal saat dewasa (lebih pendek dibandingkan pada umumnya);\nb.Meningkatnya resiko obesitas dari penyakit lainnya;\nc.Menurunnya kesehatan reproduksi\nd.Kapasitas belajar dan performa yang kurang optimal saat masa sekolah, dan produktivitas dan kapasitas kerja yang tidak optimal.",
                5,
                30),
            titleFormCom("Intervensi Stunting ", 15, 18),
            textCom(
                "Stunting  merupakan salah satu targer Sustainable Development goals (SDGs) yang termasuk pada tujuan pembangunan berkelanjutan tahap-2 yaitu menghilangkan kelaparan dan segala bentuk malnutrisi pada tahun 2030 serta mencapai ketahan pangan. Taregt yang ditetapkan adalah menurunkan angka stunting hingga 40% pada tahun 2025. Untuk mewujudkan hal tersebut, pemerintah menetapkan stunting sebagai salah satu program prioritas. Berdasarkan peraturan Menteri Kesehatan Nomor 39 tahun 2016 tentang Pedoman Penyelenggaraan Program Indonesia Sehat dengan Pendekatan Keluarga, upaya yang dilakukan untuk menurunkan prevaleansi stunting  di abtaranya sevagai berikut:",
                5,
                30),
            titleFormCom("1. Ibu Hamil dan Bersalin", 10, 30),
            textCom(
                "a.Intervensi  pada 1.000 hari pertama kehidupan\nb.Mengupayakan jaminan mutu ante natal care (ANC) terpadu;\nc.Meningkatkan persalinan di fasilitas kersehatan;\nd.Menyelenggarakan program pemberian makanan tinggi kalori, protein, dan mikronutrien (TKPM);\ne.Deteksi dini penyakit (menular dan tidak menular);\nf.Pembrantasan kecacingan;\ng.Meningkatkan transformasi Kartu Menuju Sehat (KMS) ke dalam Buku KIA;\nh.Menyelenggarakan konseling Inisiasi Menyusui Dini (IMD) dan ASI ekslusif; dan\ni.Penyuluhan dan pelayanan KB.",
                5,
                30),
            titleFormCom("2. Balita", 10, 30),
            textCom(
                "a.Pemantauan pertumbuhan balita;\nb.Menyelenggarakan kegiatan Pemberian Makanan Tambahan (PMT) untuk balita;\nc.Menyelenggarakan stimulasi dini perkembangan anak; dan\nd.Memberikan pelayanan kesehatan yang optimal.",
                5,
                30),
            titleFormCom("3. Anak Usia Sekolah", 10, 30),
            textCom(
                "a.Melakukan revitalisasi Usaha Kesehatan Sekolah (UKS);\nb.Menguatkan kelembagaan Tim Pembina UKS;\nc.Menyelenggarakan Program Gizi Anak Sekolah (PROGRAS); dan\nd.Memberlakukan sekolah sebagai kawasan bebas rokok dan narkoba.",
                5,
                30),
            titleFormCom("4. Remaja", 10, 30),
            textCom(
                "a.Meningkatkan penyuluhan untuk perilaku hidup bersih dan sehat (PHBS), pola gizi seimbang, tidak merokok, dan mengkonsumsi narkoba; dan\nb.Pendidikan kesehatan reproduksi.",
                5,
                30),
            titleFormCom("5. Dewasa Muda", 10, 30),
            textCom(
                "a.Penyuluhan dan pelayanan keluarga berencana (KB)\nb.Deteksi dini penyakit (menular dan tidak menular); dan\nc.Meningkatkan penyuluhan untuk PHBS, pola gizi seimbang, tidak nerokok/mengkonsumsi narkoba.",
                5,
                30),
          ],
        ));
  }
}
