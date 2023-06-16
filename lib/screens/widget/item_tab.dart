import 'package:flutter/material.dart';
import 'package:news_app/style/app_color.dart';

import '../../model/source_respose.dart';

class ItemTab extends StatelessWidget {
Sources sources;
bool isSelecked;
ItemTab(this.sources,this.isSelecked);
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:isSelecked?AppColors.primaryGreen:Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primaryGreen,width: 2)
      ),
      child:Text(sources.name??"",style: TextStyle(
        color: isSelecked?AppColors.whiteColor:AppColors.primaryGreen
      ),),
    );
  }
}
