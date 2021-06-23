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
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image(image: AssetImage(Ads.FeaturedAdsDB[index].imageUrl), 
                                width: Ads.FeaturedAdsDB[index].width, 
                                height: Ads.FeaturedAdsDB[index].height)
                  ),

                  Container(
                    child: Text(Ads.FeaturedAdsDB[index].title, style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ))
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: GridView.count(
                            crossAxisCount: 5,
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          )
                        ),
                        Container(
                          child: Text('5.0 (23 Reviews)', style: TextStyle(
                            color: Colors.grey[400]
                          )
                          )
                        )
                      ]
                    ),
                  )
                ]
              )
            )
          );
  }
  //
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
      body: Container(

        child: Center(
          child: Container(child: 
          Column(
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
                    // margin: const EdgeInsets.all(20),
                    // padding: const EdgeInsets.all(10),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: ConstrainedBox(
                              constraints: BoxConstraints(
                              minWidth: MediaQuery.of(context).size.width,
                        ),
                        child: Row(
                          children: <Widget>[
                            const SizedBox(width: 100),
                            generateFeaturedAds(0),
                            generateFeaturedAds(1),
                            generateFeaturedAds(2),
                            generateFeaturedAds(3),
                            generateFeaturedAds(4),
                            generateFeaturedAds(5),
                          ]
                        ),
                      )
                    )
                  )

              ]
            )
          )
        )
      )
    );
  }
}