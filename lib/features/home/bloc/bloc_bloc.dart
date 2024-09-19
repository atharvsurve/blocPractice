import 'dart:async';

import 'package:bloc/bloc.dart';
// import 'package:bloclearnapp/features/home/UI/home.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(BlocInitial()) {
    on<HomeProductWishListButtonClickedEvent>(
        homeProductWishListButtonClickedEvent);
    // on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);

    on<HomeWishListButtonNavigateEvent>(homeWishListButtonNavigateEvent);
    on<HomeCartButtonNavigateEvent>(homecartButtonNavigateEvent);
  }

  FutureOr<void> homeProductWishListButtonClickedEvent(
      HomeProductWishListButtonClickedEvent event, Emitter<HomeState> emit) {
    print("Wishlist Called");
  }

  FutureOr<void> homecartButtonNavigateEvent(
      HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {
    print("Cart Called");
    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeWishListButtonNavigateEvent(
      HomeWishListButtonNavigateEvent event, Emitter<HomeState> emit) {
    print("Wishlist Called");
    emit(HomeNavigateToWishListPageActionState());
  }
}
