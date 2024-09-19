part of 'bloc_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

final class BlocInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeNavigateToWishListPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}
