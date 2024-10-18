import 'package:animation_app/controller/valoratn_controller.dart';
import 'package:animation_app/headers.dart';
import 'package:animation_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ValorantController v = Provider.of<ValorantController>(context);

    final pages = [
      // SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: v.allData
      //         .map(
      //           (e) => Container(
      //             color: Colors.white,
      //             child: Center(
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Image(
      //                     image: e["fullPortraitV2"] != null &&
      //                             e["fullPortraitV2"].toString().isNotEmpty
      //                         ? NetworkImage(e["fullPortraitV2"].toString())
      //                         : const NetworkImage(
      //                             "https://media.istockphoto.com/id/1320496766/vector/no-wifi-area-sing-isolate-on-white-background-vector-illustration.jpg?s=612x612&w=0&k=20&c=DtWj62XGCHgKdp5i0akfxnbI4K8w0PsBKaef-7xt88s=",
      //                           ),
      //                   ),
      //                   const SizedBox(height: 50),
      //                   const Text(
      //                     "Select a character!",
      //                     style: TextStyle(
      //                       // fontWeight: FontWeight.bold,
      //                       fontSize: 25,
      //                       color: Colors.grey,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         )
      //         .toList(),
      //   ),
      // ),

      Container(
        // color: Colors.white,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/vbg1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.instance.detailspage,
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[0]["fullPortraitV2"].toString(),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Select a character!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        // color: Colors.blue,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/vbg2.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.instance.detailspage,
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[1]["fullPortrait"].toString(),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Select a character!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        // color: Colors.white,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/vbg1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.instance.detailspage,
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[2]["fullPortraitV2"].toString(),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Select a character!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        // color: Colors.blue,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/vbg2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.instance.detailspage,
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[3]["fullPortraitV2"].toString(),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Select a character!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        // color: Colors.white,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/vbg1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.instance.detailspage,
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[4]["fullPortraitV2"].toString(),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Select a character!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        // color: Colors.blue,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/vbg2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.instance.detailspage,
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[5]["fullPortraitV2"].toString(),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Select a character!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        // color: Colors.white,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/vbg1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.instance.detailspage,
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[6]["fullPortraitV2"].toString(),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Select a character!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        // color: Colors.blue,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/vbg2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.instance.detailspage,
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[7]["fullPortraitV2"].toString(),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Select a character!",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("HomePage"),
      // ),
      body: LiquidSwipe(
        enableLoop: true,
        fullTransitionValue: 300,
        enableSideReveal: true,
        pages: pages,
        slideIconWidget: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
          size: 30,
        ),
        positionSlideIcon: 0.5,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}

// Center(
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Draggable(
//             feedback: Container(
//               height: 150,
//               width: 150,
//               color: Colors.blue,
//             ),
//             child: Container(
//               height: 150,
//               width: 150,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     ],
//   ),
// ),
