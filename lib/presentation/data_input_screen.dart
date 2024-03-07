import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class DataInputScreen extends StatefulWidget {
  const DataInputScreen({
    super.key,
    required this.cameras,
  });

  final List<CameraDescription> cameras;

  @override
  State<DataInputScreen> createState() => _DataInputScreenState();
}

class _DataInputScreenState extends State<DataInputScreen> {
  late CameraController _controller;

  @override
  void initState() {
    _controller = CameraController(widget.cameras[0], ResolutionPreset.max);
    _controller.initialize().then((_) {
      if (!context.mounted) {
        return;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: availableCameras(),
      builder: (context, snapshot) {
        final cameras = snapshot.connectionState == ConnectionState.done
            ? snapshot.data as List<CameraDescription>
            : <CameraDescription>[];
        return Scaffold(
          appBar: AppBar(
            title: const Text('Data Input Screen'),
          ),
          body: cameras.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Builder(
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 160, child: CameraPreview(_controller)),
                        const SizedBox(height: 32),
                        const Text('Input your data here'),
                        const SizedBox(height: 16),
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Data Text',
                          ),
                        ),
                      ],
                    );
                  },
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed logic here
            },
            tooltip: 'Send',
            child: const Icon(Icons.send),
          ),
        );
      },
    );
  }
}
