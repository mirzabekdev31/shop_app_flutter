import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_flutter/presentation/ui/admin_screen/add_products/add_laptop/widgets/add_button.dart';
import 'package:shop_app_flutter/presentation/ui/admin_screen/add_products/add_laptop/widgets/text_fields.dart';

class AddLaptopScreen extends StatelessWidget {

  AddLaptopScreen({Key? key}) : super(key: key);

  TextEditingController nameController=TextEditingController();
  TextEditingController priceController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextFields(controller: nameController, hintext: "Enter Laptop Name"),
            const SizedBox(height: 16,),
            TextFields(controller: priceController, hintext: "Enter Price"),
            const SizedBox(height: 24,),

            AddButton(function: (){})

          ],
        )
      ),
    );
  }
}
