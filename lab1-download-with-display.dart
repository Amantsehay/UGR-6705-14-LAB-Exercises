import 'dart:async';
import 'dart:io';

void main() {
  final files = ['file1.txt', 'file2.txt', 'file3.txt'];
  final futures = <Future>[];

  for (final file in files) {
    final future = downloadFile(file);
    futures.add(future);
  }

  Future.wait(futures)
      .then((_) => print('All files downloaded successfully!'))
      .catchError((error) => print('Error downloading files: $error'));
}

Future<void> downloadFile(String filename) async {
  final url = 'https://example.com/$filename';
  final savedFile = File(filename);

  try {
    final httpClient = HttpClient();
    final request = await httpClient.getUrl(Uri.parse(url));
    final response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      final bytes = await consolidateHttpClientResponseBytes(response);
      await savedFile.writeAsBytes(bytes);
      print('Downloaded $filename');
    } else {
      throw HttpException('Failed to download $filename: ${response.statusCode}');
    }
  } catch (e) {
    print('Error downloading $filename: $e');
    rethrow;
  }
}
