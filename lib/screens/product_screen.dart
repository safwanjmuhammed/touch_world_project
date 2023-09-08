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
    // double mheight = MediaQuery.of(context).size.height;
    // double mWidth = MediaQuery.of(context).size.width;
    //
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.heart)),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            )
          ],
          title: Text(
            widget.name,
            style: GoogleFonts.poppins(),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                  ),
                  height: 400,
                  width: double.infinity,
                  child: Image.network(
                    widget.image,
                    fit: BoxFit.fill,
                  ),
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
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 234, 165, 68),
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
                      child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: Text(
                          'Buy Now',
                          style: GoogleFonts.poppins(color: Colors.white),
                        )),
                  )),
                )
              ],
            ),
          ),
        ));
  }
}
