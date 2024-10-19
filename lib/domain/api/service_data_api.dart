import 'package:chguburoapp/domain/model/user/user.dart';
import 'package:dio/dio.dart';
import 'dart:io';

import '../model/service_data/service_data.dart';

class ServiceDataApi {
  final Dio _dio;

  ServiceDataApi(this._dio);

  // Метод для получения списка ServiceData по роли
  Future<List<ServiceData>> getServiceData(Role forRole) async {
    // try {
      final response = await _dio.get('/service', queryParameters: {
        'forRole': forRole.name,
      });

      if (response.statusCode == 200) {
        print("::::${response.data.toString()}");
        return (response.data as List)
            .map((serviceData) => ServiceData.fromJson(serviceData))
            .toList();
      } else {
        throw Exception('Failed to load service data');
      }
    // } catch (e) {
    //   throw Exception('Error: $e');
    // }
  }

  // Метод для скачивания документа
  Future<File> downloadDocument(String filename, String downloadPath) async {
    try {
      final response = await _dio.get(
        '/document',
        queryParameters: {'filename': filename},
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );

      if (response.statusCode == 200) {
        // Получаем имя файла из заголовков
        var contentDisposition = response.headers['content-disposition']?.first;
        var fileName = filename;

        if (contentDisposition != null) {
          fileName = contentDisposition
              .split('filename=')[1]
              .replaceAll('"', '');
        }

        // Записываем файл в локальное хранилище
        File file = File('$downloadPath/$fileName');
        await file.writeAsBytes(response.data);

        return file;
      } else {
        throw Exception('Failed to download document');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
