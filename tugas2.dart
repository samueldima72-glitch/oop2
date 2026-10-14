import 'dart:io';
import 'dart:math';

void main() {
  // stdout.write("Masukkan nilai Anda (0-100): ");
  // int? input = int.tryParse(stdin.readLineSync()?? "") ?? -1;

  // if (input == -1) {
  //   print("Nilai tidak valid! Masukkan nilai antara 0-100.");
  //   return;
  // }

  // int nilai = input;

  // if (nilai < 0 || nilai > 100) {
  //   print("Nilai tidak valid! Masukkan nilai antara 0-100.");
  // } else if (nilai >= 85) {
  //   print("Nilai Anda A");
  // } else if (nilai >= 70) {
  //   print("Nilai Anda B");
  // } else if (nilai >= 55) {
  //   print("Nilai Anda C");
  // } else {
  //   print("Nilai Anda D");
  // // };

  // for (int i = 1; i <= 20; i++) {
  //   if (i % 3 == 0 && i % 5 == 0) {
  //     print('FizzBuzz');
  //   } else if (i % 3 == 0) {
  //     print('Fizz');
  //   } else if (i % 5 == 0) {
  //     print('Buzz');
  //   } else {
  //     print(i);
  //   }
  // }

  // List<double> angka = [];

  // // Meminta pengguna memasukkan 5 angka
  // for (int i = 1; i <= 5; i++) {
  //   stdout.write('Masukkan angka ke-$i: ');
  //   double? nilai = double.tryParse(stdin.readLineSync() ?? '');

  //   if (nilai == null) {
  //     print('Input tidak valid! Masukkan angka.');
  //     i--;
  //     continue;
  //   }

  //   angka.add(nilai);
  // }

  // // Menghitung jumlah
  // double jumlah = 0;
  // for (double nilai in angka) {
  //   jumlah += nilai;
  // }

  // // Menghitung rata-rata
  // double rataRata = jumlah / angka.length;

  // // Menentukan nilai maksimum dan minimum
  // double maksimum = angka[0];
  // double minimum = angka[0];

  // for (double nilai in angka) {
  //   if (nilai > maksimum) {
  //     maksimum = nilai;
  //   }

  //   if (nilai < minimum) {
  //     minimum = nilai;
  //   }
  // }

  // // Menampilkan hasil
  // print('\n=== HASIL PERHITUNGAN ===');
  // print('Angka yang dimasukkan: $angka');
  // print('Jumlah       : $jumlah');
  // print('Rata-rata    : $rataRata');
  // print('Nilai maksimum: $maksimum');
  // print('Nilai minimum : $minimum');

  // Program memilih angka secara acak dari 0 sampai 5
  Random random = Random();
  int angkaRahasia = random.nextInt(6);

  print('=== PERMAINAN TEBAK ANGKA ===');
  print('Tebak angka dari 0 sampai 5!');

  int? tebakan;

  while (tebakan != angkaRahasia) {
    stdout.write('Masukkan tebakan kamu: ');
    tebakan = int.tryParse(stdin.readLineSync() ?? '');

    if (tebakan == null || tebakan < 0 || tebakan > 5) {
      print('Input tidak valid! Masukkan angka 0 sampai 5.');
      tebakan = null;
      continue;
    }

    if (tebakan == angkaRahasia) {
      print('Selamat! Tebakan kamu benar!');
    } else {
      print('Tebakan kamu salah, coba lagi!');
    }
  }

  print('Angka rahasianya adalah $angkaRahasia.');
}
