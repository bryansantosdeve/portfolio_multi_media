import 'package:bryan_portfolio_dev/device/presentation/about_app_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class AboutAppPage extends StatefulWidget {
  const AboutAppPage({super.key});

  @override
  State<StatefulWidget> createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
  final store = GetIt.I.get<AboutAppStore>();

  @override
  void initState() {
    super.initState();
    store.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _aboutAppContent(),
      ),
    );
  }

  /// Ícone da página.
  Widget _iconAboutPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Icon(
          Icons.flutter_dash_rounded,
          size: 150,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  /// Conteúdo da página "Sobre".
  Widget _aboutAppContent() {
    return Observer(
      builder: (_) => Column(
        children: [
          _iconAboutPage(context),
          const SizedBox(
            height: 20.0,
          ),
          _aboutAppRow('SISTEMA OPERACIONAL:', store.platform),
          const SizedBox(
            height: 10.0,
          ),
          _aboutAppRow('VERSÃO DO OS:', store.osVersion),
          const SizedBox(
            height: 10.0,
          ),
          _aboutAppRow('MARCA DO DISPOSITIVO:', store.manufacturer),
          const SizedBox(
            height: 10.0,
          ),
          _aboutAppRow('ID DO DISPOSITIVO:', store.deviceId),
          const SizedBox(
            height: 20,
          ),
          _aboutAppRow('NOME DO DISPOSITIVO:', store.deviceName),
        ],
      ),
    );
  }

  /// Linha que contêm informações sobre o aplicativo e dispositivo.
  Widget _aboutAppRow(String key, String? value) {
    return Row(
      children: [
        Expanded(
          child: Text(key),
        ),
        Expanded(
          child: Text(value ?? ''),
        )
      ],
    );
  }
}
