class Ads {
  String imageUrl;
  double width;
  double height;
  String title;
  //
  Ads(this.imageUrl, this.width, this.height, this.title);
  // 
  static final List<Ads> FeaturedAdsDB = [
      Ads('assets/iphone.jpeg', 100, 100, 'IPhone'),
      Ads('assets/macbook-pro-m1.jpg', 100, 100, 'Macbook Pro M1'),
      Ads('assets/macbook-air-m1.jpeg', 100, 100, 'Macbook Air M1'),
      Ads('assets/gaming-pc.jpeg', 100, 100, 'Gaming PC'),
      Ads('assets/laptop.jpeg', 100, 100, 'Laptop'),
      Ads('assets/macbook.jpeg', 100, 100, 'Macbook Pro'),
  ];

  static final List<Ads> allAdsDB = [
      Ads('assets/iphone.jpeg', 100, 100, 'IPhone'),
      Ads('assets/macbook-pro-m1.jpg', 100, 100, 'Macbook Pro M1'),
      Ads('assets/macbook-air-m1.jpeg', 100, 100, 'Macbook Air M1'),
      Ads('assets/gaming-pc.jpeg', 100, 100, 'Gaming PC'),
      Ads('assets/laptop.jpeg', 100, 100, 'Laptop'),
      Ads('assets/macbook.jpeg', 100, 100, 'Macbook Pro'),
      Ads('assets/iphone.jpeg', 100, 100, 'Laptop'),
      Ads('assets/macbook.jpeg', 100, 100, 'Macbook Pro'),
  ];
}