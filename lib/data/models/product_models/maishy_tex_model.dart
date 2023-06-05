class MaishiyTexModel{
  String? id;
  String? maishiyName;
  String? price;
  bool? isLike;

  MaishiyTexModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        maishiyName = data['maishiyName'],
        price = data['price'],
        isLike = data['isLike'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'maishiyName': maishiyName,
      'price': price,
      'isLike': isLike,
    };
  }
}