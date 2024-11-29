import 'package:eaudelux/presentation/widgets/import_packages.dart';

class RestockRequest {
  final String perfumeName;
  final int requestedQuantity;
  String status;
  String branch;

  RestockRequest({
    required this.perfumeName,
    required this.requestedQuantity,
    required this.status,
    required this.branch,
  });
}

class RestockRequestList extends StatelessWidget {
  final List<RestockRequest> restockRequests;

  const RestockRequestList({super.key, required this.restockRequests});

  // Method to update the status (Approve/Reject)
  void updateRequestStatus(RestockRequest request, String newStatus) {
    // This is where you can update the request's status, such as calling an API to approve or reject.
    request.status = newStatus;
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Not Taken':
        return AppColors.azukiRed;
      case 'Processing':
        return AppColors.windsorBrown;
      case 'Finished':
        return AppColors.cucumber;
      default:
        return AppColors.abaddonBlack;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Restock Requests',
            style: AppTheme.blackInfoStyle,
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: restockRequests.length,
            itemBuilder: (context, index) {
              final request = restockRequests[index];
              return Card(
                color: AppColors.white,
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12.0),
                  title: Text(request.perfumeName),
                  subtitle:
                      Text('Requested Quantity: ${request.requestedQuantity} for ${request.branch}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        request.status,
                        style: AppTheme.actionStyle.copyWith(
                          color: _getStatusColor(request.status),
                        ),
                      ),
                      const SizedBox(width: 10),
                      if (request.status == 'Not Taken')
                        Flexible(
                          child: SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              style: AppTheme.actionButtonStyle,
                              onPressed: () {
                                updateRequestStatus(request, 'Processing');
                                // Update backend or API here as necessary
                              },
                              child: const Text('Processing'),
                            ),
                          ),
                        ),
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
