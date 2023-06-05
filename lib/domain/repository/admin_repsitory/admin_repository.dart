import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop_app_flutter/data/models/product_models/dress_model.dart';
import 'package:shop_app_flutter/data/models/product_models/laptop_model.dart';
import 'package:shop_app_flutter/data/models/product_models/maishy_tex_model.dart';
import 'package:shop_app_flutter/data/models/product_models/phone_model.dart';

class AdminRepository{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createDocument(PhoneModel phoneModel) async {
    final CollectionReference userCollections =
    _firestore.collection('phones');
    try {
      final phoneDoc = userCollections.doc(phoneModel.id);
      await phoneDoc.set(phoneModel.toJson());
      print('Document created successfully.');
    } catch (e) {
      print('Failed to create document. Error: $e');
    }
  }

  Future<void> createLaptop(LaptopModel laptopModel) async{
    final CollectionReference laptopCollections =
    _firestore.collection('laptops');
    try{
      final laptopDoc=laptopCollections.doc(laptopModel.id);
      await laptopDoc.set(laptopModel.toJson());
    }catch(e){
      print('Failed to create document. Error: $e');
    }
  }

  Future<void> createMaishiy(MaishiyTexModel maishiyTexModel)async{
    final CollectionReference maishiyCollections =
    _firestore.collection('maishiy_tex');

    try{
      final maishiyTex=maishiyCollections.doc(maishiyTexModel.id);
      await maishiyTex.set(maishiyTexModel.toJson());
    }catch(e){
      print('Failed to create document. Error: $e');
    }
  }

  Future<void> createDress(DressModel dressModel) async{
    final CollectionReference dressCollections =
    _firestore.collection('dress');

    try{
      final dress=dressCollections.doc(dressModel.id);
      await dress.set(dressModel.toJson());
    }catch(e){
      print('Failed to create document. Error: $e');
    }
  }
}