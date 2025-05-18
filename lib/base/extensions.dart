import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/base/helpers.dart';
import 'package:myapp/theme/app_localizations.dart';

extension BlocProviderWrapper on Widget {
  Widget createWithProvider<T extends BlocBase<Object?>>(
    T Function(BuildContext context) createBloc, {
    Key? key,
    bool lazy = true,
  }) {
    return BlocProvider(create: createBloc, key: key, lazy: lazy, child: this);
  }

  Widget createWithMultiProvider(
    List<BlocProvider> Function() createBlocs, {
    Key? key,
  }) {
    return MultiBlocProvider(providers: createBlocs(), key: key, child: this);
  }
}

extension LocaleWrapperExtension on BuildContext {
  AppLocalizations get locale => get<AppLocalizations>();
}
