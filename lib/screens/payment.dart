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
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: SizedBox(
                  height: 400,
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
                                    Text("Your driver is comming in 2:35"),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Cancel Ride"))
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                      width: 80,
                                      child: Image(
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Evan Guzman",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text("4.8"),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Icon(Icons.navigation),
                                            Text("3 min"),
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          child: const Image(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://images.pexels.com/photos/116675/pexels-photo-116675.jpeg?auto=compress&cs=tinysrgb&w=600")),
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
                                        "You're sharing your ride with others going your way.\n Other Passengers may be added")
                                  ],
                                ),
                                Divider(),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
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
                                              "data:image/png;base64,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")),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 150,
                                      child: Image(
                                          image: NetworkImage(
                                              "data:image/png;base64,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")),
                                    )
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 30,
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
                                      height: 30,
                                      width: 70,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("CALL"),
                                        style: ElevatedButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1.0,
                                                color: Colors.purple),
                                            primary: Colors.transparent),
                                      ),
                                    )
                                  ],
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
