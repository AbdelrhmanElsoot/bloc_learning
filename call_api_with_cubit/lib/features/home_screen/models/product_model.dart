class ProductsModel {
  List<ProductModel>? productsModel;

  ProductsModel(this.productsModel);
  ProductsModel.fromJson(List json) {
    productsModel = <ProductModel>[];
    for (Map<String, dynamic> product in json) {
      productsModel!.add(ProductModel.fromJson(product));
    }
  }
}

class ProductModel {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  RatingModel? rate;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rate,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rate = RatingModel.fromJson(json['rating']);
  }
}

class RatingModel {
  num? rate;
  int? count;

  RatingModel(this.rate, this.count);
  RatingModel.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }
}
