class Queue<T> {
  // List internal untuk menyimpan elemen antrian
  final List<T> _items = [];

  // Metode untuk menambahkan elemen ke akhir antrian (Enqueue)
  void enqueue(T element) {
    _items.add(element);
    print("Ditambahkan (Enqueue): $element");
  }

  // Metode untuk menghapus dan mengembalikan elemen dari depan antrian (Pop / Dequeue)
  T? pop() {
    if (isEmpty()) {
      print("Antrian kosong! Tidak ada elemen yang bisa di-pop.");
      return null;
    }
    // Menghapus dan mengambil elemen pertama dalam list
    T removedItem = _items.removeAt(0);
    print("Dikeluarkan (Pop): $removedItem");
    return removedItem;
  }

  // Memeriksa apakah antrian kosong
  bool isEmpty() {
    return _items.isEmpty;
  }

  // Melihat elemen terdepan tanpa menghapusnya
  T? peek() {
    if (isEmpty()) {
      return null;
    }
    return _items.first;
  }

  // Menampilkan seluruh isi antrian
  void display() {
    print("Status Antrian saat ini: $_items");
  }
}

void main() {
  // Membuat objek Queue dengan tipe data String
  Queue<String> antrianLoket = Queue<String>();

  print("=== SIMULASI QUEUE (ANTRIAN) ==-\n");

  // 1. Menambahkan data ke antrian (Enqueue)
  antrianLoket.enqueue("Budi");
  antrianLoket.enqueue("Siti");
  antrianLoket.enqueue('Andi'); // Perbaikan sintaks penulisan string standar
  
  antrianLoket.display();
  print("");

  // 2. Mengeluarkan data dari antrian (Pop)
  antrianLoket.pop(); // Budi akan keluar lebih dulu (FIFO: First In, First Out)
  
  antrianLoket.display();
  print("");

  // Menambahkan lagi
  antrianLoket.enqueue("Rina");
  antrianLoket.display();
  print("");

  // Melakukan pop secara berurutan
  antrianLoket.pop();
  antrianLoket.pop();
  antrianLoket.pop();
  
  // Coba pop saat antrian sudah kosong       
  antrianLoket.pop();
}