import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const PageLoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const PageLoginWidget(),
        ),
        FFRoute(
          name: 'pageLogin',
          path: '/pageLogin',
          builder: (context, params) => const PageLoginWidget(),
        ),
        FFRoute(
          name: 'DashboardPage',
          path: '/dashboardPage',
          builder: (context, params) => DashboardPageWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.int,
            ),
            glbSenha: params.getParam(
              'glbSenha',
              ParamType.String,
            ),
            gblLogin: params.getParam(
              'gblLogin',
              ParamType.String,
            ),
            gblDependente: params.getParam(
              'gblDependente',
              ParamType.int,
            ),
            gblDivulgacao: params.getParam(
              'gblDivulgacao',
              ParamType.String,
            ),
            gblNumeroAns: params.getParam(
              'gblNumeroAns',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'CarteirinhaVirtualOLD',
          path: '/carteirinhaVirtualOLD',
          builder: (context, params) => CarteirinhaVirtualOLDWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.String,
            ),
            gblDependente: params.getParam(
              'gblDependente',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'redeCredenciada',
          path: '/redeCredenciada',
          builder: (context, params) => RedeCredenciadaWidget(
            varMatricula: params.getParam(
              'varMatricula',
              ParamType.int,
            ),
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.int,
            ),
            gblDependente: params.getParam(
              'gblDependente',
              ParamType.int,
            ),
            gblDivulgacao: params.getParam(
              'gblDivulgacao',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'segundaBoleto',
          path: '/segundaBoleto',
          builder: (context, params) => SegundaBoletoWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.int,
            ),
            gblDependente: params.getParam(
              'gblDependente',
              ParamType.int,
            ),
            gblDivulgacao: params.getParam(
              'gblDivulgacao',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'atendimentosRealizados',
          path: '/atendimentosRealizados',
          builder: (context, params) => AtendimentosRealizadosWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.String,
            ),
            gblDependente: params.getParam(
              'gblDependente',
              ParamType.String,
            ),
            gblDivulgacao: params.getParam(
              'gblDivulgacao',
              ParamType.String,
            ),
            gblNumeroAns: params.getParam(
              'gblNumeroAns',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'guiasLiberadas',
          path: '/guiasLiberadas',
          builder: (context, params) => GuiasLiberadasWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.String,
            ),
            gblDependente: params.getParam(
              'gblDependente',
              ParamType.String,
            ),
            gblDivulgacao: params.getParam(
              'gblDivulgacao',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'quitacaoAnual',
          path: '/quitacaoAnual',
          builder: (context, params) => QuitacaoAnualWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.int,
            ),
            gblAnoQuitacaoAnual: params.getParam(
              'gblAnoQuitacaoAnual',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'impostoRenda',
          path: '/impostoRenda',
          builder: (context, params) => ImpostoRendaWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.int,
            ),
            gblAnoImpostoDeRenda: params.getParam(
              'gblAnoImpostoDeRenda',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'pageLoginCopy',
          path: '/pageLoginCopy',
          builder: (context, params) => const PageLoginCopyWidget(),
        ),
        FFRoute(
          name: 'CarteirinhaVirtual',
          path: '/carteirinhaVirtual',
          builder: (context, params) => CarteirinhaVirtualWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.String,
            ),
            gblDependente: params.getParam(
              'gblDependente',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'DashboardPageCopy',
          path: '/dashboardPageCopy',
          builder: (context, params) => DashboardPageCopyWidget(
            gblMatricula: params.getParam(
              'gblMatricula',
              ParamType.int,
            ),
            glbSenha: params.getParam(
              'glbSenha',
              ParamType.String,
            ),
            gblLogin: params.getParam(
              'gblLogin',
              ParamType.String,
            ),
            gblDependente: params.getParam(
              'gblDependente',
              ParamType.int,
            ),
            gblDivulgacao: params.getParam(
              'gblDivulgacao',
              ParamType.String,
            ),
            gblNumeroAns: params.getParam(
              'gblNumeroAns',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'configuracoes',
          path: '/configuracoes',
          builder: (context, params) => const ConfiguracoesWidget(),
        ),
        FFRoute(
          name: 'linksUteis',
          path: '/linksUteis',
          builder: (context, params) => const LinksUteisWidget(),
        ),
        FFRoute(
          name: 'politicaPrivacidade',
          path: '/politicaPrivacidade',
          builder: (context, params) => const PoliticaPrivacidadeWidget(),
        ),
        FFRoute(
          name: 'novidades',
          path: '/novidades',
          builder: (context, params) => const NovidadesWidget(),
        ),
        FFRoute(
          name: 'CartaPermanencia',
          path: '/cartaPermanencia',
          builder: (context, params) => const CartaPermanenciaWidget(),
        ),
        FFRoute(
          name: 'novidadesCopy',
          path: '/novidadesCopy',
          builder: (context, params) => const NovidadesCopyWidget(),
        ),
        FFRoute(
          name: 'envioGuiasBeneficiario',
          path: '/envioGuiasBeneficiario',
          builder: (context, params) => EnvioGuiasBeneficiarioWidget(
            dependente: params.getParam(
              'dependente',
              ParamType.int,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
