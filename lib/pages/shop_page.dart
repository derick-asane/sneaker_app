import 'package:flutter/material.dart';
import 'package:eyeme/models/shoe.dart';
import 'package:eyeme/pages/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //searchBar
          Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "search",
                style: TextStyle(color: Colors.grey)
                ,
              ),

              Icon(
                  Icons.search,
                  color: Colors.grey,
              ),
            ],
          ),

        ),

        //message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child:  Text(
            "everyone flies.. some fly longer than others",
            style: TextStyle(
               color: Colors.grey,
            ),
          ),
        ),
        //hot picks
       const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "hot picks 🔥",
                style: TextStyle(
                  fontWeight:  FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "see all",
                style: TextStyle(
                  fontWeight:  FontWeight.bold,
                  color: Colors.blue
                ),
              )
            ]
          ),
        ),
       const SizedBox(height: 10),
        Expanded(
            child: ListView.builder(
              itemBuilder: (context,index){
                //create show
                Shoe shoe = Shoe(name: 'Air Jordan', price: '240', imagePath: 'assets/images/nike-1', description: 'cool shoe');
                return ShoeTile(shoe: shoe);
              },
            ),
        ),
      ],
    );
  }
}
