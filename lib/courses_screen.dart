import 'package:flutter/material.dart';
import 'app_theme.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> courses = [
      {
        'name': 'Artificial Intelligence',
        'faculty': 'Dr. A. Rao',
        'type': 'Theory',
        'time': '10:00 - 10:45 AM',
        'image': 'https://tse3.mm.bing.net/th?id=OIP.poP185-BZdC5zqEyAy6FhwHaDw&pid=Api&P=0&h=180',
        'description': 'Artificial Intelligence  Key Topics\n'
            '1. Introduction to AI\n'
            '2. Problem Solving and Search\n'
            '3. Knowledge Representation\n'
            '4. Expert Systems\n'
            '5. Machine Learning Basics\n'
            '6. Natural Language Processing (NLP)\n'
            '7. Planning and Decision Making\n'
            '8. AI Tools and Languages\n',
      },
      {
        'name': 'Data Structures Lab',
        'faculty': 'Ms. S. Sharma',
        'type': 'Lab',
        'time': '10:45 - 12:00 PM',
        'image': 'https://tse4.mm.bing.net/th?id=OIP.6YzqVulECP4xwnFQY5GpxQHaHa&pid=Api&P=0&h=180',
        'description': ' Data Structures Lab  Key Topics\n'
            '1. Arrays  Implementation and Applications\n'
            '2. Linked Lists  Singly, Doubly, and Circular\n'
            '3. Stacks Infix to Postfix, Expression Evaluation\n'
            '4. Queues  Simple, Circular, and Priority Queues\n'
            '5. Trees  Binary Trees, BST, Traversals\n'
            '6. Graphs  BFS, DFS, Representation Techniques\n'
            '7. Searching Algorithms  Linear and Binary Search\n'
            '8. Sorting Algorithms  Bubble, Selection, Insertion, Merge, Quick Sort\n'
      },
      {
        'name': 'Java Programming',
        'faculty': 'Dr. V. Gupta',
        'type': 'Theory',
        'time': '1:00 - 1:45 PM',
        'image': 'https://tse3.mm.bing.net/th?id=OIP.E5N1-dro1mHlMuUgK7XYsgAAAA&pid=Api&P=0&h=180',
        'description': ' Java Programming Key Topics\n'
            '1. Introduction to Java and JVM\n'
            '2. Data Types and Variables\n'
            '3. Operators and Expressions\n'
            '4. Control Flow Statements (if, switch, loops)\n'
            '5. Arrays and Strings\n'
            '6. Object-Oriented Programming (Classes, Objects)\n'
            '7. Inheritance and Polymorphism\n'
            '8. Exception Handling\n'
      },
      {
        'name': 'Python Programming',
        'faculty': 'Mr. B. Krishna',
        'type': 'Theory',
        'time': '1:45 - 2:30 PM',
        'image': 'https://tse4.mm.bing.net/th?id=OIP.KnOS3vOcNhLla8LSZw4TugHaHa&pid=Api&P=0&h=180',
        'description': ' Python Programming Key Topics\n'
            '1. Introduction to Python and Installation\n'
            '2. Variables, Data Types, and Operators\n'
            '3. Control Flow (if, else, loops)\n'
            '4. Functions and Modules\n'
            '5. Strings and String Functions\n'
            '6. Lists, Tuples, Sets, and Dictionaries\n'
            '7. File Handling (read/write files)\n'
            '8. Exception Handling\n'
      },
      {
        'name': 'DART Programming',
        'faculty': 'Mr. Y. Vasanth',
        'type': 'Theory',
        'time': '2:30 - 3:15 PM',
        'image': 'https://tse1.mm.bing.net/th?id=OIP.GT7ZaLV9fCpYNRqhiunHWAHaD4&pid=Api&P=0&h=180',
        'description': 'Dart Programming Key Topics\n'
            '1. Introduction to Dart and Setup\n'
            '2. Variables and Data Types\n'
            '3. Operators and Expressions\n'
            '4. Control Flow (if, else, switch, loops)\n'
            '5. Functions and Lambda Expressions\n'
            '6. Collections: Lists, Sets, and Maps\n'
            '7. Classes and Object-Oriented Programming\n'
            '8. Constructors and Inheritance\n'
            '9. Exception Handling\n'
      },
      {
        'name': 'Machine Learning Lab',
        'faculty': 'Ms. K. Nitya',
        'type': 'Lab',
        'time': '3:15 - 4:15 PM',
        'image': 'https://tse1.mm.bing.net/th?id=OIP.da0kQB2SUzpO2pzwO2xjBgHaDv&pid=Api&P=0&h=180',
        'description': 'Machine Learning Lab Key Topics\n'
            '1. Data Preprocessing Techniques\n'
            '2. Implementing Supervised Learning Algorithms\n'
            '3. Linear & Logistic Regression\n'
            '4. Classification (KNN, SVM, Decision Trees)\n'
            '5. Unsupervised Learning  K-Means Clustering\n'
            '6. Dimensionality Reduction PCA\n'
            '7. Model Evaluation & Cross Validation\n'
            '8. Implementing Neural Networks (Basics)\n'
      },
    ];

    return Container(
      decoration: AppTheme.gradientBackground,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title:Text("Courses"), centerTitle: true),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            final course = courses[index];
            return Card(
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 6,
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        course['image'] ?? '',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 80,
                          height: 80,
                          color: Colors.black26,
                          child: const Icon(Icons.image_not_supported, color: Colors.white70, size: 40),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(course['name'] ?? '',
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
                           SizedBox(height: 4),
                          Text('Faculty: ${course['faculty']}',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black)),
                           SizedBox(height: 6),
                          Row(
                            children: [
                               Icon(Icons.schedule, color: Colors.tealAccent, size: 18),
                              SizedBox(width: 6),
                              Flexible(
                                child: Text('${course['time']} | ${course['type']}',
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                           SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CourseDetailScreen(course: course),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child:Text('View'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CourseDetailScreen extends StatefulWidget {
  final Map<String, String> course;
  const CourseDetailScreen({super.key, required this.course});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  bool isEnrolled = false;

  void enroll() {
    setState(() => isEnrolled = true);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Enrollment Successful'),
        content: const Text('Thank you for enrolling!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  List<String> getTopicList(String? description) {
    if (description == null) return [];
    final lines = description.split('\n');
    return lines.skip(1).where((line) => line.isNotEmpty).toList();
  }

  @override
  Widget build(BuildContext context) {
    final course = widget.course;
    final topics = getTopicList(course['description']);

    return Container(
      decoration: AppTheme.gradientBackground,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(course['name'] ?? '')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text('Faculty: ${course['faculty']}', style: const TextStyle(color: Colors.black, fontSize: 17)),
              const SizedBox(height: 10),
              Text('Time: ${course['time']}', style: const TextStyle(color: Colors.black, fontSize: 17)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: isEnrolled ? null : enroll,
                child: Text(isEnrolled ? 'Enrolled' : 'Enroll'),
              ),
              SizedBox(height: 20),
             Text('Topics :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
              SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: topics.length,
                  separatorBuilder: (context, index) =>
                 Divider(color: Colors.transparent, height: 0.5),
                  itemBuilder: (context, index) => ListTile(
                    leading:Text('•', style: TextStyle(color: Colors.black, fontSize: 20)),
                    title: Text(
                      topics[index],
                      style:TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    contentPadding:EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}