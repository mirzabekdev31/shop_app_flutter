class LaptopModel{
  String? id;
  String? laptopName;
  String? price;
  bool? isLike;

  LaptopModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        laptopName = data['laptopName'],
        price = data['price'],
        isLike = data['isLike'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'laptopName': laptopName,
      'price': price,
      'isLike': isLike,
    };
  }

}