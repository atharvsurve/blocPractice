import 'package:bloclearnapp/features/cart/ui/cart.dart';
import 'package:bloclearnapp/features/home/bloc/bloc_bloc.dart';
import 'package:bloclearnapp/features/wishlist/ui/Wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Cart()));
        }

        if (state is HomeNavigateToWishListPageActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Wishlist()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Surve kirana",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
            actions: [
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeWishListButtonNavigateEvent());
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeCartButtonNavigateEvent());
                  },
                  icon: const Icon(Icons.trolley)),
            ],
          ),
        );
      },
    );
  }
}
