import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}
class _AnasayfaState extends State<Anasayfa> {
  @override
  late ImagePicker imagePicker;
  File? _image;

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future _imgFromCamera() async {
    XFile? pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    _image = File(pickedFile!.path);
    setState(() {
      _image;

    });
  }

  Future _imgFromGallery() async {
    XFile? pickedFile =
    await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/back_ground2.png'), fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("İmage Capture",style: TextStyle(fontSize: 32),)),
            backgroundColor: Colors.transparent,
          ),
          body:  SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Stack(children: <Widget>[
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.blueGrey
                        ),
                        onPressed: _imgFromGallery,
                        onLongPress: _imgFromCamera,
                        child: Container(
                          margin: const EdgeInsets.only(top:5),
                          child: _image != null
                              ? Image.file(
                            _image!,
                            width:200 ,
                            height: 300,
                            fit: BoxFit.fill,
                            ) : Container(
                                  width: 200,
                                  height: 300,
                                child: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                  size: 100,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      );
  }
}
