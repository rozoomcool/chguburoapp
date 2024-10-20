import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/domain/state/user/user_cubit.dart';
import 'package:chguburoapp/presentation/components/inn_data_widget.dart';
import 'package:chguburoapp/presentation/components/passport_data_widget.dart';
import 'package:chguburoapp/presentation/components/snils_data_widget.dart';
import 'package:chguburoapp/utils/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../domain/model/user/user.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, User?>(builder: (context, user) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              tileColor: Colors.white,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
              leading: CircleAvatar(
                radius: 32,
              ),
              title: Text(
                user?.username ?? "",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle:
                  Text("Студент", style: Theme.of(context).textTheme.bodyLarge),
              // trailing: IconButton(
              //   icon: Icon(Iconsax.edit),
              //   onPressed: () {},
              // ),
            ),
            SizedBox(
              height: 12,
            ),
            PassportDataWidget(
              passportData: user?.profile?.passportData,
            ),
            const SizedBox(
              height: 12,
            ),
            SnilsDataWidget(
              key: Key(user?.profile?.snilsData.toString() ?? ""),
              snilsData: user?.profile?.snilsData,
            ),
            const SizedBox(
              height: 12,
            ),
            // DottedBorder(
            //   borderType: BorderType.RRect,
            //   dashPattern: const [10, 4],
            //   color: AppColors.primaryColor,
            //   radius: const Radius.circular(12),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(12),
            //     child: ListTile(
            //       tileColor: Colors.white,
            //       shape: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(12),
            //           borderSide: BorderSide.none),
            //       title: Text(
            //         "ИНН",
            //         style: Theme.of(context)
            //             .textTheme
            //             .bodyLarge
            //             ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            //       ),
            //       trailing: IconButton(
            //         icon: const Icon(Iconsax.add_square),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ),
            // ),
            InnDataWidget(
              key: Key(user?.profile?.innData.toString() ?? ""),
              innData: user?.profile?.innData,
            )
          ],
        ),
      );
    });
  }
}
