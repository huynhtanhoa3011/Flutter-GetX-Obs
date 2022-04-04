import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lession14_getx_obx_app/models/information_controller.dart';
import 'package:lession14_getx_obx_app/resources/strings.dart';
import 'package:lession14_getx_obx_app/resources/widgets/common_widgets.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  final InformationController informationController = Get.put(InformationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(INFORMATION),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            informationWidget(lable: NAME, content: informationController.name.value),Divider(),
            informationWidget(lable: ZALO, content: informationController.zalo.value),Divider(),
            informationWidget(lable: WEBSITE, content: informationController.website.value),Divider(),
            informationWidget(lable: DESCRIPTION, content: informationController.description.value),Divider(),
          ],
        ),
      ),
    );
  }
}
