import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lession14_getx_obx_app/models/information_controller.dart';
import 'package:lession14_getx_obx_app/resources/strings.dart';
import 'package:lession14_getx_obx_app/resources/widgets/common_widgets.dart';
import 'information_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController nameController, zaloController, websiteController, descriptionController;
  final inforController = Get.put(InformationController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    zaloController = TextEditingController();
    websiteController = TextEditingController();
    descriptionController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(INFORMATION_INPUT),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              inputWidget(lable: NAME, hintText: NAME_INPUT, controller: nameController),
              inputWidget(lable: ZALO, hintText: ZALO_INPUT, controller: zaloController),
              inputWidget(lable: WEBSITE, hintText: WEBSITE_INPUT, controller: websiteController),
              inputWidget(lable: DESCRIPTION, hintText: DESCRIPTION_INPUT, controller: descriptionController),
              buttonWidget(
                lable: CONFIRM,
                colorButton: Colors.blue,
                colorText: Colors.white,
                onPress: () {
                  inforController.updateInfomation(
                    name: nameController.text.obs,
                    zalo: zaloController.text.obs,
                    website: websiteController.text.obs,
                    description: descriptionController.text.obs,
                  );
                  Get.to(InformationPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
