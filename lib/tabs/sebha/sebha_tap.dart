import 'package:flutter/material.dart';
import 'package:islamic_app/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';
 
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({Key? key}) : super(key: key);

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;
  List<String> doaa = [
    'الله أكبر',
    'سبحان الله',
  ];
  double angle=0;
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding:const  EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    Provider.of<SettingsProvider>(context).headSebha,
                    height: 100,
                  )),
            ),
            GestureDetector(
              onTap: (){
                counterMethod();
              },
              child: Padding(
                padding: EdgeInsets.only(top: 80),
                child: Align(
                    alignment: Alignment.center,
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                          '${Provider.of<SettingsProvider>(context).sebhaName}'),
                    )),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          AppLocalizations.of(context)!.counter,
          
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding:const  EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          decoration: BoxDecoration(
              color:const  Color.fromRGBO(183, 147, 95, 1).withOpacity(0.57),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            '$counter',
            style:const  TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
       const  SizedBox(
          height: 20,
        ),
        Container(
          padding:const  EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
              color:const  Color.fromRGBO(183, 147, 95, 1),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            doaa[index],
            style:const  TextStyle(
                fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        )
      ],
    );
  }
  counterMethod(){
    angle+=10;
    print('bakri aweja');
    if(counter==33){
      counter=0;
      if(index<doaa.length-1){
        index++;
      }
      else{
        index=0;
      }
    }
    else{
      counter++;
    }
    
    setState(() {
      
    });
  }
}
