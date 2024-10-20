import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/domain/model/userApplication/user_application.dart';
import 'package:chguburoapp/domain/state/application/application_cubit.dart';
import 'package:chguburoapp/domain/state/user/user_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:iconsax/iconsax.dart';
import 'package:open_file/open_file.dart';

import '../../../domain/api/service_data_api.dart';
import '../../../domain/model/user/user.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ServiceDataApi _apiService = ServiceDataApi(GetIt.I<Dio>());

  void fetchDocument(String filename) async {
    var data = OpenFile.open((await _apiService.openDocument(filename)).path);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, User?>(
      builder: (context, user) {
        return BlocBuilder<ApplicationCubit, List<UserApplication>>(
            builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Заявки",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      IconButton(onPressed: () {
                        context.read<ApplicationCubit>().fetchTarget(user?.role ?? Role.STUDENT);
                      }, icon: Icon(Iconsax.refresh))
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Text(
                                        state[index].service?.title ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                        state[index].applictionStatus.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      flex: 1, child: Icon(Iconsax.document)),
                                  Expanded(
                                      flex: 6,
                                      child: Text(
                                        state[index].document?.filename ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: FilledButton(
                                        onPressed: () {
                                          fetchDocument(
                                              state[index].document?.filename ??
                                                  "");
                                        },
                                        child: const Text("Просмотреть"),
                                      )),
                                  SizedBox(
                                    width: user?.role == Role.STUDENT ? 0 : 12,
                                  ),
                                  user?.role == Role.STUDENT
                                      ? SizedBox()
                                      : Expanded(
                                          flex: 1,
                                          child: FilledButton(
                                            onPressed: () {
                                              context
                                                  .read<ApplicationCubit>()
                                                  .changeStatus(
                                                      state[index].id!,
                                                      user?.role ==
                                                              Role.MODERATOR
                                                          ? ApplicationStatus
                                                              .UNDER_CONSIDERATION
                                                          : ApplicationStatus
                                                              .CONFIRMED,
                                                      user?.role ??
                                                          Role.MODERATOR);
                                            },
                                            child: const Text("Отправить"),
                                          ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 12,
                      );
                    },
                    itemCount: state.length,
                  ),
                ],
              ),
            ),
          );
        });
      },
      listener: (BuildContext context, User? state) {
        if (state != null) {
          context.read<ApplicationCubit>().fetchTarget(state!.role);
        }
      },
    );
  }
}
