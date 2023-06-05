import 'package:flutter/material.dart';
import 'package:shop_app_flutter/data/models/product_models/phone_model.dart';
import 'package:shop_app_flutter/domain/repository/admin_repsitory/admin_repository.dart';
import 'package:shop_app_flutter/presentation/ui/admin_screen/add_products/add_phone/widgets/add_button.dart';
import 'package:shop_app_flutter/presentation/ui/admin_screen/add_products/add_phone/widgets/textFields.dart';


class AddPhoneScreen extends StatelessWidget {

  static const String routeName="addphonescreen";
  AddPhoneScreen({Key? key}) : super(key: key);
  TextEditingController nameController=TextEditingController();
  TextEditingController priceController=TextEditingController();
  AdminRepository adminRepository=AdminRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
      //  future: adminRepository.createDocument(PhoneModel(phoneName: nameController.text, price: priceController.text, isLike: false)),
        builder: (context, snapshot){
          return Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TexFields(controller: nameController, hintext: 'enter phone name',),
                const SizedBox(height: 16,),
                TexFields(controller: priceController, hintext: 'enter phone price',),
                const SizedBox(height: 16,),
                AddButton(function: (){
                  adminRepository.createDocument(PhoneModel(phoneName: nameController.text, price: priceController.text, isLike: false, imgUrl: ''));
                })
              ],
            ),
          );
        },
      ),
    );
  }
}