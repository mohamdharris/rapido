import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
                        children: [Text("SUGGESTED RIDERS")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 50,
                            child: Image(
                              image: NetworkImage(
                                  "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAABDCAMAAACRDGoDAAAAh1BMVEX///8UNMsALcoAHMjCx+4AIslga9YAK8oQMssAJskAGMgAKMkAEscAAMYAH8ivtej29/36+/7w8vtyftro6vnM0PG+w+0ACsZaZ9V/iN1pddimrOZuetng4/erseg6TM8uQ85IWNKepOSJkd9FU9HU2PM3R85lcNcgOs1TYNSOluCVnuK4vOsINY0rAAAEs0lEQVRYhe1YyYKiMBCFRCRhB0FEpd1tF/7/+wZIVRaWOcx1eKdOSFLbq8W2rAULFixYsOC/RrZdGSiSwYEcD2zbL6k8px8prsfL6Xm6/96afPh+jbczc7/wwjCgCl54Mw/8luJDcO9eCeHUSz1wDDzuEsYYIb4T2pWueHaBCzT8GSiU5j+7yCG2hGcIzjzc7kyMI7FwKzTn7bm2Dhbqck8+7ruboSdaJPE7kNdZpDvr6sAu61YVnIpi8fVQEtsEuWiXG0/us+eE3E7xNZUG68E7M7HpXLvVE1Zl3X/8ePYQfqVdviitGBkEeGSZzb9qswBtmN9fC9H4tFvFwUisHTXq8kNXiz5m5Fp30I78qr0jONY96g+RXbfKHCa9y6PI4W67jmp1eaOH3jnMyf3BUBK5laBFZa/tAU7wT7eqOPrQ232bbfzdnwOu7lpJqDtCaD6FvIQjipIoiJ365R4MoB0DUgLmkjPamNa3t3pPBk48MUMsS3HIK3AHeUQFf09Iso7xDxn6UbEwnkP1yjliyXhwDIV82u55lEP2ipzCXJ4zZCXIQN4gX1kzRINVAUOBiviilBRIq5540o3ONFN3gqZRcRFy9TQxIe25i3WKeVAKT36BSLzPZYy9zfiU4FxQkjlYbEQSTOIlNMMcx5fxxhsSLeg9tpKFhgXVsJtY1k2UyLaiNuIZ9hqdQWAZDIQBSCMKBQzNp71aCZfpa3N36MTEZvhUDXni1NYMtmCC0zcPyaqz+FoHZhhuWp4wx46Npxqq7kJ9ods5udh8RJHdQDMRpdlCf6nWctabAqMXPZ/AV32FAYaJajMJKOS9RZJVHgSvQj3Qstw2eiChKlOwogadbz/coMkEgAx22f4dg3k+mofdJZL0zS6UaYJZIAVDXRe5DQxsqT2HVaTUxDaBjSRjwPZIu3ClusmMgquxZYhmkAMDy1liJRGcbySrZCN/DGgFEo5Ui7K/B3XAVzBCQMWKTOrpuIsT/kdG08OGiu3KHwxg9TtQzg5E5kMSYUShn7iVNYevpIAHXmX4CYsmbYaXVkSaLD5iuKKtobLpKQPgTHaKjVar2WAH4/aTYYWBIgyJ0xb6TY81pAmbbUkJdq0zkgilZBjeczq+luN80KspVzZxe6A7vNlZR6qKPX2NH3DSUjs6gOuiZdzk9DqAMxyiFa7cOKkyUjYjUYlNj2U4qnS1MPWZPY2/EOtB9YMw33RYY9UQTeK91tp4ip2qHypwIBjjL7OOFenKqiEwlUOQsJS4lFVNnaRpUh8IFo8+ce7DWV4hnODGwK5eP0f2VeQK5FU3AzI3Kil7uaWaZ7uR/4E+9x2F0eQ2wkHrbtrwD30NZyAciVo9NP/wrlzh0MmrWKKBiYJfZ+XW2o+AQBVU5Ch4vpqirPtMVWlmXKceVqz9rFwZSLNxYdAGo4iO6N5F5eqML0sv4ggxhb3sMPpvHaAbc/uIZ3wol7nwwxk8alxWTYXPzNotYo8IuES/J/Z80Z2yo+1xwpRQyo/ixW0Jt03qprBdGv8oMJC/1wI7rbqsYHOH81tSfHYkLL32t38Zvo4NBrPawcFB19qM3/x3JHWxWhX1fFIuWLBgwYIFC0b4A9I/RnqlnPbWAAAAAElFTkSuQmCC"),
                            ),
                          ),
                          Text(
                            "****7539",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                          SizedBox(width: 30),
                          Icon(Icons.brightness_low_rounded),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 160,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Payment()),
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
                              child: Icon(Icons.calendar_month),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: BorderSide(
                                    width: 1.0, color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ),
                        ],
                      ),
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
