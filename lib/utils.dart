import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

Future<Map<String, String>> listFileUrls(String dirname) async {
  firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
  firebase_storage.ListResult result = await storage.ref(dirname).listAll(); // 오래걸림
  List<String> filelist = [];
  List<Future<String>> urllist = [];
  Map<String, String> file2url = {};
  result.items.forEach((firebase_storage.Reference ref) {
    filelist.add(ref.name.split(".")[0]);
    urllist.add(ref.getDownloadURL()); // 개오래걸림
  });
  await Future.forEach(filelist.asMap().entries, (MapEntry entry) async {
    file2url[entry.value] = await urllist[entry.key];
  });
  return file2url;
}