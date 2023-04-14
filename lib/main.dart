import 'package:flutter/material.dart';
import 'example_function.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Color D = Color(0xF2256B07);
  Color L = Color(0xE0A5DC90);
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
                height: 350,
              child:ExampleFunction(),
              ),
              SizedBox(height: 0), // Add blank space on top
              Container(
                height: 30,
                color: L, // Green background
                child: Center(
                  child: Text(
                    "FOR SALE",
                    style: TextStyle(
                      fontSize: 15,
                      color: D,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0), // Add spacing between text and buttons
              Container( margin: EdgeInsets.fromLTRB(10, 10, 10,10),
              child:Row(
                children: [
                  Expanded(
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
                    child: Card(
                      child:Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(height: 20), // Add spacing between text and buttons
              Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        leading: Icon(Icons.key),
                        tileColor: isExpanded ? Colors.blue : null, // conditionally set tileColor
                        selectedTileColor: Colors.blue,
                      );
                    },
                    body: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200, // set the background color to grey
                        borderRadius: BorderRadius.circular(8.0), // add some border radius to the corners
                        boxShadow: [ // add a shadow to create some separation from the rest of the page
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(8.0), // add some padding around the cards
                      child: Column(
                        children: [
                          SizedBox(height: 8.0), // add some space at the top of the column
                          Card(
                            child: ListTile(
                              title: Text('Key Fact 1'),
                              subtitle: Text('Subtitle 1'),
                            ),
                          ),
                          SizedBox(height: 8.0), // add some space between the cards
                          Card(
                            child: ListTile(
                              title: Text('Key Fact 2'),
                              subtitle: Text('Subtitle 2'),
                            ),
                          ),
                          SizedBox(height: 8.0), // add some space between the cards
                          Card(
                            child: ListTile(
                              title: Text('Key Fact 3'),
                              subtitle: Text('Subtitle 3'),
                            ),
                          ),
                          SizedBox(height: 8.0), // add some space at the bottom of the column
                        ],
                      ),
                    ),
                  ),
                  ExpansionPanelRadio(
                    value: 1,
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Property History'),
                        leading: Icon(Icons.history),
                      );
                    },
                    body: Container(
                      color: Colors.grey[200], // set the background color to gray
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Buy/Sell History for 2118 Thornridge Cir. Syracuse, Connecticut 35624",
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 2), // add some space between the title and the cards
                      Card(
                        margin: EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('List 08.05.2022'),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                        alignment: Alignment.topLeft,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
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
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Listed for \$1,549,586'),
                                  Text('MSI#: E5579076'),
                                ],
                              ),
                            ),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                      SizedBox(height: 2), // add some space between the cards
                          Card(
                            margin: EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('List 08.05.2022'),
                                      Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                            alignment: Alignment.topLeft,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(4),
                                                bottomRight: Radius.circular(4),
                                              ),
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
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Listed for \$1,549,586'),
                                      Text('MSI#: E5579076'),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 2),
                              ],
                            ),
                          ),
                          SizedBox(height: 10), // add some space between the cards
                          Card(
                            margin: EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('List 08.05.2022'),
                                      Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                            alignment: Alignment.topLeft,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(4),
                                                bottomRight: Radius.circular(4),
                                              ),
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
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Listed for \$1,549,586'),
                                      Text('MSI#: E5579076'),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ExpansionPanelRadio(
                    value: 2,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Demographics'),
                        leading: Icon(Icons.circle_outlined),
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
                        leading: Icon(Icons.edit_location),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0), // make the edges more circular
                ),
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
            title: Text('Listing Agency'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Courtney Henrey'),
                Text('Business Monitor International'),
              ],
            ),
            trailing: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.phone,
                color: Colors.grey,
              ),
            ),
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
