

import 'package:agora_flutter_quickstart/src/pages/topics.dart';
import 'package:flutter/material.dart';
import 'home_card_item.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mainCard.dart';

class ELearningHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Text('School Name'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("lib/images/school.png"),
              ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Payments'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainCard()),
                );
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Time table'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Attendance'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Test Schedule'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      //backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 24,
              right: 0,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   height: 54,
                  //   width: 54,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(color: Colors.grey),
                  //       borderRadius: BorderRadius.circular(16)),
                  //   child: Center(
                  //     child: Icon(Icons.keyboard_arrow_left),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 3),
                    child: Text(
                      "Select the domain",
                      style: GoogleFonts.montserrat(
                          fontSize: 22, color: Colors.white),
                    ),
                  ),
                  Text(
                    "You want to Learn",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit,'
                        ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.grey),
                      ))
                ],
              ),
            ),
            Positioned(
              left: 16,
              bottom: 16,
              right: 16,
              top: 240,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: HomeCardItem(
                            posSetting: true,
                            title: "Conversation",
                            borderRadiusGeometry: BorderRadius.only(
                              topLeft: Radius.circular(160),
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24),
                            ),
                            cardColor: Colors.purple[400],
                            img:
                                "https://assets-ouch.icons8.com/thumb/742/18be8202-4db4-4fd8-bcf2-8db2deb63c63.png",
                            topPosition: [8, 8, 0, 4],
                            bottomPosition: [8, 8, 0, 4],
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileMenu()),
                              );
                            },
                            child: HomeCardItem(
                              posSetting: true,
                              title: "special topics",
                              borderRadiusGeometry: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(160),
                                bottomRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                              ),
                              cardColor: Colors.red[400],
                              img:
                                  "https://assets-ouch.icons8.com/thumb/631/32d26368-cc36-4f6f-bc6c-1309f8727bec.png",
                              topPosition: [8, 8, 0, 4],
                              bottomPosition: [16, 8, 16, 8],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: HomeCardItem(
                            title: "Listening",
                            borderRadiusGeometry: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                              bottomLeft: Radius.circular(160),
                            ),
                            cardColor: Colors.teal[400],
                            img:
                                "https://assets-ouch.icons8.com/thumb/276/af616f49-a851-4014-ad85-9ae9f25ae1bd.png",
                            topPosition: [8, 8, 8, 0],
                            bottomPosition: [16, 8, 16, 8],
                          ),
                        ),
                        Expanded(
                          child: HomeCardItem(
                            title: "TEST",
                            borderRadiusGeometry: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(160),
                              bottomLeft: Radius.circular(24),
                            ),
                            cardColor: Colors.orange[200],
                            img:
                                "https://assets-ouch.icons8.com/thumb/853/0f654408-ed3c-4fea-812f-35185d116b98.png",
                            topPosition: [8, 8, 8, 0],
                            bottomPosition: [0, 8, 16, 8],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
