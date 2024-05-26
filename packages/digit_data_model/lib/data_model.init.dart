// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

import 'data_model.dart' as p0;
import 'models/entities/address.dart' as p1;
import 'models/entities/address_type.dart' as p2;
import 'models/entities/attributes.dart' as p3;
import 'models/entities/beneficiary_type.dart' as p4;
import 'models/entities/blood_group.dart' as p5;
import 'models/entities/boundary.dart' as p6;
import 'models/entities/document.dart' as p7;
import 'models/entities/facility.dart' as p8;
import 'models/entities/gender.dart' as p9;
import 'models/entities/identifier.dart' as p10;
import 'models/entities/individual.dart' as p11;
import 'models/entities/locality.dart' as p12;
import 'models/entities/name.dart' as p13;
import 'models/entities/product.dart' as p14;
import 'models/entities/product_variant.dart' as p15;
import 'models/entities/project.dart' as p16;
import 'models/entities/project_facility.dart' as p17;
import 'models/entities/project_product_variant.dart' as p18;
import 'models/entities/project_resource.dart' as p19;
import 'models/entities/project_staff.dart' as p20;
import 'models/entities/project_type.dart' as p21;
import 'models/entities/service.dart' as p22;
import 'models/entities/service_attributes.dart' as p23;
import 'models/entities/service_definition.dart' as p24;
import 'models/entities/target.dart' as p25;
import 'models/entities/user.dart' as p26;
import 'models/oplog/oplog_entry.dart' as p27;
import 'models/pgr_complaints/pgr_address.dart' as p28;
import 'models/pgr_complaints/pgr_complaints.dart' as p29;
import 'models/pgr_complaints/pgr_complaints_response.dart' as p30;

