abstract class Kendaraan {
  void bunyiKlakson();
}

// Mixin
mixin BisaNgebut {
  void ngebut() {
    print('Wuuusss! Kendaraan melaju sangat cepat!');
  }
}

class Motor extends Kendaraan {
  @override
  void bunyiKlakson() {
    print('Tin tin!');
  }
}

class Mobil extends Kendaraan with BisaNgebut {
  @override
  void bunyiKlakson() {
    print('Bim bim!');
  }
}

void main() {
  var motor = Motor();
  print('--- Motor ---');
  motor.bunyiKlakson();

  var mobil = Mobil();
  print('\n--- Mobil ---');
  mobil.bunyiKlakson();
  mobil.ngebut();
}