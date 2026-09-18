class Produk {
  String nama;
  int _harga;

  Produk(this.nama, int harga) : _harga = harga < 0 ? 0 : harga;

  Produk.gratis(this.nama) : _harga = 0;

  int get harga => _harga;

  set harga(int nilaiBaru) {
    if (nilaiBaru >= 0) {
      _harga = nilaiBaru;
    } else {
      print('Harga tidak boleh negatif!');
    }
  }
}

void main() {
  var p1 = Produk('Laptop', 5000000);
  print('${p1.nama}: Rp${p1.harga}');

  var p2 = Produk.gratis('Sampel Stiker');
  print('${p2.nama}: Rp${p2.harga}');

  p1.harga = -1000;
}