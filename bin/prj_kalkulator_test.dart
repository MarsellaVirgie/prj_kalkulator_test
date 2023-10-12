import 'dart:io';

void main() {
 print('Pilih Operator:');
 print('1. Penjumlahan  (+)');
 print('2. Pengurangan  (-)');
 print('3. Perkalian    (x)');
 print('4. Pembagian    (:)');

 int operation = int.parse(stdin.readLineSync()!);

 print('Masukan angka pertama :');
 double num1 = double.parse(stdin.readLineSync()!);

 print('Masukan angka kedua   :');
 double num2 = double.parse(stdin.readLineSync()!);

 double result;

 switch (operation) {
    case 1:
      result = num1 + num2;
      break;
    case 2:
      result = num1 - num2;
      break;
    case 3:
      result = num1 * num2;
      break;
    case 4:
      if (num2 == 0) {
        print('Error! Pembagian bernilai 0 tidak dibolehkan.');
        return;
      }
      result = num1 / num2;
      break;
    default:
      print('Operator tidak tersedia.');
      return;
 }

 print('Hasil: $result');

}
