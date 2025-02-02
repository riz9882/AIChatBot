import 'package:aichatbot/Core/Helper/CustomImages/customImages.dart';
import 'package:aichatbot/Core/Theme/AppColors/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('DeepLearn'),),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.zero,
          decoration:BoxDecoration(
             //   image: DecorationImage(image:CustomImages.whatsappBackground,fit: BoxFit.cover)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Column(
                children: [
                  TypeWriter.text(
                    "Welcome to DeepLearn v1.0.0 Powered by Gemini",
                    maxLines:2,
                    maintainSize: false,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                    duration: const Duration(milliseconds: 100),
                  ),
                  TypeWriter.text(
                    "Depth that never discovered",
                    maxLines:2,
                    maintainSize: false,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w600,
                    ),
                    duration: const Duration(milliseconds: 150),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(AppColors.black),
                        maximumSize:  MaterialStateProperty.all(Size(150, 50)),
                      ),
                      child: Row(
                        children: [
                          Text('Try DeepLearn',style: TextStyle(color:AppColors.white),),
                        ],
                      ))
                ],
              ),
        
              Padding(
                padding:EdgeInsets.symmetric(horizontal:10),
                child: Column(
                  children: [
                    Text('Reach Us ',style: TextStyle(fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      GestureDetector(
                        onTap:(){},
                        child: CircleAvatar(
                          backgroundImage:CustomImages.gmailLogo,
                          radius:20,
                        ),
                      ),
                      //  SizedBox(width:10,),

                      ],
                    ),
                  ],
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}
