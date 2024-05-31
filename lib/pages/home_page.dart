import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_rocket/model/rocket_model.dart';
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
            child: FutureBuilder<RocketData>(
                future: homeViewModel.fetchRocketDataApi(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: SpinKitCircle(
                        size: 50,
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.id!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Text(snapshot.data!.diameter.toString())
                            // CachedNetworkImage(
                            //   imageUrl: snapshot.data!.flickrImages.toString(),
                            // ),
                          ],
                        );
                      },
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
