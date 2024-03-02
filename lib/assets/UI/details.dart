import 'package:flutter/material.dart';
import 'package:salon_app/assets/UI/payment_screen.dart';

import 'artist_sheet.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  bool isVisible = true;
  bool isArtistPay = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Appointment Details",
            style: TextStyle(
              color: Color(0xFF40393A),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: const Color(0xFFFF6B44),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF40393A),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 165,
                  width: double.infinity,
                  child: Card(
                    elevation: 5.0,
                    color: const Color(0xFFFFEDE9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "User Details",
                              style: TextStyle(
                                color: Color(0xFF40393A),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        //const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xFFFFFFFF),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  "https://i.pinimg.com/564x/1a/5c/27/1a5c272b9fbd51bf655c44e1c5c2fb7f.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            //const SizedBox(width: 10,),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //SizedBox(height: 15,),
                                Text(
                                  "Name: Example",
                                  style: TextStyle(
                                    color: Color(0xFF40393A),
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Mob: +91 XXXXXXXXXX",
                                  style: TextStyle(
                                    color: Color(0xFF40393A),
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Email: example@gmail.com",
                                  style: TextStyle(
                                    color: Color(0xFF40393A),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 190,
                  width: double.infinity,
                  child: Card(
                    elevation: 5.0,
                    color: const Color(0xFFFFEDE9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Services",
                              style: TextStyle(
                                color: Color(0xFF40393A),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      "https://images.ctfassets.net/7tfi3razjgvb/5u2QoVmLiUBWbnZxTUBvin/d095468c45c3d79f23aceca61fd36bc0/facial_hair_banner_image_sp03_2x.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "ServiceA",
                                  style: TextStyle(
                                    color: Color(0xFF40393A),
                                    fontSize: 17.5,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 0.5,
                              indent: 10.0,
                              endIndent: 10.0,
                              color: Color(0xFFA7A2A3),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      "https://i.pinimg.com/736x/09/25/9d/09259d4ab3cbf58d8d09312d4c1816b8.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "ServiceB",
                                  style: TextStyle(
                                    color: Color(0xFF40393A),
                                    fontSize: 17.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Card(
                    elevation: 5.0,
                    color: const Color(0xFFFFEDE9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Booking Details",
                              style: TextStyle(
                                color: Color(0xFF40393A),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25,),
                            Text(
                              "    BookingID: #XXXXX",
                              style: TextStyle(
                                color: Color(0xFF40393A),
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "    Booking Date: XX/XX/XXXX",
                              style: TextStyle(
                                color: Color(0xFF40393A),
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5,),

                            Text.rich(
                              TextSpan(
                                text: "    Booking Status: ",
                                style: TextStyle(
                                  color: Color(0xFF40393A),
                                  fontSize: 15,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "In Process...",
                                    style: TextStyle(
                                      backgroundColor: Colors.yellowAccent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Visibility(
                  visible: isVisible,
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  backgroundColor: const Color(0xFFFFEDE9),
                                  title: const Text("Are you sure?"),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(ctx);
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFF6B44),
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        padding: const EdgeInsets.all(14),
                                        child: const Text("Yes", style: TextStyle(color: Color(0xFF40393A)),),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Card(
                              elevation: 10,
                              color: Colors.red.shade100,
                              shadowColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: (){
                                      showDialog(
                                        context: context,
                                        builder: (ctx) => AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20.0),
                                          ),
                                          backgroundColor: const Color(0xFFFFEDE9),
                                          title: const Text("Are you sure?"),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(ctx);
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFFFF6B44),
                                                  borderRadius: BorderRadius.circular(15.0),
                                                ),
                                                padding: const EdgeInsets.all(14),
                                                child: const Text("Yes", style: TextStyle(color: Color(0xFF40393A), fontSize: 15),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      color: Colors.red,
                                    ),
                                  ),
                                  const Text(
                                    "Reject",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                            ),
                          ),
                          //const SizedBox(width: 20,),
                          GestureDetector(
                            onTap: () {
                              _displayArtist(context);
                            },
                            child: Card(
                              elevation: 10,
                              color: Colors.green.shade100,
                              shadowColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      _displayArtist(context);
                                    },
                                    icon: const Icon(
                                      Icons.check_rounded,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const Text(
                                    "Accept",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: isArtistPay,
                  child: SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Card(
                      elevation: 10.0,
                      color: const Color(0xFFFFEDE9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Assigned Artist",
                                style: TextStyle(
                                  color: Color(0xFF40393A),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          //const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 85,
                                width: 85,
                                margin: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0xFFFFFFFF),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://t4.ftcdn.net/jpg/03/28/11/35/360_F_328113542_31B2IVU37qZ09cXXA6iMSXs62Optrwok.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              //const SizedBox(width: 10,),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //SizedBox(height: 15,),
                                  Text(
                                    "Name: ArtistX",
                                    style: TextStyle(
                                      color: Color(0xFF40393A),
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  _displayArtist(context);
                                },
                                icon: const Icon(Icons.edit,),
                                iconSize: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Visibility(
                  visible: isArtistPay,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Payment(),
                        ),
                      );
                    },
                    child: Card(
                      color: const Color(0xFFFF6B44),
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Proceed to Pay",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17.5,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  _displayArtist(BuildContext context) async{
    final List nextPageValues = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const Artists(),
      ),
    );
    setState(() {
      isVisible = nextPageValues[0];
      isArtistPay = nextPageValues[1];
    });
    if(!context.mounted) return;
  }
}