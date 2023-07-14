import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';




class HeaderShimmer extends StatefulWidget {
  const HeaderShimmer({super.key});

  @override
  State<HeaderShimmer> createState() => _HeaderShimmerState();
}

class _HeaderShimmerState extends State<HeaderShimmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shimmer.fromColors(
         baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          enabled: true,
        child: Center(
          child:  Container(
            height: 50,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                         10,
                                      scrollDirection: Axis.horizontal,
                                      physics: AlwaysScrollableScrollPhysics(),
                                      itemBuilder: (BuildContext context, index) {
                                        return Center(
                                            child: Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.grey[200],
                                              ),
                                              margin: EdgeInsets.all(5),
                                              padding: EdgeInsets.all(10),
                                           
                                            ),
                                        
                                        );
                                      },
                                    ),
                                
        ),
          ),
      )
    
    );
  }
}