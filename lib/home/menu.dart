import 'package:flutter/material.dart';

import '../widgets/colors.dart';
import '../widgets/size_config.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Our Menu',
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 3 * SizeConfig.textMultiplier,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: SizeConfig.heightMultiplier * 6),
              Row(
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 45,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: SizeConfig.heightMultiplier * 8,
                                backgroundImage:  const AssetImage('assets/images/ugali.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Fish Makange",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "5,000 TZS",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: isFavorite ?
                              const Icon(
                                Icons.favorite,
                                color: AppColors.secondaryColor,
                              ) :
                              const Icon(
                                Icons.favorite_border,
                                color: AppColors.secondaryColor,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(width: SizeConfig.widthMultiplier * 4),
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 45,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: SizeConfig.heightMultiplier * 8,
                                backgroundImage:  const AssetImage('assets/images/BananaStew.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Ndizi Matoke",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "3,000 TZS",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: isFavorite ?
                              const Icon(
                                Icons.favorite,
                                color: AppColors.secondaryColor,
                              ) :
                              const Icon(
                                Icons.favorite_border,
                                color: AppColors.secondaryColor,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 4),
              Row(
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 45,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: SizeConfig.heightMultiplier * 8,
                                backgroundImage:  const AssetImage('assets/images/BananaStew.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Ndizi Matoke",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "3,000 TZS",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: isFavorite ?
                              const Icon(
                                Icons.favorite,
                                color: AppColors.secondaryColor,
                              ) :
                              const Icon(
                                Icons.favorite_border,
                                color: AppColors.secondaryColor,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(width: SizeConfig.widthMultiplier * 4),
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 45,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: SizeConfig.heightMultiplier * 8,
                                backgroundImage:  const AssetImage('assets/images/biriani_ya_kuku.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Biriani Ng'ombe",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "3,500 TZS",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: isFavorite ?
                              const Icon(
                                Icons.favorite,
                                color: AppColors.secondaryColor,
                              ) :
                              const Icon(
                                Icons.favorite_border,
                                color: AppColors.secondaryColor,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 4),
              Row(
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 45,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: SizeConfig.heightMultiplier * 8,
                                backgroundImage:  const AssetImage('assets/images/biriani_ya_kuku.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Biriani Ng'ombe",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "3,500 TZS",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: isFavorite ?
                              const Icon(
                                Icons.favorite,
                                color: AppColors.secondaryColor,
                              ) :
                              const Icon(
                                Icons.favorite_border,
                                color: AppColors.secondaryColor,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(width: SizeConfig.widthMultiplier * 4),
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 45,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: SizeConfig.heightMultiplier * 8,
                                backgroundImage:  const AssetImage('assets/images/ugali.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Fish Makange",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "5,000 TZS",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: isFavorite ?
                              const Icon(
                                Icons.favorite,
                                color: AppColors.secondaryColor,
                              ) :
                              const Icon(
                                Icons.favorite_border,
                                color: AppColors.secondaryColor,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
