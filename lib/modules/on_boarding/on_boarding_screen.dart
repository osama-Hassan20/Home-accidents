import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../shared/styles/colors.dart';
import '../../shared/components/components.dart';
import '../../shared/network/local/cache_helper.dart';
import '../login/login_screen.dart';

class BoardingModel{
  late final String image;
  late final String title;
  late final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}
class OnBoardingScreen extends StatefulWidget
{

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();
  
  List<BoardingModel> boarding =[
    BoardingModel(
        image: 'assets/images/on_boarding_1-removebg-preview.png',
        title: 'الحروق ',
        body: ' تعرض الجلد إلى الحرق بالنار أو ملامسة الأسطح الحارقة، أو المواد الكيميائية يسبب تلف في الأنسجة ، يلزمها تقديم الإسعافات الأولية بشكل سريع '
    ),
    BoardingModel(
        image: 'assets/images/on_boarding_2-removebg-preview.png',
        title: 'الاختناق',
        body: ' الأطفال الصغار كثيراً ما يختنقون بأجسام صغيرة يبتلعونها وتسبب لهم مشاكل بالغة لذا يجب تقديم الإسعافات الأولية بأسرع ما يمكن'
    ),
    BoardingModel(
        image: 'assets/images/on_boarding_3-removebg-preview (1).png',
        title: 'سقوط الاطفال',
        body: 'يتعرض الأطفال كثيراً لحوادث السقوط بسبب صغر السن ، لذا يجب على الآباء الإنتباه جيداً عند تعرض الطفل للسقوط على الأرض وخاصة عندما يسقط على رأسه.'
    ),

  ];
  bool isLast = false;

  void submit(){
    CacheHelper.saveData(
        key: 'onBoarding',
        value: true
    ).then((value)
    {
      if(value!){

        navigateAndFinish(context, LoginScreen());


      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            defaultTextButton(
                function:submit,
                text: 'skip')

          ],
        ),
        body: Padding(

          padding: const EdgeInsets.all(30) ,
          child: Column(

            children: [
              Expanded(
                child: PageView.builder(

                  physics: BouncingScrollPhysics(),
                  controller:  boardController ,
                  onPageChanged: (int index){
                    if(index == boarding.length-1)
                    {
                      setState(() {
                        isLast = true;
                      });
                    }else{
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  itemBuilder: (context , index) => buildBoardingItem(boarding[index]),
                  itemCount:boarding.length ,
                ),
              ),

              Row(
                children: [
                  SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect: ExpandingDotsEffect(
                        activeDotColor: defaultColor,
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        expansionFactor: 3,
                        dotWidth: size.width *0.05,
                        spacing: 6

                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: ()
                    {
                      if(isLast){
                        submit();
                        //  navigateAndFinish(context, ShopLoginScreen());;
                      }else{
                        boardController.nextPage(
                            duration: Duration(
                                milliseconds: 750
                            ),
                            curve: Curves.decelerate);
                      }

                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }

  Widget buildBoardingItem(BoardingModel model) =>
      Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children:  [

      Expanded(
        child: Image(
          image: AssetImage('${model.image}'),
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        '${model.title}',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        '${model.body}',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey[600]
        ),
      ),
    ],
  );
}
