import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_rocket/view_model/home_view_model.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  HomeViewModel homeViewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rocket Data',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: height * .55,
            width: width,
          ),
        ],
      ),
    );
  }
}
