import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/domain/state/application/application_cubit.dart';
import 'package:chguburoapp/domain/state/user/user_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    var data = await _serviceDataApi
        .getServiceData(context.read<UserCubit>().state?.role ?? Role.STUDENT);
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
            onTap: () {
              context
                  .read<ApplicationCubit>()
                  .createApplication(services[index].id?.toInt() ?? 1);
            },
            tileColor: Colors.white,
            title: Text(
              services[index].title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
            trailing: IconButton(
              icon: Icon(Iconsax.add_square),
              onPressed: () {
                context
                    .read<ApplicationCubit>()
                    .createApplication(services[index].id?.toInt() ?? 1);
              },
            ),
          );
        },
      ),
    );
  }
}
