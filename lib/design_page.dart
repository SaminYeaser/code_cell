import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DesignedPage extends StatefulWidget {
  const DesignedPage({Key? key}) : super(key: key);

  @override
  _DesignedPageState createState() => _DesignedPageState();
}

class _DesignedPageState extends State<DesignedPage> {
  double? _ratingValue;
  //asd
  List popularItem = [
    'assets/images/food5.jpg',
    'assets/images/food3.jpg',
    'assets/images/food1.jpg',
    'assets/images/food.jpg',
    'assets/images/food4.jpg',
    'assets/images/food2.jpg'
  ];
  List banner = [
    'assets/images/food3.jpg',
    'assets/images/food1.jpg',
    'assets/images/food.jpg',
    'assets/images/food5.jpg',
    'assets/images/food4.jpg',
    'assets/images/food2.jpg'
  ];
  List<Map> menu = [
    {'image': 'assets/images/food3.jpg', 'name': 'English Set Menu'},
    {'image': 'assets/images/food5.jpg', 'name': 'Portugal Set Menu'},
    {'image': 'assets/images/food1.jpg', 'name': 'Korea Set Menu'},
    {'image': 'assets/images/food4.jpg', 'name': 'Pakistani Set Menu'},
    {'image': 'assets/images/food2.jpg', 'name': 'Indian Set Menu'},
    {'image': 'assets/images/food.jpg', 'name': 'English Set Menu'}
  ];
  List category = [
    Column(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/food.jpg',
          ),
          radius: 30,
        ),
        Text('Bengali')
      ],
    ),
    Column(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/food1.jpg',
          ),
          radius: 30,
        ),
        Text('Indian')
      ],
    ),
    Column(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/food2.jpg',
          ),
          radius: 30,
        ),
        Text('First Food')
      ],
    ),
    Column(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/food3.jpg',
          ),
          radius: 30,
        ),
        Text('Chiness')
      ],
    ),
    Column(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/food4.jpg',
          ),
          radius: 30,
        ),
        Text('Chittagong')
      ],
    ),
    Column(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/food5.jpg',
          ),
          radius: 30,
        ),
        Text('USA')
      ],
    )
  ];
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Cart',
      style: optionStyle,
    ),
    Text(
      'Index 2: Favourite',
      style: optionStyle,
    ),
    Text(
      'Index 2: Menu',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          )
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(color: Color(0xFFFB6856)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.closed_caption_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        'Restaurant is close now,will be open at 9:00 am',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.emoji_food_beverage,
                                size: 36,
                                color: Colors.orange,
                              ),
                              Text(
                                'eFood',
                                style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.notifications,
                            color: Colors.black,
                            size: 24,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4F7FC),
                            borderRadius: BorderRadius.circular(6)),
                        child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: const TextStyle(fontSize: 12.0),
                                filled: true,
                                fillColor: const Color(0xFFF4F7FC),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black.withOpacity(.5),
                                  size: 30,
                                ),
                                suffixIcon: const Icon(
                                  Icons.line_style,
                                  color: Colors.black,
                                  size: 30,
                                ))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'All Categories',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: category[index],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Set Menu',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View All',
                          style: TextStyle(color: Colors.grey),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: menu.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image.asset(
                                menu[index]['image'],
                                height: 100,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(menu[index]['name'])),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: RatingBar(
                                      itemSize: 20,
                                      initialRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      ratingWidget: RatingWidget(
                                          full: const Icon(Icons.star,
                                              color: Colors.orange),
                                          half: const Icon(
                                            Icons.star_half,
                                            color: Colors.orange,
                                          ),
                                          empty: const Icon(
                                            Icons.star_outline,
                                            color: Colors.orange,
                                          )),
                                      onRatingUpdate: (value) {
                                        setState(() {
                                          _ratingValue = value;
                                        });
                                      }),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('50'),
                                    Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Banner',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: banner.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(banner[index])),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Popular Item',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: popularItem.length,
                  itemBuilder: (context, index){
                    return Card(
                      child: SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: Image.asset(popularItem[index], fit: BoxFit.cover,width: 100,height: 100,),
                        ),
                        SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            children: [
                              Text('Item Name'),
                              RatingBar(
                                  itemSize: 10,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(
                                      full: const Icon(Icons.star,
                                          color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                      _ratingValue = value;
                                    });
                                  }),
                              Spacer(),
                              Text('\$5.95')
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            children: [
                              Icon(Icons.favorite_border),
                              Spacer(),
                              Icon(Icons.add),
                            ],
                          ),
                        )
                      ],
                  ),
                ),
              ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
//sd
