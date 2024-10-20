import 'package:chguburoapp/domain/state/auth/auth_cubit.dart';
import 'package:chguburoapp/domain/state/user/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '../../domain/model/passportData/passport_data.dart';

class PassportDataWidget extends StatefulWidget {
  final PassportData? passportData;

  const PassportDataWidget({Key? key, this.passportData}) : super(key: key);

  @override
  _PassportDataWidgetState createState() => _PassportDataWidgetState();
}

class _PassportDataWidgetState extends State<PassportDataWidget> {
  bool isEditingPassport = false;

  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController placeOfBirthController = TextEditingController();
  final TextEditingController seriesController = TextEditingController();
  final TextEditingController dateOfIssueController = TextEditingController();
  final TextEditingController departmentCodeController =
      TextEditingController();
  final TextEditingController issuedByController = TextEditingController();

  Gender? selectedGender;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  void didUpdateWidget(covariant PassportDataWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    loadData();
  }

  void loadData() {
    if (widget.passportData != null) {
      fullnameController.text = widget.passportData?.fullname ?? '';
      dateOfBirthController.text = widget.passportData?.dateOfBirth != null
          ? DateFormat('dd.MM.yyyy').format(widget.passportData!.dateOfBirth!)
          : '';
      placeOfBirthController.text = widget.passportData?.placeOfBirth ?? '';
      seriesController.text = widget.passportData?.series ?? '';
      dateOfIssueController.text = widget.passportData?.dateOfIssue != null
          ? DateFormat('dd.MM.yyyy').format(widget.passportData!.dateOfIssue!)
          : '';
      departmentCodeController.text =
          widget.passportData?.departmentCode?.toString() ?? '';
      issuedByController.text = widget.passportData?.issuedBy ?? '';
      selectedGender = widget.passportData?.gender;
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
          color: Colors.transparent,
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
                "Паспортные данные",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
              ),
              const SizedBox(height: 8),
              IconButton(
                icon: Icon(isEditingPassport ? Iconsax.check : Iconsax.edit),
                onPressed: () {
                  setState(() {
                    isEditingPassport = !isEditingPassport;
                    if (!isEditingPassport) {
                      savePassportData();
                    }
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Полное имя
          _buildTextField(
            label: "Полное имя",
            controller: fullnameController,
            isEditing: isEditingPassport,
          ),

          // Пол
          _buildDropdown(
            label: "Пол",
            value: selectedGender,
            items: Gender.values,
            isEditing: isEditingPassport,
            onChanged: (Gender? newGender) {
              setState(() {
                selectedGender = newGender;
              });
            },
          ),

          // Дата рождения
          _buildDatePickerField(
            label: "Дата рождения",
            controller: dateOfBirthController,
            isEditing: isEditingPassport,
            onDateSelected: (DateTime selectedDate) {
              dateOfBirthController.text =
                  DateFormat('dd.MM.yyyy').format(selectedDate);
            },
          ),

          // Место рождения
          _buildTextField(
            label: "Место рождения",
            controller: placeOfBirthController,
            isEditing: isEditingPassport,
          ),

          // Серия паспорта
          _buildTextField(
            label: "Серия",
            controller: seriesController,
            isEditing: isEditingPassport,
          ),

          // Дата выдачи
          _buildDatePickerField(
            label: "Дата выдачи",
            controller: dateOfIssueController,
            isEditing: isEditingPassport,
            onDateSelected: (DateTime selectedDate) {
              dateOfIssueController.text =
                  DateFormat('dd.MM.yyyy').format(selectedDate);
            },
          ),

          // Код подразделения
          _buildTextField(
            label: "Код подразделения",
            controller: departmentCodeController,
            isEditing: isEditingPassport,
          ),

          // Кем выдан
          _buildTextField(
            label: "Кем выдан",
            controller: issuedByController,
            isEditing: isEditingPassport,
          )
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  "",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
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

  // Метод для создания поля с выбором пола (Dropdown)
  Widget _buildDropdown<T>({
    required String label,
    required T? value,
    required List<T> items,
    required bool isEditing,
    required ValueChanged<T?> onChanged,
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
              ? DropdownButtonFormField<T>(
                  value: value,
                  items: items
                      .map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(item.toString().split('.').last),
                          ))
                      .toList(),
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                )
              : Text(
                  value != null
                      ? value.toString().split('.').last
                      : 'Не указано',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
        ],
      ),
    );
  }

  // Метод для создания поля с выбором даты (DatePicker)
  Widget _buildDatePickerField({
    required String label,
    required TextEditingController controller,
    required bool isEditing,
    required ValueChanged<DateTime> onDateSelected,
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
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null) {
                      onDateSelected(pickedDate);
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: const Icon(Icons.calendar_today),
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

  void savePassportData() {
    context.read<UserCubit>().updateUserPassportData(
          PassportData(
            fullname: fullnameController.text,
            gender: selectedGender,
            dateOfBirth: dateOfBirthController.text.isNotEmpty
                ? DateFormat('dd.MM.yyyy').parse(dateOfBirthController.text)
                : null,
            placeOfBirth: placeOfBirthController.text,
            series: seriesController.text,
            dateOfIssue: dateOfIssueController.text.isNotEmpty
                ? DateFormat('dd.MM.yyyy').parse(dateOfIssueController.text)
                : null,
            departmentCode: int.tryParse(departmentCodeController.text),
            issuedBy: issuedByController.text,
          ),
        );
  }
}
