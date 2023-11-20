import 'package:booky/core/errors/failuer.dart';
import 'package:booky/features/homa/data/models/book_model/Repos/home_repo.dart';
import 'package:booky/features/homa/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeatueBooks() {
    // TODO: implement fetchFeatueBooks
    throw UnimplementedError();
  }
}
