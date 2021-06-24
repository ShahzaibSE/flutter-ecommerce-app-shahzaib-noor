import 'package:flutter/material.dart';
// Ads Database.
import 'Ads.dart';


class ECommerce extends StatefulWidget {
  const ECommerce({ Key? key }) : super(key: key);

  @override
  _ECommerceState createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
  Widget generateFeaturedAds(int index){
    return Container(
            // width: MediaQuery.of(context).size.width,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                        child: Image(image: AssetImage(Ads.FeaturedAdsDB[index].imageUrl), 
                                    width: MediaQuery.of(context).size.width, 
                                    height: 250
                        )
                      ),
                    ]
                  ),
                  Container(
                    padding: const EdgeInsets.only(left:20,right:20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(Ads.FeaturedAdsDB[index].title, style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          )),
                        )
                      ]
                    )
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, 
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(left:20, top: 10, bottom: 10, right: 20),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Container(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: Text('5.0 (23 Reviews)', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ))
                              )
                            ],
                          ) 
                        ),
                    ]
                  )
                ]
              )
            )
          );
  }
  //
  Widget generateCategoryList(Icon icon ,String categoryName, String numberOfItems) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              // padding: const EdgeInsets.only(bottom: 25),
              child: icon
            ),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //
                  Container(
                    padding: const EdgeInsets.only(left:20,right:10),
                    child: Text(categoryName, style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  Container(
                    padding: const EdgeInsets.only(left:20,right:10),
                    child: Text(numberOfItems, style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      )
                    )
                  )
                ]
              )
            )
          ]
        )
        )
      )
    );
  }
  //
  Widget generateAllAds(int index){
    return Container(
       child: Card(
         child: Column(
           mainAxisSize: MainAxisSize.max,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
              Container(
                child: Stack(
                  children:[
                      Align(child:Image(image: AssetImage(Ads.allAdsDB[index].imageUrl), width: 150, 
                              height: 150),
                              alignment: Alignment.center,)
                    ]
                  )
              ),
              Container(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Text(Ads.allAdsDB[index].title, style: TextStyle(
                  fontSize: 15, 
                  fontWeight: FontWeight.bold
              ))),
              Expanded(
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, 
                      children: [ 
                        Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('5.0 (23 Reviews)', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                                ))
                              )
                            ],
                        ) 
                    ]
                  )
              )
           ]
         )
       )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('E-Comm App', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        )),
        actions: [
          GestureDetector(
            child: Container(
              child: 
                Icon(Icons.notifications),
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(

        child: Center(
          child: Container(child: 
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          child: Text('Items', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26
                            )
                          ), 
                          alignment: Alignment.topLeft,
                        )
                      ]
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, right: 20),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          child: InkWell(child: Text('More Items', style: TextStyle(
                              fontSize: 17,
                              color: Colors.purple
                                  )
                                )), 
                                alignment: Alignment.topRight,
                              )
                            ]
                          )
                        ),
                      ]
                    )
                  ),

                  Container(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:  Row(
                          children: <Widget>[
                            generateFeaturedAds(0),
                            generateFeaturedAds(1),
                            generateFeaturedAds(2),
                            generateFeaturedAds(3),
                            generateFeaturedAds(4),
                            generateFeaturedAds(5),
                          ]
                        ),
                      )
                  ),
                  //
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Text('More Categories', style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ))
                        )
                      )
                    ]
                  ),
                  //
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        generateCategoryList(Icon(Icons.local_drink, size: 30, color: Colors.purple), 
                                            'Clothes', '5 Items'),
                        generateCategoryList(Icon(Icons.bolt, size: 30, color: Colors.purple), 
                                            'Electronics', '5 Items'),
                        generateCategoryList(Icon(Icons.chair, size: 30, color: Colors.purple), 
                                            'Households', '5 Items'),
                        generateCategoryList(Icon(Icons.bolt, size: 30, color: Colors.purple), 
                                            'Appliances', '5 Items'),
                        generateCategoryList(Icon(Icons.double_arrow, size: 30, color: Colors.purple), 
                                            'Other', '15 Items'),
                      ]
                    )
                  ),

                  Container(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              child: Text('Popular Items', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                                )
                              ), 
                              alignment: Alignment.topLeft,
                            )
                          ]
                        )
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, right: 20),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              child: InkWell(child: Text('More Items', style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.purple
                                      )
                                    )), 
                                    alignment: Alignment.topRight,
                                  )
                                ]
                              )
                            ),
                          ]
                        )
                      ),
                      Container(
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: Ads.allAdsDB.length,
                                    itemBuilder: (BuildContext context, int index){
                                      return generateAllAds(index);
                                    })
                      )
                      
                  
              ]
            )
          )
        )
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.search, size: 40),
          onPressed: (){}
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(height: 100.0, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    Container(child: IconButton(icon: Icon(Icons.home, size: 40, color: Colors.grey), onPressed: () {})),
                    Container(child: IconButton(icon: Icon(Icons.favorite, size: 40, color: Colors.grey), 
                              onPressed: () {}), padding: const EdgeInsets.only(right: 20)),
                    Container(child: IconButton(icon: Icon(Icons.add_shopping_cart, 
                              size: 40, color: Colors.grey), onPressed: () {})
                              ,padding: const EdgeInsets.only(left: 20)),
                    Container(child: IconButton(icon: Icon(Icons.more_vert, size: 40, color: Colors.grey), onPressed: () {})),
                  ],
              ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}