import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.router.dart';
import 'package:health_educational/common/ui/widgets/name_initial_list_tile.dart';
import 'package:health_educational/features/health_tools/drug_information/drug_information_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DrugInformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DrugInformationViewModel>.reactive(
      viewModelBuilder: () => locator<DrugInformationViewModel>(),
      disposeViewModel: false,
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: TextFormField(
            onChanged: model.onQueryChanged,
            autofocus: true,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
            onEditingComplete: model.onSearchPressed,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red[700]!),
              ),
              hintText: 'Search for drug',
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.red[700],
                fontWeight: FontWeight.w500,
              ),
              suffix: IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(Icons.search),
                onPressed: model.onSearchPressed,
              ),
            ),
          ),
        ),
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.separated(
                padding: EdgeInsets.all(8),
                itemCount: model.drugs.length,
                itemBuilder: (BuildContext context, int index) {
                  final drug = model.drugs[index];
                  return NameInitialListTile(
                    label: drug.brandName,
                    onPressed: () => locator<NavigationService>().navigateTo(
                      Routes.eachDrugView,
                      arguments: EachDrugViewArguments(drug: drug),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 12),
              ),
      ),
    );
  }
}
