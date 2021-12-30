import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import '../../../../core/models/data_base_json.dart';

class SearchByMaterialView extends StatefulWidget {
  @override
  _SearchByMaterialViewState createState() => _SearchByMaterialViewState();
}
class _SearchByMaterialViewState extends State<SearchByMaterialView> {
  late TextEditingController materialCo;
  List<Map<String,dynamic>> material = [];
  @override
  void initState() {
    super.initState();
    materialCo = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    print("material =====>${material}");
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildContainer(context,materialCo, "بحث ..."),
              InkWell(
                onTap: () =>Navigator.pushNamed(context, "/FilterView"),
                child: SvgPicture.asset(
                  "assets/icons/filter.svg",
                  height: ScreenUtil().screenHeight * 0.035,
                  width: ScreenUtil().screenWidth * 0.035,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          preferredSize: Size.fromHeight(ScreenUtil().screenHeight * 0.08),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().screenWidth * 0.03,
          ),
          child: ListView.builder(
              itemCount: material.isEmpty ? DataBaseJson.teachers.length : material.length,
              shrinkWrap: true,
              itemBuilder: (context, index) =>Column(
                children: [
                  InkWell(
                    onTap: ()=>Navigator.pushNamed(context, "/TeacherInDetailsView"),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: ScreenUtil().screenHeight * 0.12,
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: 8,
                              top: 8,
                              right: 8,
                            ),
                            child: CircleAvatar(
                              radius: ScreenUtil().screenHeight * 0.1 / 2,
                              backgroundImage: AssetImage(
                                material.isEmpty ? DataBaseJson.teachers[index]["image"] : material[index]["image"],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              material.isEmpty ? DataBaseJson.teachers[index]["teachername"] : material[index]["teachername"],
                              style: theme.headline1,
                            ),
                            Text(
                              material.isEmpty ? DataBaseJson.teachers[index]["subject"] : material[index]["subject"],
                              style: theme.subtitle1,
                            ),
                            Text(
                              material.isEmpty ? DataBaseJson.teachers[index]["level"] : material[index]["level"],
                              style: theme.subtitle1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    endIndent: 15,
                    indent: 5,
                    height: 0,
                  ),
                ],

              )),
        ),
      ),
    );
  }

  Widget buildContainer(BuildContext context, TextEditingController co,
      String hint) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10,top: 5),
      child: Container(
        height: 90,
        width: ScreenUtil().screenWidth * 0.7,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().screenWidth * 0.05,
          vertical: ScreenUtil().screenHeight*0.005,
        ),
        decoration: BoxDecoration(
            // color: backgroundColor,
            borderRadius: BorderRadius.circular(5),
            // border: Border.all(color:borderColor )
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: TextFormField(
            maxLines: 1,
            controller: co,
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.black,fontSize: 20),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
              ),
              labelText: hint,
              suffixIcon: InkWell(
                onTap: (){
                  for(int i=0 ;i<DataBaseJson.teachers.length;i++) {
                    if (DataBaseJson.teachers[i]["subject"].contains(materialCo.text.toString())) {
                      setState(() {
                        material.add(DataBaseJson.teachers[i]);
                      });
                    }
                  }
                },
                child: Icon(Icons.search),),
              labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            textInputAction: TextInputAction.next,
            // onChanged: (text) {
            //   for(int i=0 ;i<DataBaseJson.teachers.length;i++) {
            //     if (DataBaseJson.teachers[i]["teachername"].contains(text)) {
            //       setState(() {
            //         teachers.add(DataBaseJson.teachers[i]);
            //       });
            //     }
            //   }
            // },
          ),
        ),
      ),
    );
  }
}