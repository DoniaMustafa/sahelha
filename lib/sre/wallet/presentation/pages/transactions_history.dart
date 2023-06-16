import 'package:flutter/material.dart';
import 'package:sahelha_app/sre/application/utils/constants/app_constants.dart';
import 'package:sahelha_app/sre/application/utils/resources/colors_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/styles_manager.dart';
import 'package:sahelha_app/sre/application/utils/resources/values_manager.dart';
import 'package:sahelha_app/sre/wallet/widgets/custom_transaction_item.dart';

class TransactionsHistoryScreen extends StatelessWidget {
  const TransactionsHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConstants.height = MediaQuery.of(context).size.height; /* app height*/
    AppConstants.width = MediaQuery.of(context).size.width; /*appf width*/
    AppConstants.margin = AppWidth.s23 * AppConstants.width; /*app margin*/
    AppConstants.appBarHeight =
        AppHeight.s90 * AppConstants.height; /*app margin*/
    AppConstants.appBodyHeight = AppConstants.height -
        AppHeight.s90 * AppConstants.height; /*app margin*/

    return Scaffold(
      appBar: AppBar(
        //     elevation: 0,
        title: Text(
          'Transaction history',
          style:
              getSemiBoldStyle(color: ColorsManager.purpleNavy, fontSize: 16),
        ),
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios_new,color: ColorsManager.purpleNavy,size: 20,)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemBuilder: (context, i) => CustomTransactionsItem(
            index: i,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
