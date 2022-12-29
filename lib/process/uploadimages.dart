import 'dart:io';
import 'package:exampel3/Widgets/CustomButton.dart';
import 'package:exampel3/process/Procress1.dart';
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
                  InkWell(
                    //if user click this button, user can upload image from gallery
                    onTap: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: const[
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  InkWell(
                    //if user click this button. user can upload image from camera
                    onTap: () {
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
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    return Scaffold(
      body: ListView(

       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(
                 margin: const EdgeInsets.only(top: 10),
                 width: _width * 0.9,
                child: const Center(
                  child:  Text(
                     'Upload Documents',
                     style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.w500,
                         color: Colors.black),
                   ),
                ),

               ),
               Container(
                 margin: const EdgeInsets.only(top: 10),
                 width: _width * 0.9,
                 child: const Center(
                   child:  Text(
                     'Your are one step closer',
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.normal,
                         color: Colors.black),
                   ),
                 ),

               ),
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
               InkWell(
                 onTap: () {
                   myAlert();
                 },
                 child: Container(
                   height: 100,
                   width: 400,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                     border: Border.all(color: Colors.grey)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 30),
                     child: Column(
                       children:  [
                         Image.asset('assets/images/ic_add.png'),
                         const Center(child: Text('Upload Vaild Id',style: TextStyle(color: Colors.blue),))

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
               InkWell(
                 onTap: () {
                   myAlert();
                 },
                 child: Container(
                   height: 100,
                   width: 400,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: const BorderRadius.all(Radius.circular(10)),
                       border: Border.all(color: Colors.grey)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 30),
                     child: Column(
                       children:  [
                         Image.asset('assets/images/ic_add.png'),
                        const Center(child: Text('Upload Purchase and Sales Agreement',style: TextStyle(color: Colors.blue),))
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
               InkWell(
                 onTap: () {
                   myAlert();
                 },
                 child: Container(
                   height: 100,
                   width: 400,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                     border: Border.all(color: Colors.grey)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 30),
                     child: Column(
                       children:  [
                         Image.asset('assets/images/ic_add.png'),
                        const Center(child: Text('Upload Down Payment proof',style: TextStyle(color: Colors.blue),))
                       ],
                     ),
                   ),
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
               InkWell(
                 onTap: () {
                   myAlert();
                 },
                 child: Container(
                   height: 100,
                   width: 400,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                     border: Border.all(color: Colors.grey)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 30),
                     child: Column(
                       children: [
                         Image.asset('assets/images/ic_add.png'),
                         Center(child: Text('Upload Income documents',style: TextStyle(color: Colors.blue),))
                       ],
                     ),
                   ),
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
               InkWell(
                 onTap: () {
                   myAlert();
                 },
                 child: Container(
                   height: 100,
                   width: 400,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                     border: Border.all(color: Colors.grey)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 30),
                     child: Column(
                       children:  [
                         Image.asset('assets/images/ic_add.png'),
                         const Center(child: Text('upload Bank Statements',style: TextStyle(color: Colors.blue),))
                       ],
                     ),
                   ),
                 ),
               ),
               const SizedBox(
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
                   : const Text(
                 "No Image",
                 style: TextStyle(fontSize: 20),
               ),
               CustomButton('Continue', _width * 0.95, () {

                 Navigator.pushNamed(context, Process1Screen.routeName);
               }),
               Container(
                 width: _width * 0.95,
                 child: TextButton(
                     onPressed: () {
                       Navigator.pop(context);
                     },
                     child: const Text(
                       'Back',
                       style: TextStyle(
                           fontWeight: FontWeight.w400,
                           color: Colors.black,
                           fontSize: 16),
                     )),
               ),
             ],
           ),
         ),
       ],
      ),
    );
  }
}

