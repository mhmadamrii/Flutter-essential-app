import 'package:basic/bloc/pizza_bloc.dart';
import 'package:basic/models/pizza_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PizzaBloc()..add(LoadPizzaCounter()),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bloc',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: BlocBuilder<PizzaBloc, PizzaState>(
          builder: (context, state) {
            if (state is PizzaInitial) {
              return const CircularProgressIndicator(
                color: Colors.orange,
              );
            }
            if (state is PizzaLoaded) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${state.pizzas.length}',
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    child: Stack(
                      children: [
                        for (int index = 0;
                            index < state.pizzas.length;
                            index++)
                          Positioned(
                            child: SizedBox(
                              child: state.pizzas[index].image,
                            ),
                          )
                      ],
                    ),
                  )
                ],
              );
            } else {
              return const Text(
                'Something went wrong',
              );
            }
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     context.read<PizzaBloc>().add(
      //           AddPizza(
      //             Pizza.pizzas[0],
      //           ),
      //         );
      //   },
      //   child: const Icon(
      //     Icons.local_pizza,
      //   ),
      // ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<PizzaBloc>().add(
                    AddPizza(
                      Pizza.pizzas[0],
                    ),
                  );
            },
            child: const Icon(
              Icons.local_pizza_outlined,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<PizzaBloc>().add(
                    AddPizza(
                      Pizza.pizzas[1],
                    ),
                  );
            },
            child: const Icon(
              Icons.local_pizza,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<PizzaBloc>().add(
                    RemovePizza(
                      Pizza.pizzas[1],
                    ),
                  );
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
