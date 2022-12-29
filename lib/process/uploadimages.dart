import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// void main() => runApp(MaterialApp(
//   home: Home(),
//   debugShowCheckedModeBanner: false,
// ));

class ImageUpload extends StatefulWidget {
  static const routeName = "/ImageUpload";
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {

  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Image'),
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: const[
                    Text("Valid ID",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
              ElevatedButton(

                onPressed: () {
                  myAlert();
                },
                child: Container(
                  height: 100,
                    width: 400,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: const [
                          Icon(Icons.add_alarm_sharp,
                              size: 25,
                              color: Colors.white
                          ),
                          Center(child: Text('Upload Vaild Id'))

                        ],
                      ),
                    ),

                    //child: Center(child: Text('Upload Vaild Id'))
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                child: Row(
                  children: const[
                    Text("Purchase and Sales Agreement",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
              ElevatedButton(

                onPressed: () {
                  myAlert();
                },
                child: Container(
                  height: 100,
                  width: 400,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: const [
                        Icon(Icons.add_alarm_sharp,
                            size: 25,
                            color: Colors.white
                        ),
                        Center(child: Text('Upload Purchase and Sales Agreement'))

                      ],
                    ),
                  ),

                ),
              ),
              const SizedBox(height: 5,),
              Container(
                child: Row(
                  children: const[
                    Text("Down Payment proof",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
              ElevatedButton(

                onPressed: () {
                  myAlert();
                },
                child: Container(
                  height: 100,
                  width: 400,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: const [
                        Icon(Icons.add_alarm_sharp,
                            size: 25,
                            color: Colors.white
                        ),
                        Center(child: Text('Upload Down Payment proof'))

                      ],
                    ),
                  ),

                  //child: Center(child: Text('Upload Vaild Id'))
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                child: Row(
                  children: const[
                    Text("Income documents(pay stubs T4,NOA)",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
              ElevatedButton(

                onPressed: () {
                  myAlert();
                },
                child: Container(
                  height: 100,
                  width: 400,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: const [
                        Icon(Icons.add_alarm_sharp,
                            size: 25,
                            color: Colors.white
                        ),
                        Center(child: Text('Upload Income documents'))

                      ],
                    ),
                  ),

                  //child: Center(child: Text('Upload Vaild Id'))
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                child: Row(
                  children: const[
                    Text("Bank Statement)",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
              ElevatedButton(

                onPressed: () {
                  myAlert();
                },
                child: Container(
                  height: 100,
                  width: 400,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: const [
                        Icon(Icons.add_alarm_sharp,
                            size: 25,
                            color: Colors.white
                        ),
                        Center(child: Text('upload Bank Statements'))

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //if image not null show the image
              //if image null show text
              image != null
                  ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.file(
                    //to show image, you type like this.
                    File(image!.path),
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                  ),
                ),
              )
                  : Text(
                "No Image",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

