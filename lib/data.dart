


class Book {



  String title,
      writer,
      price,
      image,
      description =
          'some words some words some words some words some words some words some words some words some words some words some words some words';
  int pages;
  double rating;
  String addres;


 
  Book(this.title, this.writer, this.price, this.image, this.rating, this.pages, this.addres);

// Timer timer  = Timer(Duration(seconds: 2), () {
//   print("first");
//  getNoteList();
 
// });

 

}





//  List<Book> books = [
//   // Book('Book', 'Author Name',
//   //     'price', 'res/1.gif', 2.9, 123,"http://gahp.net/wp-content/uploads/2017/09/sample.pdf"),
//   // Book('Book', 'Author Name',
//   //     'price', 'res/2.gif', 2.9, 123,"http://gahp.net/wp-content/uploads/2017/09/sample.pdf"),
//   // Book('Book', 'Author Name',
//   //     'price', 'res/3.gif', 2.9, 123,"http://gahp.net/wp-content/uploads/2017/09/sample.pdf"),
//   // Book('Book', 'Author Name',
//   //     'price', 'res/4.gif', 2.9, 123,"http://gahp.net/wp-content/uploads/2017/09/sample.pdf"),
//   // Book('Book', 'Author Name',
//   //     'price', 'res/5.gif', 2.9, 123,"http://gahp.net/wp-content/uploads/2017/09/sample.pdf"),
  
//   // Book('CorelDraw untuk Tingkat Pemula Sampai Mahir', 'Jubilee Enterprise',
//   //     'Rp 50.000', 'res/corel.jpg', 2.9, 123,"http://gahp.net/wp-content/uploads/2017/09/sample.pdf"),
//    Book('Buku Pintar Drafter Untuk Pemula Hingga Mahir', 'Widada', 'Rp 55.000',
//       'res/drafter.jpg', 4.5, 200,"https://s1.q4cdn.com/806093406/files/doc_downloads/test.pdf"),
//     Book('Adobe InDesign: Seri Panduan Terlengkap', 'Jubilee Enterprise',
//        'Rp 60.000', 'res/indesign.jpg', 5.0, 324,"http://www.africau.edu/images/default/sample.pdf"),
//    Book('Pemodelan Objek Dengan 3Ds Max 2014', 'Wahana Komputer', 'Rp 58.000',
//        'res/max_3d.jpeg', 3.0, 200,"http://www.africau.edu/images/default/sample.pdf"),
//   // Book('Penerapan Visualisasi 3D Dengan Autodesk Maya', 'Dhani Ariatmanto',
//   //     'Rp 90.000', 'res/maya.jpeg', 4.8, 234,"https://s1.q4cdn.com/806093406/files/doc_downloads/test.pdf"),
//   // Book('Teknik Lancar Menggunakan Adobe Photoshop', 'Jubilee Enterprise',
//   //     'Rp 57.000', 'res/photoshop.jpg', 4.5, 240,"https://s1.q4cdn.com/806093406/files/doc_downloads/test.pdf"),
//   // Book('Adobe Premiere Terlengkap dan Termudah', 'Jubilee Enterprise',
//   //     'Rp 56.000', 'res/premier.jpg', 4.8, 432,"https://s1.q4cdn.com/806093406/files/doc_downloads/test.pdf"),
//   // Book('Cad Series : Google Sketchup Untuk Desain 3D', 'Wahana Komputer',
//   //     'Rp 55.000', 'res/sketchup.jpeg', 4.5, 321,"https://s1.q4cdn.com/806093406/files/doc_downloads/test.pdf"),
//   // Book('Webmaster Series : Trik Cepat Menguasai CSS', 'Wahana Komputer',
//   //     'Rp 54.000', 'res/webmaster.jpeg', 3.5, 431,"https://s1.q4cdn.com/806093406/files/doc_downloads/test.pdf"),
// ];


// Firestore db = Firestore.instance;
// CollectionReference notesCollectionRef = db.collection('books');

// Stream<QuerySnapshot> getNoteList() {
//   Stream<QuerySnapshot> snapshots = db.collection('books').snapshots();
// snapshots.map((snapshot)=> print(snapshot));

//  snapshots.map((snapshot) => snapshot.documents.map((it)=> books.add(new Book(it.data["title"], it.data["writer"], it.data["price"], it.data["image"], it.data["rating"], it.data["pages"], it.data["addres"]))));
 
 
// //  documents.map((documentSnapshot) => Note.fromMap(documentSnapshot.data))
 
//  return snapshots;
// }


  



