class DressModel{
  String? id;
  String? dressName;
  String? price;
  bool? isLike;

  DressModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        dressName = data['dressName'],
        price = data['price'],
        isLike = data['isLike'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dressName': dressName,
      'price': price,
      'isLike': isLike,
    };
  }
}