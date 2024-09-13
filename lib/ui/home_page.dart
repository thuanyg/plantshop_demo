import 'package:flutter/material.dart';
import 'package:plant_shop_demo/ui/detail_page.dart';
import 'package:plant_shop_demo/utils/app_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFE),
      body: _buildHomeScreen(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/ic_navHome.png"),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/ic_navFav.png"),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/ic_navCart.png"),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/ic_navPersonal.png"),
          label: "Profile",
        ),
      ],
      currentIndex: 0,
      selectedItemColor: const Color(0xFF5F8B8A),
      showUnselectedLabels: true,
      unselectedItemColor: const Color(0xFF5F8B8A),
    );
  }

  Widget _buildHomeScreen() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: _buildTopHeader(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: _buildSearchHeader(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: _buildTabBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: _buildListView(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: _buildListView(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: _buildListView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Good morning 🥰",
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              "Thuan.HT",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/ic_cloud.png",
                  scale: 1.5,
                ),
                Text(" Friday Cloudy 22", style: AppStyle.subTitle),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.grey,
                  size: 18,
                ),
              ],
            )
          ],
        ),
        Image.asset("assets/images/ic_avatar.png"),
      ],
    );
  }

  Widget _buildSearchHeader() {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        children: [
          const SizedBox(width: 24),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Searching a plant?",
                style: AppStyle.cardTitle.copyWith(fontSize: 14),
                textAlign: TextAlign.start,
              ),
              Text(
                "Find your favorite plant here",
                style: AppStyle.subTitle.copyWith(fontSize: 14),
              ),
            ],
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                backgroundColor: Color(0xff004643),
                child: Icon(
                  Icons.search_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return DefaultTabController(
      length: 4,
      child: TabBar(
        dividerHeight: .2,
        indicatorColor: const Color(0xff004643),
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Tab(
            height: 60,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/ic_tab1.png",
                  height: 26,
                ),
                Text(
                  "For you",
                  style: AppStyle.subTitle.copyWith(
                    fontSize: 18,
                    color: const Color(0xff004643),
                  ),
                )
              ],
            ),
          ),
          Tab(
            height: 60,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/ic_tab2.png",
                  height: 26,
                ),
                Text(
                  "Indoor",
                  style: AppStyle.subTitle.copyWith(
                    fontSize: 18,
                    color: const Color(0xff004643),
                  ),
                )
              ],
            ),
          ),
          Tab(
            height: 60,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/ic_tab3.png",
                  height: 26,
                ),
                Text(
                  "Outdoor",
                  style: AppStyle.subTitle.copyWith(
                    fontSize: 18,
                    color: const Color(0xff004643),
                  ),
                )
              ],
            ),
          ),
          Tab(
            height: 60,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/ic_tab4.png",
                  height: 26,
                ),
                Text(
                  "Garden",
                  style: AppStyle.subTitle.copyWith(
                    fontSize: 18,
                    color: const Color(0xff004643),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView() {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DetailPage(),
                ),
              );
            },
            child: Container(
              height: 330,
              width: 200,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.grey, width: 0.2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 236,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE8EDEB),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/img_plant1.png",
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Text(
                      "Fiddle leaf fig plant",
                      style: AppStyle.cardTitle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Broadleaf evergreen",
                      style: AppStyle.subTitle,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 24,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: const Color(0xff014643), width: 1.5),
                            ),
                            child: const Text(
                              "Indoor",
                              style: TextStyle(
                                color: Color(0xff014643),
                              ),
                            ),
                          ),
                          Text(
                            "35\$",
                            style: AppStyle.cardPrice,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
