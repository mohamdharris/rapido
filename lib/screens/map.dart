import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rapido/screens/calender.dart';
import 'package:rapido/screens/payment.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  int _currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        leading: Icon(
          Icons.density_medium,
          color: Colors.black,
        ),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: InkWell(
        onDoubleTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(40.0),
                //   topRight: Radius.circular(40.0),
                // )),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stepper(
                        steps: const [
                          Step(
                              title: Text(
                                '874 Hildegard Crossing',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              content: Text('')),
                          Step(
                              title: Text(
                                '27 Sawayn Square',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              content: Text('')),
                        ],
                        onStepTapped: (int newIndex) {
                          setState(() {
                            _currentstep = newIndex;
                          });
                        },
                        currentStep: _currentstep,
                        onStepContinue: () {
                          if (_currentstep != 1) {
                            setState(() {
                              _currentstep += 1;
                            });
                          }
                        },
                        onStepCancel: () {
                          if (_currentstep != 0) {
                            setState(() {
                              _currentstep -= 1;
                            });
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "SUGGESTED RIDERS",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.blue[300]),
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/2393835/pexels-photo-2393835.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                      ),
                                    ),
                                    Text(
                                      "BIKE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "\$36.50",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.grey),
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/2393835/pexels-photo-2393835.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                      ),
                                    ),
                                    Text(
                                      "BIKE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "\$36.50",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.grey),
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/2393835/pexels-photo-2393835.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                      ),
                                    ),
                                    Text(
                                      "BIKE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "\$36.50",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 30,
                              width: 50,
                              child: Image(
                                image: NetworkImage(
                                    "https://dharmamerchantservices.com/wp-content/uploads/2017/06/visa-logo-white-background.png"),
                              ),
                            ),
                            const Text(
                              "****7539",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                            const SizedBox(width: 80),
                            const Icon(Icons.brightness_low_rounded),
                            SizedBox(width: 10),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "...",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //  SizedBox(
                            //             height: 40,
                            //             width: 160,
                            //             child: ElevatedButton(
                            //               onPressed: () {},
                            //               child: const Text("MESSAGE"),
                            //               style: ElevatedButton.styleFrom(
                            //                   side: const BorderSide(
                            //                       width: 1.0,
                            //                       color: Colors.purple),
                            //                   primary: Colors.purple),
                            //             ),
                            //           ),
                            SizedBox(
                              height: 40,
                              width: 160,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Calendar()),
                                  );
                                },
                                child: Text("BOOK NOW"),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.purple,
                                  side: BorderSide(
                                      width: 1.0, color: Colors.purple),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: 160,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.black,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                      width: 1.0, color: Colors.purple),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: sourceLocation, zoom: 14.5)),
      ),
    );
  }
}
