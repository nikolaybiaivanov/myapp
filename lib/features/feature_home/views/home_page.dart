import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/blocs/home/home_bloc.dart';
import 'package:myapp/features/shared/scaffold_page.dart';
import 'package:myapp/models/recipe_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<HomeBloc>()
          .add(const HomeEvent.initialize());
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
        title: 'Home',
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return switch(state) {
              HomeUninitializezState() => _buildLoading(),
              HomeInitializedState(recipes: final recipes) => _buildInitialized(context, recipes),
              HomeLoadingState() => _buildLoading(),
              HomeErrorState() => _buildError(),
            };
          },
        ),
    );
  }

  Widget _buildInitialized(BuildContext context, List<RecipeModel> recipes) {
     return const Column(
       children: [
         Text('Recipes'),
       ],
     );
  }

  Widget _buildLoading() {
    return const Center(child: CupertinoActivityIndicator());
  }

  Widget _buildError() {
    return const Center(child: Text('Something went wrong.'));
  }
}
