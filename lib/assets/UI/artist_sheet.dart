import 'package:flutter/material.dart';

class Artists extends StatefulWidget{
  const Artists({super.key});

  @override
  State createState() => ArtistsState();
}

class ArtistsState extends State<Artists>{

  final List<String> artists = ["Artist1", "Artist2", "Artist3", "Artist4", "Artist5"];
  final List<String> specialisation = ["Makeup", "Skincare", "Hairstyle", "Haircut", "Beard"];
  final List<String> artistImages = [
    "https://cdn-icons-png.flaticon.com/512/3884/3884871.png",
    "https://cdn-icons-png.flaticon.com/512/4842/4842456.png",
    "https://t4.ftcdn.net/jpg/03/28/11/35/360_F_328113542_31B2IVU37qZ09cXXA6iMSXs62Optrwok.jpg",
    "https://cdn-icons-png.freepik.com/512/146/146031.png",
    "https://thumbs.dreamstime.com/b/flat-male-avatar-image-beard-hairstyle-businessman-profile-icon-vector-179285629.jpg",
  ];

  bool isVisible = true;
  bool isArtistPay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Choose Artist",
            style: TextStyle(
              color: Color(0xFF40393A),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF40393A),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFFF6B44),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const SizedBox(height: 30,),
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: artists.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                              isArtistPay = !isArtistPay;
                            });
                            Navigator.pop(ctx, [isVisible, isArtistPay]);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Details(artist: artists[index],),),
                            // );
                          },
                          child: Container(
                            //width: double.infinity,
                            height: 100,
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
                                    width: 80,
                                    margin: const EdgeInsets.only(bottom: 10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFFFEDE9),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        artistImages[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    //mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Name: ${artists[index]}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF40393A),
                                        ),
                                      ),
                                      Text(
                                        "Specialisation: ${specialisation[index]}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF40393A),
                                        ),
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
              ],
            ),
          ),
        ),
    );
  }
}