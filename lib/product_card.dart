import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'product.dart';




class ProductCard extends StatefulWidget {
  Product product;

  ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  Icon x=  const Icon(Icons.favorite_border_outlined);
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){},
        child: Card(
          color: Colors.white54,
          elevation: 4,
          shadowColor: Colors.brown,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme
                  .of(context)
                  .colorScheme
                  .outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: SizedBox(
            width: 190,
            height: 400,
            child: Padding(padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            x= const Icon(Icons.favorite);

                          });
                        },
                        icon:x,
                        iconSize: 30,),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                        height: 160,
                        width: 200,

                        child: Image.asset(widget.product.imageURL)
                    ),
                  ),
                  const SizedBox(height: 5),
                   Text(widget.product.name, style: const TextStyle(fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                  const SizedBox(height: 10,),
                  Text("\$${widget.product.price}", style: const TextStyle(fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                  Expanded(
                    child: RatingBar.builder(
                      ignoreGestures: false,
                      initialRating: 1,
                      glowColor: Colors.transparent,
                      wrapAlignment: WrapAlignment.start,
                      minRating: 1,
                      maxRating: 4,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 4,
                      itemPadding: const EdgeInsets.all(0),
                      itemBuilder: (context, _) =>
                      const Icon(Icons.star_rate, color: Colors.amber,size:1 ,),
                      onRatingUpdate: (rating) {
                        if (kDebugMode) {
                          print(rating);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart),
                        iconSize: 30,
                        color: Colors.black87,),
                    ],
                  )

                ],

              ),


            ),

          ),

        ),
      );
  }
}