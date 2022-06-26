import 'dart:async';

import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:rapido/screens/payment.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);

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
              return SizedBox(
                height: 700,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        const Text(
                          "Pick-up Time",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 10, 18, 10),
                          child: Container(
                            height: 50,
                            color: Colors.grey[200],
                            width: double.infinity,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  SizedBox(height: 5),
                                  Text(
                                    "IMMEDIATE PICKUP",
                                    // textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Get a ride in a minute",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      // fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 10, 18, 10),
                          child: Container(
                            height: 50,
                            // color: Colors.grey[200],
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      SizedBox(height: 5),
                                      Text(
                                        "SCHEDULE RIDE",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Schedule your ride from 60 minute in advance",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold
                                            // fontWeight: FontWeight.bold),
                                            ),
                                      ),
                                      SizedBox(height: 5),
                                    ]),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Icon(
                                  Icons.assignment_turned_in_rounded,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            "Driver may arrive between 7:00 - 7:30 PM",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TableCalendar(
                            focusedDay: DateTime.now(),
                            firstDay: DateTime.utc(2011, 10, 16),
                            lastDay: DateTime.utc(2030, 12, 12)),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 5, 16, 10),
                          child: SizedBox(
                            height: 45,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Payment()),
                                );
                              },
                              child: const Text("Set pickup time"),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.purple,
                                  side: const BorderSide(
                                      width: 1.0, color: Colors.purple),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
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
