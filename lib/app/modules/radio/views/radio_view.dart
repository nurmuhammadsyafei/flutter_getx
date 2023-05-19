import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controllers/radio_controller.dart';
import '../../../data/element/myelement.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});
  @override
  // State<RadioView> createState() => RadioView();
  State<RadioView> createState() => _RadioView();
}

enum SingingCharacter {
  compo,
  rod,
  tube,
  grindinGrod,
  cuttinGrod,
  cuttinGroundbar,
  facingThreading,
  threadingMiniNL05,
  facingCenterLH01,
  facingCenterLH02,
  threadingMiniNL11,
  frinction,
  weldingRodHead
}

class _RadioView extends State<RadioView> {
  // const _RadioView({Key? key}) : super(key: key);
  // dynamic dateformat = '';
  // TextEditingController dateinput = TextEditingController();
  // DateTime dateinput = DateTime.now();
  TextEditingController dateinput = TextEditingController();
  // final TextEditingController contoh = TextEditingController(
  //   text: "admin@gmail.com",
  // );

  SingingCharacter? _character = SingingCharacter.compo;
  SingingCharacter? _processProd = SingingCharacter.compo;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(170.0),
                // here the desired height
                child: AppBar(
                  backgroundColor: Color.fromRGBO(0, 55, 138, 1),
                  // backgroundColor: HexaColor("#EF6C00"),
                  toolbarHeight: 120,
                  title: Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "Daily Monitoring Production",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontFamily: 'JosefinSansBold'),
                      )),
                )),

            // appBar: AppBar(title: const Text('Radio Samplees')),
            body: ListView(
              children: [
                // ListTile(
                //   contentPadding:
                //       EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                //   title: Text("Hello, Cristiano Ronaldo"),
                //   subtitle: Text("Hydraulic Plant"),
                //   // leading: CircleAvatar(
                //   //   backgroundImage: AssetImage('assets/img/megawati.jpg'),
                //   //   // radius: 50, // set the radius as per your requirements
                //   // ),
                //   trailing: Text("10.20 PM"),
                // )
                container1(),
                Container(
                  width: 220,
                  height: 420,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView(
                    children: [
                      myTextLeft("1.Date"),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          // textAlign: TextAlign.right,
                          children: [
                            TextField(
                              controller: dateinput,
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                              ),
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickeddate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                );
                                if (pickeddate != null) {
                                  setState(() {
                                    dateinput.text = DateFormat("yyyy-MM-dd")
                                        .format(pickeddate);
                                  });
                                }
                              },
                            ),
                            MyElement.myDivider20(),
                          ],
                        ),
                      ),
                      myTextLeft("1.Line Produksi"),

                      ListTile(
                        title: const Text('COMPO'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.compo,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                            print(_character);
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('ROD'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.rod,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                            print(_character);
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('TUBE'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.tube,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                            print(_character);

                            ExFunct(_character, SingingCharacter.tube);
                          },
                        ),
                      ),
                      myTextLeft("3.Process Prod"),

                      ListTile(
                        title: const Text('Grindin Grod (GRD01)'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.grindinGrod,
                          groupValue: _processProd,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _processProd = value;
                            });
                            print(_processProd);

                            ExFunct(_processProd, SingingCharacter.grindinGrod);
                          },
                        ),
                      ),
                      
                      ListTile(
                        title: const Text('Cuttin Grod (BS03)'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.cuttinGrod,
                          groupValue: _processProd,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _processProd = value;
                            });
                            print(_processProd);

                            ExFunct(_processProd, SingingCharacter.cuttinGrod);
                          },
                        ),
                      ),
                      // myRadio(_processProd, SingingCharacter.grindinGrod)
                      Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 148, 235, 107),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          autocorrect: false,
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //   width: 200,
                //   height: 200,
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Color.fromARGB(255, 148, 235, 107),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                // ),
              ],
            )));
  }

  ExFunct(_character, ronaldo) {
    // return Text("bebek goreng");
    return ListTile(
      title: const Text("Ronaldo"),
      leading: Radio<SingingCharacter>(
        groupValue: _character,
        value: ronaldo,
        onChanged: (SingingCharacter? value) {
          setState(() {
            _character = value;
          });
          print(_character);
        },
      ),
    );
  }
}

container1() {
  return Container(
    width: 200,
    height: 88,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Text(
            'When you submit this form, the owner will see you name and section',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'JosefinSansLight',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Divider(
            color: Colors.transparent,
            thickness: 1,
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: '* ',
              style: TextStyle(
                color: Colors.red,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Required',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'JosefinSansLight',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

myTextLeft(textnya) {
  return Center(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        textnya,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ),
  );
}

// myRadio(group, value) {
//   ListTile(
//     title: const Text('TUBE'),
//     leading: Radio<SingingCharacter>(
//       value: value,
//       groupValue: group,
//       onChanged: (SingingCharacter? value) {
//         setState(() {
//           group = value;
//         });
//         print(group);

//         // ExFunct(group, value);
//       },
//     ),
//   );
// }
// Widget container2() {
//   return ListView(
//     children: [
//       Container(
//         width: 200,
//         height: 200,
//         margin: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.indigo,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//       Container(
//         width: 200,
//         height: 200,
//         margin: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Color.fromARGB(255, 148, 235, 107),
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ],
//   );
// }






















// functRadio(_character){
//   <Widget>[
//               ListTile(
//                 title: const Text('Pedro Rodriguez'),
//                 leading: Radio<SingingCharacter>(
//                   value: SingingCharacter.pedro,
//                   groupValue: _character,
//                   onChanged: (SingingCharacter? value) {
//                     setState(() {
//                       _character = value;
//                     });
//                     print(_character);
//                   },
//                 ),
//               ),
//               ListTile(
//                 title: const Text('David Villa'),
//                 leading: Radio<SingingCharacter>(
//                   value: SingingCharacter.villa,
//                   groupValue: _character,
//                   onChanged: (SingingCharacter? value) {
//                     setState(() {
//                       _character = value;
//                     });
//                     print(_character);
//                   },
//                 ),
//               ),
//               ListTile(
//                 title: const Text('Leo Messi'),
//                 leading: Radio<SingingCharacter>(
//                   value: SingingCharacter.messi,
//                   groupValue: _character,
//                   onChanged: (SingingCharacter? value) {
//                     setState(() {
//                       _character = value;
//                     });
//                     print(_character);

//                     ExFunct(_character, SingingCharacter.ronaldo);
//                   },
//                 ),
//               ),
//             ],
// }

// enum SingingCharacter { pedro, villa, messi }
