import 'package:coffeeapp/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                'Find the best\ncoffee for you',
                style: GoogleFonts.lato(fontSize: 35),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Find Your Coffee..',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white24,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Text(
                      'Cappuccino',
                      style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Espresso',
                      style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Colors.white38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Latte',
                      style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Colors.white38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Flat white',
                      style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Colors.white38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 280,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CardWidget(),
                    CardWidget(),
                    CardWidget(),
                    CardWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
