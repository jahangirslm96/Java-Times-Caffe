import 'package:flutter/material.dart';
import 'package:fundraiser/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  bool _isContainer1Selected = true;
  bool _isContainer2Selected = true;




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 20,),
                Text(
                  'Search Filter : ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30,),
                Text(
                  'Symbol Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30,),

                TextField(
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.viewCartContainer,
                            width: 1.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.viewCartContainer,
                            width: 1.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintStyle: TextStyle(color: Colors.grey[500])),
                ),

                SizedBox(height: 40,),


                ///TimeFrame
                Text(
                  'Timeframes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20,),

                ///TimeFrame Container
                Row(
                  children: [
                    Container(
                      height: 7.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'D1',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.5.w,),
                    Container(
                      height: 7.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'H4',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.5.w,),
                    Container(
                      height: 7.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'H1',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 40,),


                ///Status
                Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20,),

                ///Status Container
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {

                          //Toggle
                          /*_isContainer1Selected = !_isContainer1Selected ;*/


                          _isContainer1Selected = true;
                          _isContainer2Selected = false;

                        });
                      },
                      child: Container(
                        height: 7.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: _isContainer1Selected ? Colors.red : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Pending',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.5.w,),
                    GestureDetector(
                      onTap: (){
                        _isContainer2Selected = true;
                        _isContainer1Selected = false;
                      },
                      child: Container(
                        height: 7.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: _isContainer2Selected ? null : null,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red),
                        ),
                        child: Center(
                          child: Text(
                            'Active',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

                SizedBox(height: 4.h,),

                Center(
                  child: Container(
                    height: 7.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:Center(
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget redContainer() =>
      Container(
        height: 7.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Active',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  Widget borderLessContainer() =>
      Container(
        height: 7.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: _isContainer1Selected ? null : Colors.red,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red),
        ),
        child: Center(
          child: Text(
            'Active',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

}


