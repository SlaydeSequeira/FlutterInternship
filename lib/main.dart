import 'package:flutter/material.dart';
import 'example_function.dart';
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
              Container(
                height: 250,
              child:ExampleFunction(),
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
              Card(
                color: Colors.grey[200],
                margin: EdgeInsets.all(10.0),
                child: Container(
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
              ),

              Card(
            color: Colors.white60,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Property Details',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _PropertyDetailCard(
                      icon: Icons.apartment,
                      label: 'Apartment',
                    ),
                    _PropertyDetailCard(
                      icon: Icons.king_bed,
                      label: 'Bedroom',
                    ),
                    _PropertyDetailCard(
                      icon: Icons.bathtub,
                      label: 'Bathroom',
                    ),
                    _PropertyDetailCard(
                      icon: Icons.local_parking,
                      label: 'Parking',
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
              Card(
                color : Colors.white60,
              child:ExpansionPanelList.radio(
                initialOpenPanelValue: 1,
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
                            title: Text('Key Fact 1'),
                            subtitle: Text('Subtitle 1'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Key Fact 2'),
                            subtitle: Text('Subtitle 2'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Key Fact 3'),
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
                    Text("Buy/Sell History for 2118 Thornridge Cir. Syracuse, Connecticut 35624",
                      style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,),
                    Card(
                      margin: EdgeInsets.all(10.0),
                    child: Column(
                    children: [
                      Row(
                      children: [
                      Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'List 08.05.2022',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Listed for \$1,549,586",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'MSI#: E5579076',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Sold',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Sold for \$1,549,586',
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
    ),
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'List 08.05.2022',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Listed for \$1,549,586",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'MSI#: E5579076',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Sold',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'Sold for \$1,549,586',
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'List 08.05.2022',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Listed for \$1,549,586",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'MSI#: E5579076',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Sold',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'Sold for \$1,549,586',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
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
                            title: Text('Demo 1'),
                            subtitle: Text('Subtitle 1'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Demo 2'),
                            subtitle: Text('Subtitle 2'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Demo 3'),
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
                            title: Text('POI 1'),
                            subtitle: Text('Subtitle 1'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('POI 2'),
                            subtitle: Text('Subtitle 2'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('POI 3'),
                            subtitle: Text('Subtitle 3'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ),
              Container(
                child: Column(
                  children: [
                Container(
                child: Column(
                children: [
                    Container(
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50.0,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your note',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle adding note functionality here
                      },
                      child: Text('Add Note'),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
        ],
      ),
    ),


    Container(
    child: Card(
      color: Colors.white60,
    child: ListTile(
    leading: Icon(Icons.home),
    title: Text('Listing Agency'),
    subtitle: Text('Courtney Henrey'),
    trailing: Icon(Icons.phone),
    ),
    ),
    ),


                ],
                ),
              )
            ],
          )
          ),
        ),
      ),
    );
  }
}
class _PropertyDetailCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const _PropertyDetailCard({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(height: 8.0),
            Text(label),
          ],
        ),
      ),
    );
  }
}
