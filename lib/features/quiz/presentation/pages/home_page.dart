import 'package:flutter/material.dart';
import '../../../../common/common_app_bar.dart';
import '../widgets/topic_selector_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(title: 'Quiz App'),
      backgroundColor: Color(0xFFD8E5F9),
      body: TopicSelectorWidget(),
    );
  }
}
