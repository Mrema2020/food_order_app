import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/home/menuView.dart';
import 'package:food_order_app/widgets/colors.dart';

import '../widgets/size_config.dart';
import '../widgets/slide_up.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {

    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Container(
        color: Colors.white,
        height: 100 * SizeConfig.heightMultiplier,
        width: appWidth,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: appHeight * 0.02, right: appHeight * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Christopher',
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 4 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: SizeConfig.heightMultiplier * 5,
                          child: TextField(
                              decoration: InputDecoration(
                            labelText: "Enter a dish name",
                            prefixIcon:
                                Icon(Icons.search, size: appHeight * 0.03),
                            suffixIcon: Icon(Icons.mic, size: appHeight * 0.03),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 1,
                              ),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(width: SizeConfig.widthMultiplier * 2),
                      Container(
                        height: SizeConfig.heightMultiplier * 5,
                        width: SizeConfig.widthMultiplier * 15,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.cable, color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                  // SizedBox(
                  //   height: appHeight * 0.01,
                  // ),
                ],
              ),
            ),
            SizedBox(height: 1 * SizeConfig.heightMultiplier),
            Expanded(child: _mainBody())
          ],
        ),
      ),
    );
  }

  _mainBody() {
    return Container(
      color: Colors.blueGrey.shade50,
      width: 100 * SizeConfig.widthMultiplier,
      height: 100 * SizeConfig.heightMultiplier,
      child: DefaultTabController(
        length: 3,
        child: SlideUp(
          delay: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_topBar(), Expanded(child: _contentsView())],
          ),
        ),
      ),
    );
  }

  _topBar() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1 * SizeConfig.heightMultiplier),
          SizedBox(
            width: 100 * SizeConfig.widthMultiplier,
            height: 4 * SizeConfig.heightMultiplier,
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: AppColors.secondaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColors.secondaryColor, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Meals",
                        style: TextStyle(
                          fontSize: 2 * SizeConfig.textMultiplier,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColors.secondaryColor, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Sides",
                        style: TextStyle(
                          fontSize: 2 * SizeConfig.textMultiplier,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColors.secondaryColor, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Drinks",
                        style: TextStyle(
                          fontSize: 2 * SizeConfig.textMultiplier,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _contentsView() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: TabBarView(
        children: [
          _meals(),
          _sides(),
          _drinks()
        ],
      ),
    );
  }

  _meals() {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3, right: SizeConfig.widthMultiplier * 3),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Text(
              "Today's Special Offer",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (_) =>
                        const MenuDetailsScreen()));
              },
              child: Container(
                height: SizeConfig.heightMultiplier * 20,
                width: SizeConfig.widthMultiplier * 100,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      child: Image.asset(
                        'assets/images/biriani_ya_kuku.jpg',
                        width: SizeConfig.widthMultiplier * 40,
                        height: SizeConfig.heightMultiplier * 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: SizeConfig.heightMultiplier * 1),
                          Text(
                            "Special Biriani Kuku",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 2 * SizeConfig.textMultiplier,
                            ),
                          ),
                          Text(
                            "Now",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 2 * SizeConfig.textMultiplier,
                            ),
                          ),
                          Text(
                            "3,500 TZS",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 2 * SizeConfig.textMultiplier,
                            ),
                          ),
                          Text(
                            "(10% off)",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 2 * SizeConfig.textMultiplier,
                              fontStyle: FontStyle.italic
                            ),
                          ),
                          SizedBox(height: SizeConfig.heightMultiplier * 1),
                          Container(
                            width: SizeConfig.widthMultiplier * 30,
                            height: SizeConfig.heightMultiplier * 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColors.secondaryColor, width: 1.5)),
                            child: Center(
                              child: Text(
                                "Add to cart",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: 2 * SizeConfig.textMultiplier,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Now",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 2 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "See Full Menu",
                          style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontSize: 2 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.arrow_right_outlined, color: AppColors.secondaryColor)
                      ],
                    ))
              ],
            ),
            // SizedBox(height: SizeConfig.heightMultiplier * 1),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 40,
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
                    width: SizeConfig.widthMultiplier * 40,
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
                    width: SizeConfig.widthMultiplier * 40,
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
            ),
          ],
        ),
      ),
    );
  }

  _sides(){
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3, right: SizeConfig.widthMultiplier * 3),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Text(
              "Special Offer",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            Container(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.widthMultiplier * 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    child: Image.asset(
                      'assets/images/fruitsSalad.jpg',
                      width: SizeConfig.widthMultiplier * 40,
                      height: SizeConfig.heightMultiplier * 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: SizeConfig.heightMultiplier * 1),
                        Text(
                          "Fruits Salad",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                        Text(
                          "Now",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                        Text(
                          "2,000 TZS",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                        Text(
                          "(40% off)",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 2 * SizeConfig.textMultiplier,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                        SizedBox(height: SizeConfig.heightMultiplier * 1),
                        Container(
                          width: SizeConfig.widthMultiplier * 30,
                          height: SizeConfig.heightMultiplier * 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColors.secondaryColor, width: 1.5)),
                          child: Center(
                            child: Text(
                              "Add to cart",
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 2 * SizeConfig.textMultiplier,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Text(
              "Popular Sides",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 40,
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
                                backgroundImage:  const AssetImage('assets/images/chilli.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Chilli (Pilipili)",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "1,000 TZS",
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
                    width: SizeConfig.widthMultiplier * 40,
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
                                backgroundImage:  const AssetImage('assets/images/sweetPotatoes.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Sweet Potatoes",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "4,000 TZS",
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
                    width: SizeConfig.widthMultiplier * 40,
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
                                backgroundImage:  const AssetImage('assets/images/kachumbari.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Kachumbari",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "2,500 TZS",
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
                    width: SizeConfig.widthMultiplier * 40,
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
                                backgroundImage:  const AssetImage('assets/images/fruitsSalad.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Fruits Salad",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "2,000 TZS",
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
            ),
          ],
        ),
      ),
    );
  }

  _drinks(){
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3, right: SizeConfig.widthMultiplier * 3),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Text(
              "Today's Offer",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            Container(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.widthMultiplier * 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    child: Image.asset(
                      'assets/images/mangoJuice.png',
                      width: SizeConfig.widthMultiplier * 40,
                      height: SizeConfig.heightMultiplier * 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: SizeConfig.heightMultiplier * 1),
                        Text(
                          "Mango Juice",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                        Text(
                          "Now",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                        Text(
                          "2,000 TZS",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                        Text(
                          "(20% off)",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 2 * SizeConfig.textMultiplier,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                        SizedBox(height: SizeConfig.heightMultiplier * 1),
                        Container(
                          width: SizeConfig.widthMultiplier * 30,
                          height: SizeConfig.heightMultiplier * 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColors.secondaryColor, width: 1.5)),
                          child: Center(
                            child: Text(
                              "Add to cart",
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 2 * SizeConfig.textMultiplier,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Text(
              "Recommended Drinks",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 40,
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
                                backgroundImage:  const AssetImage('assets/images/melonJuice.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Watermelon Juice",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "2,000 TZS",
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
                    width: SizeConfig.widthMultiplier * 40,
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
                                backgroundImage:  const AssetImage('assets/images/pinappleJuice.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Pineapple Juice",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "2,500 TZS",
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
                    width: SizeConfig.widthMultiplier * 40,
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
                                backgroundImage:  const AssetImage('assets/images/orangeJuice.jpg'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Orange Juice",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "2,000 TZS",
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
                    width: SizeConfig.widthMultiplier * 40,
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
                                backgroundImage:  const AssetImage('assets/images/mangoJuice.png'),
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 1),
                              Text(
                                "Mango Juice",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Text(
                                "2,000 TZS",
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
            ),
          ],
        ),
      ),
    );
  }

}
