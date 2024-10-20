import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../domain/model/snilsData/snils_data.dart';
import '../../domain/state/user/user_cubit.dart';

class SnilsDataWidget extends StatefulWidget {
  final SnilsData? snilsData;

  const SnilsDataWidget({Key? key, this.snilsData}) : super(key: key);

  @override
  _SnilsDataWidgetState createState() => _SnilsDataWidgetState();
}

class _SnilsDataWidgetState extends State<SnilsDataWidget> {
  bool isEditingSnils = false;
  final TextEditingController seriesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.snilsData != null) {
      // Инициализация контроллера данными из СНИЛС
      seriesController.text = widget.snilsData?.series ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Данные СНИЛС",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
              ),
              IconButton(
                icon: Icon(isEditingSnils ? Iconsax.check : Iconsax.edit),
                onPressed: () {
                  setState(() {
                    isEditingSnils = !isEditingSnils;
                    if (!isEditingSnils) {
                      // Логика сохранения данных
                      context.read<UserCubit>().updateUserSnilsData(
                            SnilsData(
                              id: widget.snilsData?.id,
                              series: seriesController.text,
                            ),
                          );
                    }
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Поле серии СНИЛС
          _buildTextField(
            label: "Серия СНИЛС",
            controller: seriesController,
            isEditing: isEditingSnils,
          ),
        ],
      ),
    );
  }

  // Метод для создания поля с текстом
  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    required bool isEditing,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          isEditing
              ? TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                )
              : Text(
                  controller.text,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
        ],
      ),
    );
  }
}
