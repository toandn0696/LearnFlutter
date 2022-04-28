import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:practice_english/ui/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: GetBuilder<HomeController>(
        builder: (value) => AnnotatedRegion(
            value: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: _buildBody(),
            )),
      ),
    );
  }

  Widget _buildBody(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: const InputDecoration.collapsed(hintText: 'Input word'),
      ),
    );
  }

  void _handleSubmitted(String text){
    _textController.clear();
  }
}
