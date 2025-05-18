import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/base/extensions.dart';
import 'package:myapp/blocs/recipe/recipe_bloc.dart';
import 'package:myapp/features/feature_home/ui_components/recipe_body.dart';
import 'package:myapp/features/shared/scaffold_page.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({required this.id, super.key});

  final int id;

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<RecipeBloc>().add(RecipeEvent.initialize(id: widget.id));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      title: 'Recipe',
      body: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          return switch (state) {
            RecipeUninitializezState() => _buildLoading(),
            RecipeInitializedState(recipe: final recipe) => Padding(
              padding: const EdgeInsets.all(8),
              child: RecipeBody(recipeViewModel: recipe),
            ),
            RecipeLoadingState() => _buildLoading(),
            RecipeErrorState() => _buildError(context),
          };
        },
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(child: CupertinoActivityIndicator());
  }

  Widget _buildError(BuildContext context) {
    return Center(child: Text(context.locale.somethingWentWrong));
  }
}
