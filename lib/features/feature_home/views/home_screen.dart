import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/base/extensions.dart';
import 'package:myapp/blocs/home/home_bloc.dart';
import 'package:myapp/features/feature_home/ui_components/recipe_item.dart';
import 'package:myapp/features/shared/scaffold_page.dart';
import 'package:myapp/view_models/recipe/recipe_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.initialize());
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      title: context.locale.home,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return switch (state) {
            HomeUninitializezState() => _buildLoading(),
            HomeInitializedState(recipes: final recipes) => _buildInitialized(
              context,
              recipes,
            ),
            HomeLoadingState() => _buildLoading(),
            HomeErrorState() => _buildError(context),
          };
        },
      ),
    );
  }

  Widget _buildInitialized(
    BuildContext context,
    List<RecipeViewModel> recipes,
  ) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              final recipeViewModel = recipes[index];

              return RecipeItem(
                recipeViewModel: recipeViewModel,
                onPressed: () {
                  context.pushNamed(
                    'recipe',
                    pathParameters: {'id': recipeViewModel.id.toString()},
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLoading() {
    return const Center(child: CupertinoActivityIndicator());
  }

  Widget _buildError(BuildContext context) {
    return Center(child: Text(context.locale.somethingWentWrong));
  }
}
