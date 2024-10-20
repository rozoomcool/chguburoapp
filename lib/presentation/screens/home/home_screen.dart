import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Заявки", style: Theme.of(context).textTheme.headlineSmall,),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {},
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 12,);
            },
            itemCount: 1,
          ),
        ],
      ),
    );
  }
}
