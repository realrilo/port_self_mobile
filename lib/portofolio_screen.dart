import 'package:flutter/material.dart';
import 'data/project_portofolio.dart';
import 'detail_screen.dart';

class PortofolioScreen extends StatelessWidget {
  const PortofolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rilo's Portfolio"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          // Access each project from the projectPortofolioList
          final ProjectPortofolio project = projectPortofolioList[index];
          return InkWell(
            onTap: () {
              // Navigate to DetailScreen when a project is tapped
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(project: project);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Display the first image from the project's imageUrls
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      project.imageUrls.isNotEmpty
                          ? project.imageUrls[0]
                          : 'https://via.placeholder.com/150',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                      width: 8.0), // Add some space between image and text
                  // Display the project details
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Project name
                          Text(
                            project.name,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Project type (e.g., Machine Learning)
                          Text(
                            project.tipeProject,
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Project description
                          Text(
                            project.description,
                            style: const TextStyle(fontSize: 12.0),
                            overflow: TextOverflow
                                .ellipsis, // Limit long text to a single line
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: projectPortofolioList.length, // Number of projects
      ),
    );
  }
}
