import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => PaymentPageState();
}

class PaymentPageState extends State<PaymentPage> {
  String input = "";

  void onPressed(String value) {
    setState(() {
      input += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  '\$ ' + input,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.3,
                ),
                itemBuilder: (context, index) {
                  if (index == 11) {
                    return ElevatedButton(
                      onPressed: () {
                        if (input.isNotEmpty) {
                          setState(() {
                            input = input.substring(0, input.length - 1);
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.all(20.0),
                      ),
                      child: const FaIcon(
                        FontAwesomeIcons.deleteLeft,
                        color: Colors.white,
                      ),
                    );
                  } else {
                    String buttonText = "";
                    if (index < 9) {
                      buttonText = (index + 1).toString();
                    } else if (index == 9) {
                      buttonText = ".";
                    } else if (index == 10) {
                      buttonText = "0";
                    }

                    return ElevatedButton(
                      onPressed: () => onPressed(buttonText),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: index == 9
                            ? Colors.transparent
                            : const Color(0xff242426),
                        padding: const EdgeInsets.all(20.0),
                      ),
                      child: Text(
                        buttonText,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffff6134),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Transfer",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
