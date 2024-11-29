import 'package:eaudelux/entities/defect.dart';

import '../../../widgets/import_packages.dart';

class DefectList extends StatefulWidget {
  final List<Defect> defects;

  const DefectList({super.key, required this.defects});

  @override
  State<DefectList> createState() => _DefectListState();
}

class _DefectListState extends State<DefectList> {
  final TextEditingController _solutionController = TextEditingController();

  @override
  void dispose() {
    _solutionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.defects.isEmpty) {
      return const Center(
        child: Text(
          'No defects reported.',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: AppTheme.defaultBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Defect List',
              style: AppTheme.blackInfoStyle,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.defects.length,
              itemBuilder: (context, index) {
                final defect = widget.defects[index];
                return Card(
                  color: AppColors.white,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Report from branch ${defect.fromBranch ?? ''}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Chip(
                              label: Text(
                                defect.defectResolved
                                    ? 'Resolved'
                                    : 'Unresolved',
                                style: TextStyle(
                                  color: defect.defectResolved
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                              backgroundColor: defect.defectResolved
                                  ? Colors.green[50]
                                  : Colors.red[50],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Defective Units: ${defect.defectiveUnits}',
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Reason: ${defect.defectReason}',
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Case: ${defect.defectCase}',
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Date: ${defect.defectDate}',
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 12),
                        // If the defect is unresolved, show the solution input area
                        if (!defect.defectResolved) ...[
                          TextField(
                            controller: _solutionController,
                            decoration: const InputDecoration(
                              labelText: 'Enter solution',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {
                              if (_solutionController.text.isNotEmpty) {
                                setState(() {
                                  defect.resolveDefect(_solutionController.text);
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Defect marked as resolved!')),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Please enter a solution.')),
                                );
                              }
                            },
                            child: const Text('Mark as Solved'),
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }
  }
}
