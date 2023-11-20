import 'package:booky/features/homa/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<,List<BookModel>> fetchBestSellerBooks();
  fetchFeatueBooks();
}
