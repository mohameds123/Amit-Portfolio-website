import 'package:flutter/material.dart';
import 'package:webportofolio/core/utils/colors_manager.dart';
import 'package:webportofolio/widgets/about_me.dart';
import 'package:webportofolio/widgets/contact.dart';
import 'package:webportofolio/widgets/header.dart';
import 'package:webportofolio/widgets/personal_info.dart';
import 'package:webportofolio/widgets/work.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManagers.lightYellow,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              SizedBox(height: 90,),
        
              PersonalInfoWidget(),
              SizedBox(height: 115,),

              AboutMeWidget(),
              SizedBox(height: 70,),

              WorkWidget(),
              SizedBox(height: 70,),

              ContactWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
