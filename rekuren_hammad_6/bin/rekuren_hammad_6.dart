/* import 'package:rekuren_hammad_6/rekuren_hammad_6.dart' as rekuren_hammad_6;

void main(List<String> arguments) {
  print('Hello world: ${rekuren_hammad_6.calculate()}!');
} */

import 'dart:io';

int hitungFaktorial(int n) {
  // Basis Rekurens
  if (n <= 1) {
    return 1;
  }
  // Rekurens: n * Faktorial Dari (n - 1)
  return n * hitungFaktorial(n - 1);
}

void main() {
  print("Ahla! Sila Masukkan Bilangan Untuk Hitung Faktorialnya:");
  int? angka = int.tryParse(stdin.readLineSync() ?? '');

  if (angka != null && angka >= 0) {
    int hasil = hitungFaktorial(angka);
    print("Okay, So.. Faktorial Dari $angka Ialah $hasil");
  } else {
    print("Harap Masukkan Betul-betul Bilangan Bulat Non-negatif Yang Valid Tau!");
  }
}

