import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                  height: 500,
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
                                    const Text(
                                      "Your driver is comming in 2:35",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
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
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.announcement,
                                      color: Colors.grey[300],
                                    ),
                                    const Text(
                                        "You're sharing your ride with others going your way.\n Other Passengers may be added",
                                        style: TextStyle(fontSize: 13))
                                  ],
                                ),
                                Divider(),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "TRIP",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text('Edit Ride'))
                                    ]),
                                Stepper(
                                  steps: const [
                                    Step(
                                        title: Text('874 Hildegard Crossing'),
                                        content: Text('7.15PM')),
                                    Step(
                                        title: Text('Picking up Selena'),
                                        content: Text('Pickup')),
                                    Step(
                                        title: Text('Dropping off Selena'),
                                        content: Text('Drop-off')),
                                    Step(
                                        title: Text('27 Sawayn Square'),
                                        content: Text('9.30PM')),
                                  ],
                                  onStepTapped: (int newIndex) {
                                    setState(() {
                                      _currentstep = newIndex;
                                    });
                                  },
                                  currentStep: _currentstep,
                                  onStepContinue: () {
                                    if (_currentstep != 3) {
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
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "PAYMENT",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Split cost'))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "US\$35.50",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    SizedBox(
                                      height: 40,
                                      width: 150,
                                      child: Image(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgntuitVdm4yaXhnmP4j0SLLsSjhmKj4MijQ&usqp=CAU")),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 150,
                                      child: Image(
                                          image: NetworkImage(
                                              "https://dharmamerchantservices.com/wp-content/uploads/2017/06/visa-logo-white-background.png")),
                                    )
                                  ],
                                ),
                                Divider(),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 160,
                                      child: ElevatedButton(
                                        onPressed: () {},
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
