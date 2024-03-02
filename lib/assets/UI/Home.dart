import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon_app/assets/UI/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> status = ["Pending", "Completed", "Assigned", "Processing"];
  final List<String> bookId = ["#harsh", "#XXXhsj", "#XXXXX", "#XXXXX"];
  final List<String> names = ["ABC", "MNO", "PQR", "XYZ"];
  final List<String> items = ["Makeup and skin care", "Makeup and hairstyle", "Haircut", "Shaving"];
  final List<String> time = ["Today, 11:00 am", "Today, 01:30 pm", "Today, 04:00 pm", "Today, 06:30 pm"];
  final List<String> images = [
    "https://cdn-icons-png.freepik.com/512/146/146025.png",
    "https://cdn2.vectorstock.com/i/1000x1000/98/11/girl-icon-flat-single-avatarpeaople-from-vector-14449811.jpg",
    "https://cdn-icons-png.freepik.com/512/3667/3667215.png",
    "https://i.pinimg.com/564x/1a/5c/27/1a5c272b9fbd51bf655c44e1c5c2fb7f.jpg",
  ];

  int _selectedIndex = 0;


  @override
  void initState() {
    super.initState();
    initialize();
  }

  Future<void> initialize() async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: const Color(0xFFFF6B44),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(
              color: Color(0xFF40393A),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFFF6B44),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Color(0xFF40393A),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
              padding: const EdgeInsets.all(1.0),
              height: 42.0,
              width: 55.0,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  "https://www.shutterstock.com/image-vector/face-expression-beautiful-blonde-woman-260nw-1686838690.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(left: 14.0, right: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                const Text(
                  "Welcome, Eleanor",
                  style: TextStyle(
                    color: Color(0xFF40393A),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 4,),
                const Text(
                  "Let's do some self care 💅🏻",
                  style: TextStyle(
                    color: Color(0xFFA7A2A3),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 30,),
                SearchBar(
                  side: MaterialStateProperty.all(
                    const BorderSide(color: Color(0xFFFFEDE9),
                    ),
                  ),
                  leading: const Icon(
                      Icons.search_rounded,
                    color: Color(0xFFDEDEDE),
                  ),
                  hintText: "Search",
                  hintStyle: MaterialStateProperty.all(
                    const TextStyle(
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: status.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if(_selectedIndex == index){
                                  _selectedIndex = index;
                                }else{
                                  _selectedIndex = index;
                                }
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: index == _selectedIndex ? const Color(0xFFFF6B44) : const Color(0xFFFFFFFF),
                              ),
                              child: Center(
                                child: Text(
                                  status[index],
                                  style: TextStyle(
                                    color: index == _selectedIndex ? const Color(0xFFFFFFFF) : const Color(0xFF40393A),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15,),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Today's Appointments",
                  style: TextStyle(
                    color: Color(0xFF40393A),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 19),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Details(),
                                ),
                              );
                            },
                            child: Container(
                              //width: double.infinity,
                              height: 120,
                              margin: const EdgeInsets.symmetric(vertical: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: const Color(0xFFFF6B44),
                                  width: 0.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      //height: ,
                                      width: 100,
                                      margin: const EdgeInsets.only(bottom: 10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: const Color(0xFFFFEDE9),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image.network(
                                          images[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          bookId[index],
                                          style: const TextStyle(
                                            color: Color(0xFF40393A),
                                          ),
                                        ),
                                        const SizedBox(height: 3,),
                                        Text(
                                          names[index],
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF40393A),
                                          ),
                                        ),
                                        const SizedBox(height: 3,),
                                        Text(
                                          items[index],
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF40393A),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            IconButton(
                                              onPressed: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const Details(),
                                                  ),
                                                );
                                              },
                                              icon: const Icon(
                                                Icons.calendar_today_outlined,
                                              ),
                                              iconSize: 14,
                                            ),
                                            const SizedBox(width: 5,),
                                            Text(
                                              time[index],
                                              style: const TextStyle(
                                                color: Color(0xFFA7A2A3),
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xFFFF6B44),
          selectedFontSize: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                //color: Color(0xFFA7A2A3),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xFFA7A2A3),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFFA7A2A3),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Color(0xFFA7A2A3),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }

}