void initializeMappers() {
  p0.EntityModelMapper.ensureInitialized();
  p0.EntitySearchModelMapper.ensureInitialized();
  p0.AdditionalFieldsMapper.ensureInitialized();
  p0.AdditionalFieldMapper.ensureInitialized();
  p0.ClientAuditDetailsMapper.ensureInitialized();
  p0.AuditDetailsMapper.ensureInitialized();
  p1.AddressSearchModelMapper.ensureInitialized();
  p1.AddressModelMapper.ensureInitialized();
  p1.AddressAdditionalFieldsMapper.ensureInitialized();
  p2.AddressTypeMapper.ensureInitialized();
  p3.AttributesSearchModelMapper.ensureInitialized();
  p3.AttributesModelMapper.ensureInitialized();
  p3.AttributesAdditionalFieldsMapper.ensureInitialized();
  p4.BeneficiaryTypeMapper.ensureInitialized();
  p5.BloodGroupMapper.ensureInitialized();
  p6.BoundarySearchModelMapper.ensureInitialized();
  p6.BoundaryModelMapper.ensureInitialized();
  p7.DocumentSearchModelMapper.ensureInitialized();
  p7.DocumentModelMapper.ensureInitialized();
  p7.DocumentAdditionalFieldsMapper.ensureInitialized();
  p8.FacilitySearchModelMapper.ensureInitialized();
  p8.FacilityModelMapper.ensureInitialized();
  p8.FacilityAdditionalFieldsMapper.ensureInitialized();
  p9.GenderMapper.ensureInitialized();
  p10.IdentifierSearchModelMapper.ensureInitialized();
  p10.IdentifierModelMapper.ensureInitialized();
  p10.IdentifierAdditionalFieldsMapper.ensureInitialized();
  p11.IndividualSearchModelMapper.ensureInitialized();
  p11.IndividualModelMapper.ensureInitialized();
  p11.IndividualAdditionalFieldsMapper.ensureInitialized();
  p12.LocalitySearchModelMapper.ensureInitialized();
  p12.LocalityModelMapper.ensureInitialized();
  p12.LocalityAdditionalFieldsMapper.ensureInitialized();
  p13.NameSearchModelMapper.ensureInitialized();
  p13.NameModelMapper.ensureInitialized();
  p13.NameAdditionalFieldsMapper.ensureInitialized();
  p14.ProductSearchModelMapper.ensureInitialized();
  p14.ProductModelMapper.ensureInitialized();
  p14.ProductAdditionalFieldsMapper.ensureInitialized();
  p15.ProductVariantSearchModelMapper.ensureInitialized();
  p15.ProductVariantModelMapper.ensureInitialized();
  p15.ProductVariantAdditionalFieldsMapper.ensureInitialized();
  p16.ProjectSearchModelMapper.ensureInitialized();
  p16.ProjectModelMapper.ensureInitialized();
  p16.ProjectAdditionalFieldsMapper.ensureInitialized();
  p16.ProjectAdditionalDetailsMapper.ensureInitialized();
  p17.ProjectFacilitySearchModelMapper.ensureInitialized();
  p17.ProjectFacilityModelMapper.ensureInitialized();
  p17.ProjectFacilityAdditionalFieldsMapper.ensureInitialized();
  p18.ProjectProductVariantSearchModelMapper.ensureInitialized();
  p18.ProjectProductVariantModelMapper.ensureInitialized();
  p18.ProjectProductVariantAdditionalFieldsMapper.ensureInitialized();
  p19.ProjectResourceSearchModelMapper.ensureInitialized();
  p19.ProjectResourceModelMapper.ensureInitialized();
  p19.ProjectResourceAdditionalFieldsMapper.ensureInitialized();
  p20.ProjectStaffSearchModelMapper.ensureInitialized();
  p20.ProjectStaffModelMapper.ensureInitialized();
  p20.ProjectStaffAdditionalFieldsMapper.ensureInitialized();
  p21.ProjectTypeModelMapper.ensureInitialized();
  p21.ProjectTypeAdditionalFieldsMapper.ensureInitialized();
  p21.ProjectCycleMapper.ensureInitialized();
  p21.ProjectCycleDeliveryMapper.ensureInitialized();
  p21.DeliveryDoseCriteriaMapper.ensureInitialized();
  p21.DeliveryProductVariantMapper.ensureInitialized();
  p22.ServiceSearchModelMapper.ensureInitialized();
  p22.ServiceModelMapper.ensureInitialized();
  p22.ServiceAdditionalFieldsMapper.ensureInitialized();
  p23.ServiceAttributesSearchModelMapper.ensureInitialized();
  p23.ServiceAttributesModelMapper.ensureInitialized();
  p23.ServiceAttributesAdditionalFieldsMapper.ensureInitialized();
  p24.ServiceDefinitionSearchModelMapper.ensureInitialized();
  p24.ServiceDefinitionModelMapper.ensureInitialized();
  p24.ServiceDefinitionAdditionalFieldsMapper.ensureInitialized();
  p25.TargetSearchModelMapper.ensureInitialized();
  p25.TargetModelMapper.ensureInitialized();
  p25.TargetAdditionalFieldsMapper.ensureInitialized();
  p26.UserSearchModelMapper.ensureInitialized();
  p26.UserModelMapper.ensureInitialized();
  p26.UserAdditionalFieldsMapper.ensureInitialized();
  p27.OpLogEntryMapper.ensureInitialized();
  p27.AdditionalIdMapper.ensureInitialized();
  p27.DataOperationMapper.ensureInitialized();
  p27.ApiOperationMapper.ensureInitialized();
  p28.PgrAddressModelMapper.ensureInitialized();
  p28.GeoLocationMapper.ensureInitialized();
  p29.PgrComplaintModelMapper.ensureInitialized();
  p29.PgrComplainantModelMapper.ensureInitialized();
  p29.PgrRolesModelMapper.ensureInitialized();
  p29.PgrServiceSearchModelMapper.ensureInitialized();
  p29.PgrServiceModelMapper.ensureInitialized();
  p29.PgrWorkflowModelMapper.ensureInitialized();
  p29.PgrFiltersMapper.ensureInitialized();
  p29.PgrSearchKeysMapper.ensureInitialized();
  p29.PgrAdditionalDetailsMapper.ensureInitialized();
  p29.PgrServiceApplicationStatusMapper.ensureInitialized();
  p30.PgrServiceCreateResponseModelMapper.ensureInitialized();
  p30.PgrComplaintResponseModelMapper.ensureInitialized();
  p30.PgrComplainantResponseModelMapper.ensureInitialized();
  p30.PgrServiceResponseModelMapper.ensureInitialized();
}