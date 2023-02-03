// Generated using mason. Do not modify by hand

import '../../../models/data_model.dart';
import '../../data_repository.dart';

class ProjectBeneficiaryRemoteRepository extends RemoteRepository<ProjectBeneficiaryModel, ProjectBeneficiarySearchModel> {
  ProjectBeneficiaryRemoteRepository(
    super.dio, {
    required super.searchPath,
    required super.createPath,
    required super.updatePath,
    super.entityName = 'ProjectBeneficiary',
  });

  @override
  DataModelType get type => DataModelType.projectBeneficiary;
}
