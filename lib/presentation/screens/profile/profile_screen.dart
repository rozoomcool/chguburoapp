import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/utils/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              "Уматкереев Росул Асланбекович",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle:
                Text("Студент", style: Theme.of(context).textTheme.bodyLarge),
            trailing: IconButton(
              icon: Icon(Iconsax.edit),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ListTile(
            tileColor: Colors.white,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
            title: Text(
              "Пасспорт",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text("9816 756453",
                style: Theme.of(context).textTheme.bodyLarge),
            trailing: IconButton(
              icon: const Icon(Iconsax.edit),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ListTile(
            tileColor: Colors.white,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
            title: Text(
              "Снилс",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text("9816 756453",
                style: Theme.of(context).textTheme.bodyLarge),
            trailing: IconButton(
              icon: const Icon(Iconsax.edit),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const [10, 4],
            color: AppColors.primaryColor,
            radius: const Radius.circular(12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ListTile(
                tileColor: Colors.white,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                ),
                title: Text(
                  "ИНН",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: IconButton(
                  icon: const Icon(Iconsax.add_square),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
