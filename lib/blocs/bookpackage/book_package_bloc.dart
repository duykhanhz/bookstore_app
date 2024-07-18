import 'package:bloc/bloc.dart';
import 'package:inkmelo_app/blocs/bookpackage/book_package_event.dart';
import 'package:inkmelo_app/blocs/bookpackage/book_package_state.dart';
import 'package:inkmelo_app/repositories/book_package_repository.dart';

class BookPackageBloc extends Bloc<BookPackageEvent, BookPackageState> {
  final BookPackageRepository bookPackageRepository;

  BookPackageBloc({required this.bookPackageRepository})
      : super(BookPackageInitial()) {
    on<LoadBookPackage>(_onLoadBookPackage);
  }

  Future<void> _onLoadBookPackage(
      LoadBookPackage event, Emitter<BookPackageState> emit) async {
    emit(BookPackageLoading());
    try {
      var apiResponse = await bookPackageRepository.fecthBookPackages();
      if (apiResponse != null) {
        emit(BookPackageLoaded(bookpackage: apiResponse));
      } else {
        emit(const BookPackageFailed(error: 'Failed to load packages'));
      }
    } catch (e) {
      emit(BookPackageFailed(error: e.toString()));
    }
  }
}