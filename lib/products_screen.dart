import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  " Find Your \n Favourite food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                IconButton(
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {},
                  icon: Icon(Icons.notification_add_sharp),
                ),
              ],
            ),
            SizedBox(height: 16), // Add some spacing between Row and SearchView
            // Add your SearchView widget here
            SearchView(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Soup"),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.cancel_outlined),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Text(
                  "Popular Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            // Wrap the Container with SingleChildScrollView
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: 500,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset("assets/images/menu.png"),
              ),
            ),

            SingleChildScrollView(
              child: Container(
                height: 60, // Set a fixed height for the bottom navigation bar
                child: Scaffold(
                  bottomNavigationBar: GNav(
                    backgroundColor: Colors.grey.shade500,
                    color: Colors.white,
                    activeColor: Colors.white,
                    tabBackgroundColor: Colors.grey.shade800,
                    gap: 15,
                    padding: EdgeInsets.all(16),
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: "Home",
                      ),
                      GButton(
                        icon: Icons.person,
                        text: "Person",
                      ),
                      GButton(
                        icon: Icons.shopping_basket_sharp,
                        text: "Basket",
                      ),
                      GButton(
                        icon: Icons.message,
                        text: "message",
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Sample SearchView widget
class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
