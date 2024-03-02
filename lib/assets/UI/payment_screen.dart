import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment extends StatefulWidget{
  const Payment({super.key});


  @override
  State createState() => _PaymentState();
}

class _PaymentState extends State<Payment>{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Payment",
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
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                color: const Color(0xFFFFEDE9),
                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    Center(
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          child: Image.network(
                            "https://cdn.ttgtmedia.com/rms/misc/qr_code_barcode.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Scan & Pay",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF40393A),
                      ),
                    ),
                    const SizedBox(height: 25,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Summary",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 22.5,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF40393A),
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 1, color: Color(0xFF40393A),),
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
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "₹50",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    // const Divider(
                    //   thickness: 0.5,
                    //   indent: 15.0,
                    //   endIndent: 15.0,
                    //   color: Color(0xFFA7A2A3),
                    // ),
                    const SizedBox(height: 5,),
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
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "₹100",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Divider(thickness: 1, color: Color(0xFF40393A),),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "SUBTOTAL",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "₹150",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    //const Divider(indent: 15, endIndent: 15, thickness: 0.5, color: Color(0xFFA7A2A3),),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "VAT",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "₹7.5",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    //const Divider(indent: 15, endIndent: 15, thickness: 0.5, color: Color(0xFFA7A2A3),),
                    const SizedBox(height: 5,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "GST",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "₹22.5",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Divider(thickness: 1, color: Color(0xFF40393A),),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "GRAND TOTAL",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "₹180",
                          style: TextStyle(
                            color: Color(0xFF40393A),
                            fontSize: 17.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 1, color: Color(0xFF40393A),),

                    Positioned(
                      left: 20,
                      right: 20,
                      bottom: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          CustomSnackBar.showSuccess('Payment Successful');
                          ScaffoldMessenger.of(context).showSnackBar(CustomSnackBar() as SnackBar,);
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(const Size.fromHeight(40.0)),
                          backgroundColor: MaterialStateProperty.all(const Color(0xFFFF6B44)),
                          foregroundColor: MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                          elevation: MaterialStateProperty.all(20),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          shadowColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: const Text(
                            "PAY",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                    ),
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

class CustomSnackBar {
  static void showSuccess(String message) {
    Get.snackbar(
      'SUCCESS',
      message,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
}