class OldProduct {
  String name;
  int productId;
  double price;
  String category;
  int leftProducts;
  String imagePath;
  String description;
  OldProduct(
      {
        this.name="no name",
        this.productId=0,
        this.price=0,
        this.category="no category",
        this.leftProducts=0,
        this.imagePath='assets/images/no_image.png',
        this.description="no description",
      }
      );
  factory OldProduct.fromJason(Map<String,dynamic>jason)
  {
    return OldProduct(
      name: jason['product_name'],
      productId: jason['product_ID'],
      price: jason['product_price'],
      category: jason['product_category'],
      leftProducts: jason['left_products'],
      imagePath: jason['product_image'],
      description: jason['product_description']
    );
  }
}