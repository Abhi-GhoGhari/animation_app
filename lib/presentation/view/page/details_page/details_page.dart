import 'dart:ui';
import 'package:animation_app/headers.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:provider/provider.dart';

import '../../../../controller/valoratn_controller.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    ValorantController v = Provider.of<ValorantController>(context);

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: GlassContainer(
          child: Ink.image(
            image: const NetworkImage(
              "https://www.shutterstock.com/image-illustration/valorant-background-super-grafis-dark-260nw-2051284997.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Colors.red,
          ),
        ),
        // title: const Text(
        //   "Detail Page",
        //   style: TextStyle(color: Colors.white),
        // ),
      ),
      body: Container(
        // padding: const EdgeInsets.all(18),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiWssMNnW2a9kjHj2Gd0J4DcS3Xj7Lh1cL2A&s",
            ),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              // borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: GlassContainer(
                    height: size.height * 1,
                    width: double.infinity,
                    color: Colors.white30,
                    shadowColor: Colors.white,
                    shadowStrength: 4,
                    borderRadius: BorderRadius.circular(20),
                    blur: 10,

                    // margin: const EdgeInsets.all(60),
                    // alignment: const Alignment(0, 0.8),
                    // padding: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 300),
                          Text(
                            v.allData[1]["displayName"].toString(),
                            style: const TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            v.allData[1]["description"].toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -1.1),
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                builder: (contaxt, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 50 * (1 - value)),
                      child: child,
                    ),
                  );
                },
                child: Image(
                  image: NetworkImage(
                    v.allData[1]["fullPortraitV2"].toString(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
