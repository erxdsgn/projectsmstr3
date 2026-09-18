void main() {
  List<int> nilai = [80, 90, 65, 70, 95];

  // 1. Menampilkan hanya nilai yang lulus (>= 75)
  var lulus = nilai.where((n) => n >= 75);
  print('Nilai Lulus: $lulus'); // Output: (80, 90, 95)

  // 2. Mengubah semua nilai menjadi predikat huruf (A/B/C) menggunakan switch expression
  var predikat = nilai.map((n) => switch (n) {
    >= 85 => 'A',
    >= 75 => 'B',
    _     => 'C',
  });
  print('Predikat: ${predikat.toList()}'); // Output: [B, A, C, C, A]
}