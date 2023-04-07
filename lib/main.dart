import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Color D = Color(0xF2256B07);
  Color L = Color(0xAD47BD15);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(),
        child: Scaffold(
    body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/1.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0), // Add blank space on top
              Container(
                color: L, // Green background
                child: Center(
                  child: Text(
                    "FOR SALE",
                    style: TextStyle(
                      fontSize: 20,
                      color: D,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0), // Add spacing between text and buttons
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MLS#:E5579076",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Listed for: ",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "\$1,549,586",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "2118 Thornidge Cir. Syraacuse, Connecticut 35624",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add spacing between text and buttons
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.map_outlined),
                      label: Text('View on Map'),
                      onPressed: () {
                        // do something when the first button is pressed
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 16), // add some spacing between the buttons
                  Flexible(
                    flex: 1,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.directions),
                      label: Text('Get Directions'),
                      onPressed: () {
                        // do something when the second button is pressed
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notify Similar Properties like this',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Switch(
                      value: true,
                      onChanged: (bool value) {
                        // do something when the switch is toggled
                      },
                    ),
                  ],
                ),
              ),
              ExpansionPanelList.radio(
                initialOpenPanelValue: 0,
                children: [
                  ExpansionPanelRadio(
                    value: 0,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Key Facts'),
                      );
                    },
                    body: Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text('Card 1'),
                            subtitle: Text('Subtitle 1'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 2'),
                            subtitle: Text('Subtitle 2'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 3'),
                            subtitle: Text('Subtitle 3'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExpansionPanelRadio(
                    value: 1,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Property History'),
                      );
                    },
                    body: Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text('Listed for \$1,549,586'),
                            subtitle: Text('MSI#: E5579076'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Listed for \$1,549,586'),
                            subtitle: Text('MSI#: E5579076'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Listed for \$1,549,586'),
                            subtitle: Text('MSI#: E5579076'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExpansionPanelRadio(
                    value: 2,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Demographics'),
                      );
                    },
                    body: Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text('Card 1'),
                            subtitle: Text('Subtitle 1'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 2'),
                            subtitle: Text('Subtitle 2'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 3'),
                            subtitle: Text('Subtitle 3'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExpansionPanelRadio(
                    value: 3,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Point of Interest'),
                      );
                    },
                    body: Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text('Card 1'),
                            subtitle: Text('Subtitle 1'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 2'),
                            subtitle: Text('Subtitle 2'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 3'),
                            subtitle: Text('Subtitle 3'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
          ),
        ),
      ),
    );
  }
}

