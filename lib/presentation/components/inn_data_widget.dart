import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../domain/model/innData/inn_data.dart'; // Предположим, что у вас есть эта модель
import '../../domain/state/user/user_cubit.dart';

class InnDataWidget extends StatefulWidget {
  final InnData? innData;

  const InnDataWidget({Key? key, this.innData}) : super(key: key);

  @override
  _InnDataWidgetState createState() => _InnDataWidgetState();
}

class _InnDataWidgetState extends State<InnDataWidget> {
  bool isEditingInn = false;
  final TextEditingController seriesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.innData != null) {
      // Инициализация контроллера данными ИНН
      seriesController.text = widget.innData?.series ?? '';
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
                "Данные ИНН",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
              ),
              IconButton(
                icon: Icon(isEditingInn ? Iconsax.check : Iconsax.edit),
                onPressed: () {
                  setState(() {
                    isEditingInn = !isEditingInn;
                    if (!isEditingInn) {
                      // Логика сохранения данных ИНН
                      context.read<UserCubit>().updateUserInnData(
                            InnData(
                              id: widget.innData?.id,
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

          // Поле серии ИНН
          _buildTextField(
            label: "Серия ИНН",
            controller: seriesController,
            isEditing: isEditingInn,
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
