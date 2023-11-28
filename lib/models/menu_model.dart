class MenuBooks1{
  final String NovelID;
  final String NovelName;
  final String NovelGenre;

  MenuBooks1({required this.NovelID, required this.NovelName, required this.NovelGenre});
}

class MenuBooks{
  final String imagePath;
  final String judul;
  final String rating;

  MenuBooks(this.imagePath, this.judul, this.rating);
}