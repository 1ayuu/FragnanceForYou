import 'package:fragrance_for_you/constants/global_variables.dart';
import 'package:fragrance_for_you/features/home/screens/category_deals_screen.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryDealsScreen.routeName,
        arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: GlobalVariables.categoryImages.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 155,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () => navigateToCategoryPage(
                context,
                GlobalVariables.categoryImages[index]['title']!,
              ),
              // child: Column(
              //   children: [
              //     Container(
              //       padding: const EdgeInsets.symmetric(horizontal: 10),
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(50),
              //         child: Image.asset(
              //           GlobalVariables.categoryImages[index]['image']!,
              //           fit: BoxFit.cover,
              //           height: 60,
              //           width: 40,
              //         ),
              //       ),
              //     ),
              //     Text(
              //       GlobalVariables.categoryImages[index]['title']!,
              //       style: const TextStyle(
              //         fontSize: 12,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ],
              // ),

              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                      height: 40,
                      // decoration: BoxDecoration(
                      //   shape: BoxShape.circle,
                      //   color: Color(0xFFF7C3B5),
                      //   image: DecorationImage(
                      //     fit: BoxFit.cover,
                      //     alignment: Alignment.center,
                      //     image: AssetImage(
                      //       GlobalVariables.categoryImages[index]['image']!,
                      //     ),
                      //   ),
                      //),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          GlobalVariables.categoryImages[index]['image']!,
                          fit: BoxFit.cover,
                          color: Color.fromARGB(255, 43, 43, 43),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      GlobalVariables.categoryImages[index]['title']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color.fromARGB(255, 43, 43, 43),
                      ),
                    ),
                  ],
                ),

                decoration: BoxDecoration(
                  color: const Color(0xFFF5BFDC).withOpacity(0.35),
                  borderRadius: BorderRadius.circular(50),
                ),
                // ),
              ),
            ),
          );
        },
      ),
    );
  }
}
