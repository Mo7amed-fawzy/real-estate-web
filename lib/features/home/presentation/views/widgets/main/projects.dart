import 'package:flutter/material.dart';
import 'package:real_estate_app/core/responsive.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/features/home/data/models/projects.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Responsive(
          desktop: responsiveGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          tablet: responsiveGridView(
            itemCount: demoProjects.length,
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobilelarge: responsiveGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobile: responsiveGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
        )
      ],
    );
  }

  GridView responsiveGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      physics:
          const NeverScrollableScrollPhysics(), // لجعل الـ GridView غير قابل للتمرير إذا كان داخل ScrollView
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
