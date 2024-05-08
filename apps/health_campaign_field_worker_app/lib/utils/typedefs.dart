import 'package:attendance_management/attendance_management.dart';
import 'package:digit_data_model/data_model.dart';
import 'package:inventory_management/inventory_management.dart';

import '../models/entities/hcm_hf_referral.dart';
import '../models/entities/product.dart';
import '../models/entities/project_staff.dart';
import '../models/entities/user.dart';

typedef FacilityDataRepository
    = DataRepository<FacilityModel, FacilitySearchModel>;
typedef AddressDataRepository
    = DataRepository<AddressModel, AddressSearchModel>;
typedef IndividualDataRepository
    = DataRepository<IndividualModel, IndividualSearchModel>;
typedef ProductDataRepository
    = DataRepository<ProductModel, ProductSearchModel>;
typedef ProductVariantDataRepository
    = DataRepository<ProductVariantModel, ProductVariantSearchModel>;
typedef ProjectDataRepository
    = DataRepository<ProjectModel, ProjectSearchModel>;
typedef ProjectFacilityDataRepository
    = DataRepository<ProjectFacilityModel, ProjectFacilitySearchModel>;
typedef ProjectProductVariantDataRepository = DataRepository<
    ProjectProductVariantModel, ProjectProductVariantSearchModel>;
typedef ProjectResourceDataRepository
    = DataRepository<ProjectResourceModel, ProjectResourceSearchModel>;
typedef ProjectStaffDataRepository
    = DataRepository<ProjectStaffModel, ProjectStaffSearchModel>;
typedef ServiceDefinitionDataRepository
    = DataRepository<ServiceDefinitionModel, ServiceDefinitionSearchModel>;
typedef ServiceDataRepository
    = DataRepository<ServiceModel, ServiceSearchModel>;
typedef PgrServiceDataRepository
    = DataRepository<PgrServiceModel, PgrServiceSearchModel>;

typedef UserDataRepository = DataRepository<UserModel, UserSearchModel>;
typedef HFReferralDataRepository
    = DataRepository<HcmHFReferralModel, HcmHFReferralSearchModel>;
typedef AttendanceDataRepository
    = DataRepository<AttendanceRegisterModel, AttendanceRegisterSearchModel>;
typedef AttendanceLogDataRepository
    = DataRepository<AttendanceLogModel, AttendanceLogSearchModel>;

typedef StockDataRepository = DataRepository<StockModel, StockSearchModel>;
typedef StockReconciliationDataRepository
    = DataRepository<StockReconciliationModel, StockReconciliationSearchModel>;
