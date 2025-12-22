import 'package:flutter/material.dart';

class PostProjectPage extends StatefulWidget {
  const PostProjectPage({super.key});

  @override
  State<PostProjectPage> createState() => _PostProjectPageState();
}

class _PostProjectPageState extends State<PostProjectPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submitProject() {
    if (_formKey.currentState!.validate()) {
      // Here you can send the data to Firebase / API
      String title = _titleController.text.trim();
      String description = _descriptionController.text.trim();

      // Simple confirmation dialog
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Project Submitted!'),
          content: Text('Title: $title\nDescription: $description'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            )
          ],
        ),
      );

      // Clear form after submission
      _titleController.clear();
      _descriptionController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post a Project')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Project Title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Enter project title' : null,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Project Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                validator: (value) => value == null || value.isEmpty
                    ? 'Enter project description'
                    : null,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _submitProject,
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
                child: const Text('Submit Project'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
