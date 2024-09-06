import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/build_tab_content.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Aspen',
                        style: GoogleFonts.montserrat(
                            fontSize: 32, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.location_solid,
                        color: Color(0xFF176FF2),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Aspen, USA",
                        style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color(0xFF606060),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                decoration: BoxDecoration(
                    color: const Color(0xFFF3F8FE),
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Find places to visit",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: const Color(0xFF176FF2),
              labelColor: const Color(0xFF176FF2),
              unselectedLabelColor: const Color(0xFFB8B8B8),
              labelStyle: GoogleFonts.robotoCondensed(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w400, fontSize: 16),
              tabs: const [
                Tab(text: 'Location'),
                Tab(text: 'Hotels'),
                Tab(text: 'Foods'),
                Tab(text: 'Adventure'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: TabBarView(controller: _tabController,
                    children: [
                      BuildTabContent(tab: 'location',),
                    ]))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: const Color(0xFF176FF2),
            currentIndex: 0,
            unselectedItemColor: Colors.black38,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ]),
      ),
    );
  }
}
