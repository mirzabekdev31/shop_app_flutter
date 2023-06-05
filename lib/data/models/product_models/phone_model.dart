class PhoneModel{
  String? id;
  String? phoneName;
  String? price;
  String? imgUrl;
  bool? isLike;

  PhoneModel({this.id,required this.phoneName, required this.price,required this.isLike,required this.imgUrl});

  PhoneModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        phoneName = data['phoneName'],
        price = data['price'],
        isLike = data['isLike'],
        imgUrl=data['imgUrl'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phoneName': phoneName,
      'price': price,
      'isLike': isLike,
      'imgUrl':imgUrl
    };
  }
}