import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:iconsax/iconsax.dart';

import '../../../domain/api/service_data_api.dart';
import '../../../domain/model/service_data/service_data.dart';
import '../../../domain/model/user/user.dart';

@RoutePage()
class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {

  List<ServiceData> services = List.empty(growable: true);
  final ServiceDataApi _serviceDataApi = ServiceDataApi(GetIt.I<Dio>());

  @override
  void initState() {
    super.initState();
    fetchServicesData();
  }

  Future<void> fetchServicesData() async {
    var data = await _serviceDataApi.getServiceData(Role.STUDENT);
    setState(() {
      services = data;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 12,
          );
        },
        itemCount: services.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            tileColor: Colors.white,
            title: Text(services[index].title),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
              trailing: IconButton(icon: Icon(Iconsax.add_square), onPressed: () {  },),
          );
        },
      ),
    );
  }
}
