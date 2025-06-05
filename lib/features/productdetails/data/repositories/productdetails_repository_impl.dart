import '../../domain/repositories/productdetails_repository.dart';
import '../datasources/productdetails_remote_datasource.dart';

class ProductdetailsRepositoryImpl implements ProductdetailsRepository {
  final ProductdetailsRemoteDataSource remoteDataSource;

  ProductdetailsRepositoryImpl(this.remoteDataSource);

  // TODO: Implement repository logic
}
