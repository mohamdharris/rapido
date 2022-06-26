import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:rapido/screens/payment.dart';

class Vehicle extends StatefulWidget {
  const Vehicle({Key? key}) : super(key: key);

  @override
  State<Vehicle> createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  int _currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onDoubleTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: SizedBox(
                  height: 230,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Your driver is comming in 2:35",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Cancel Ride",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Image(
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                      ),
                                    ),
                                    Column(
                                      // mainAxisAlignment:
                                      // MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Evan Guzman",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            Text("4.8"),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Icon(Icons.navigation),
                                            SizedBox(
                                              width: 23,
                                            ),
                                            Text("3 min"),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          height: 75,
                                          width: 75,
                                          child: const Image(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://images.pexels.com/photos/116675/pexels-photo-116675.jpeg?auto=compress&cs=tinysrgb&w=600")),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Row(
                                          children: const [
                                            Text("Toyota Vios-"),
                                            Text(
                                              "8CF4829",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 160,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Payment()),
                                          );
                                        },
                                        child: const Text("MESSAGE"),
                                        style: ElevatedButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1.0,
                                                color: Colors.purple),
                                            primary: Colors.purple),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 70,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "CALL",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1.0,
                                                color: Colors.purple),
                                            primary: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 40,
                                )
                              ],
                            ),
                          ]),
                    ),
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
