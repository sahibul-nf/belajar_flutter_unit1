import 'package:flutter/material.dart';
import 'package:belajar_flutter/widgets/header.dart';
import 'package:belajar_flutter/widgets/best_agents.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Header
          const Header(),
          const SizedBox(height: 24),

          // Categories
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/images/fi_wind.png",
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Hutan",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          //Staff Picks
          Padding(
            padding: const EdgeInsets.only(
                top: 24, bottom: 24, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Staff Picks",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var i = 0; i < 5; i++)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                      255, 245, 244, 247),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/image_6.png",
                                    height: 80,
                                    width: 120,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 5, top: 10),
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff322E4A),
                                      borderRadius:
                                          BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      "New",
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xFFF7AF4B),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: Text(
                                    "Lagon Sky",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: Text(
                                    "USD 920 ",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xffF7AF4B),
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                "800 sq ft.",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // best agents
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Best Agents',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      itemCount: 1,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) => Row(
                        children: [
                          Row(
                            children: [
                              // circular image 1
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/image_71.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      child: Text(
                                        "Satthu",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "1908 Sold",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // circular image 2
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/image_75.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      child: Text("Satthu",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                    Text(
                                      "1908 Sold",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // circular image 3
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/image_73.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      child: Text("Satthu",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                    Text(
                                      "1908 Sold",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // circular image 4
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/image_73.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      child: Text("Satthu",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                    Text(
                                      "1908 Sold",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // circular image 5
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/image_73.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      child: Text("Satthu",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                    Text(
                                      "1908 Sold",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
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
    );
  }
}
