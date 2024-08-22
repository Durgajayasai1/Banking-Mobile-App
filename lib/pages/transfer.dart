import 'package:bank_app/models/page_model.dart';
import 'package:bank_app/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => TransferState();
}

class TransferState extends State<Transfer> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0d0d0f),
        title: Text(
          "Transfer Money",
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              AspectRatio(
                aspectRatio: 0.85,
                child: PageView.builder(
                  itemCount: dataList.length,
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return _carouselView(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _carouselView(int index) {
    if (dataList.isEmpty) {
      return Center(
        child: Text(
          "No data available",
          style: GoogleFonts.poppins(
            color: Colors.grey[300],
            fontSize: 24,
          ),
        ),
      );
    }
    return _carouselCard(dataList[index]);
  }

  Widget _carouselCard(DataModel data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(data.imgPath),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  color: Color(0xffff6134),
                ),
              ],
            ),
          ),
        ),
        Text(
          data.title,
          style: GoogleFonts.poppins(
            color: Colors.grey[300],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PaymentPage(); // Navigate to PaymentPage
            }));
          },
          child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  color: const Color(0xffff6134),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Transfer to ${data.title}",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 16),
              )),
        ),
      ],
    );
  }
}
