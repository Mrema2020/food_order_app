import 'package:flutter/material.dart';

import '../widgets/colors.dart';
import '../widgets/size_config.dart';

class MenuDetailsScreen extends StatefulWidget {
  const MenuDetailsScreen({super.key});

  @override
  State<MenuDetailsScreen> createState() => _MenuDetailsScreenState();
}

class _MenuDetailsScreenState extends State<MenuDetailsScreen> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: SizeConfig.widthMultiplier * 100,
            height: SizeConfig.heightMultiplier * 25,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/biriani_ya_kuku.jpg',
                )
              )
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      icon: isFavorite ?
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.secondaryColor,
                          size: 35,
                        ),
                      ) :
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Icon(
                          Icons.favorite_border,
                          color: AppColors.secondaryColor,
                          size: 35,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Biriani Kuku',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 4 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '3,500 TZS',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 4 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 2),
                Text(
                  'Description',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 3 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 1),
                SizedBox(
                    height: SizeConfig.heightMultiplier * 15,
                    width: SizeConfig.widthMultiplier * 100,
                child: Text(
                  'Biryani offers a delightful fusion of tender chicken, aromatic spices, '
                      'and long-grain rice, creating a savory and satisfying culinary experience. A beloved dish, '
                      'biryani is celebrated for its rich taste, vibrant colors, and the harmony of spices that tantalize the taste buds.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 2 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w500),
                ),
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
