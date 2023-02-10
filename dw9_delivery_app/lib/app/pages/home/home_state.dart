import 'package:dw9_delivery_app/app/models/product.dart';
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

part 'home_state.g.dart';

@match
enum HomeStateStatus {
  initial,
  loading,
  loaded,
  error,
}

class HomeState extends Equatable {
  final HomeStateStatus status;
  final List<ProductModel> products;
  final String? errorMessage;

  HomeState({
    required this.status,
    required this.products,
    this.errorMessage,
  });

  const HomeState.inicial()
      : status = HomeStateStatus.initial,
        products = const [],
        errorMessage = null;

  @override
  List<Object?> get props => [status, products, errorMessage];

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductModel>? products,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
