import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  final String image;
  final String name;
  final String brand;
  final String price;
  final String discription;
  const ProductScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.brand,
      required this.price,
      required this.discription});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double mheight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    //
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 241, 241, 237),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 241, 237),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
                  height: 400,
                  width: double.infinity,
                  child: Image.network(widget.image),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        widget.brand,
                        style: GoogleFonts.poppins(color: Colors.grey),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 216, 148, 52),
                          ),
                        ),
                        Text('(4.0)',
                            style: GoogleFonts.poppins(color: Colors.grey))
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('₹${widget.price}',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                Text(
                  'Description',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                Text(widget.discription,
                    style: GoogleFonts.poppins(color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: Text(
                            'Buy Now',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ))),
                )
              ],
            ),
          ),
        ));
  }
}
