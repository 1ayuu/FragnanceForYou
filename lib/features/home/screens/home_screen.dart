import 'package:fragrance_for_you/constants/global_variables.dart';
import 'package:fragrance_for_you/features/home/screens/topbar.dart';
import 'package:fragrance_for_you/features/home/widgets/deal_of_day.dart';
import 'package:fragrance_for_you/features/home/widgets/top_categories.dart';
import 'package:fragrance_for_you/features/search/screens/search_screen.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../../providers/user_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void navigateToSearchScreen(String query) {
    Navigator.pushNamed(context, SearchScreen.routeName, arguments: query);
  }

  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: GlobalVariables.selectednavBarColor,
            ),
          ),
          // title: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       'Hi, ${user.name}',
          //       style: const TextStyle(
          //         fontSize: 14,
          //         fontWeight: FontWeight.w300,
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 42,
          //         margin: const EdgeInsets.only(left: 15),
          //         child: Material(
          //           borderRadius: BorderRadius.circular(7),
          //           elevation: 1,
          //           child: TextFormField(
          //             onFieldSubmitted: navigateToSearchScreen,
          //             decoration: InputDecoration(
          //               prefixIcon: InkWell(
          //                 onTap: () {},
          //                 child: const Padding(
          //                   padding: EdgeInsets.only(
          //                     left: 6,
          //                   ),
          //                   child: Icon(
          //                     Icons.search,
          //                     color: Colors.black,
          //                     size: 23,
          //                   ),
          //                 ),
          //               ),
          //               filled: true,
          //               fillColor: Colors.white,
          //               contentPadding: const EdgeInsets.only(top: 10),
          //               border: const OutlineInputBorder(
          //                 borderRadius: BorderRadius.all(
          //                   Radius.circular(7),
          //                 ),
          //                 borderSide: BorderSide.none,
          //               ),
          //               enabledBorder: const OutlineInputBorder(
          //                 borderRadius: BorderRadius.all(
          //                   Radius.circular(7),
          //                 ),
          //                 borderSide: BorderSide(
          //                   color: Colors.black38,
          //                   width: 1,
          //                 ),
          //               ),
          //               hintText: 'Search the products',
          //               hintStyle: const TextStyle(
          //                 fontWeight: FontWeight.w500,
          //                 fontSize: 17,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     // Container(
          //     //   color: Colors.transparent,
          //     //   height: 42,
          //     //   margin: const EdgeInsets.symmetric(horizontal: 10),
          //     //   child: const Icon(Icons.mic, color: Colors.black, size: 25),
          //     // ),
          //   ],
          // ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: const [
            TopBar(),
            SizedBox(height: 15),
            TopCategories(),
            SizedBox(height: 15),
            //CarouselImage(),
            DealOfDay(),
          ],
        ),
      ),
    );
  }
}
