import 'package:auto_route/auto_route.dart';
import 'package:digit_data_model/models/entities/individual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registration_delivery/blocs/search_households/individual_global_search.dart';
import 'package:registration_delivery/data/repositories/local/individual_global_search.dart';
import 'package:registration_delivery/utils/extensions/extensions.dart';

import '../blocs/household_details/household_details.dart';
import '../blocs/search_households/proximity_search.dart';
import '../blocs/search_households/search_bloc_common_wrapper.dart';
import '../blocs/search_households/search_by_head.dart';
import '../blocs/search_households/search_households.dart';
import '../blocs/search_households/tag_by_search.dart';
import '../data/repositories/local/registration_delivery_address.dart';
import '../models/entities/household.dart';
import '../models/entities/household_member.dart';
import '../models/entities/project_beneficiary.dart';
import '../models/entities/referral.dart';
import '../models/entities/side_effect.dart';
import '../models/entities/task.dart';
import '../utils/utils.dart';

@RoutePage()
class RegistrationDeliveryWrapperPage extends StatelessWidget {
  const RegistrationDeliveryWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              return SearchHouseholdsBloc(
                  beneficiaryType:
                      RegistrationDeliverySingleton().beneficiaryType!,
                  userUid: RegistrationDeliverySingleton().loggedInUserUuid!,
                  projectId: RegistrationDeliverySingleton().projectId!,
                  addressRepository:
                      context.read<RegistrationDeliveryAddressRepo>(),
                  projectBeneficiary: context.repository<
                      ProjectBeneficiaryModel,
                      ProjectBeneficiarySearchModel>(context),
                  householdMember: context.repository<HouseholdMemberModel,
                      HouseholdMemberSearchModel>(context),
                  household:
                      context.repository<HouseholdModel, HouseholdSearchModel>(
                          context),
                  individual:
                      context.repository<IndividualModel, IndividualSearchModel>(
                          context),
                  taskDataRepository:
                      context.repository<TaskModel, TaskSearchModel>(context),
                  sideEffectDataRepository: context
                      .repository<SideEffectModel, SideEffectSearchModel>(context),
                  referralDataRepository: context.repository<ReferralModel, ReferralSearchModel>(context),
                  individualGlobalSearchRepository: context.read<IndividualGlobalSearchRepository>());
            },
          ),
          BlocProvider(
            create: (context) {
              return TagSearchBloc(
                beneficiaryType:
                    RegistrationDeliverySingleton().beneficiaryType!,
                userUid: RegistrationDeliverySingleton().loggedInUserUuid!,
                projectId: RegistrationDeliverySingleton().projectId!,
                addressRepository:
                    context.read<RegistrationDeliveryAddressRepo>(),
                projectBeneficiary: context.repository<ProjectBeneficiaryModel,
                    ProjectBeneficiarySearchModel>(context),
                householdMember: context.repository<HouseholdMemberModel,
                    HouseholdMemberSearchModel>(context),
                household: context
                    .repository<HouseholdModel, HouseholdSearchModel>(context),
                individual:
                    context.repository<IndividualModel, IndividualSearchModel>(
                        context),
                taskDataRepository:
                    context.repository<TaskModel, TaskSearchModel>(context),
                sideEffectDataRepository:
                    context.repository<SideEffectModel, SideEffectSearchModel>(
                        context),
                referralDataRepository: context
                    .repository<ReferralModel, ReferralSearchModel>(context),
                individualGlobalSearchRepository:
                    context.read<IndividualGlobalSearchRepository>(),
              );
            },
          ),
          BlocProvider(
            create: (context) {
              return IndividualGlobalSearchBloc(
                beneficiaryType:
                    RegistrationDeliverySingleton().beneficiaryType!,
                userUid: RegistrationDeliverySingleton().loggedInUserUuid!,
                projectId: RegistrationDeliverySingleton().projectId!,
                addressRepository:
                    context.read<RegistrationDeliveryAddressRepo>(),
                projectBeneficiary: context.repository<ProjectBeneficiaryModel,
                    ProjectBeneficiarySearchModel>(context),
                householdMember: context.repository<HouseholdMemberModel,
                    HouseholdMemberSearchModel>(context),
                household: context
                    .repository<HouseholdModel, HouseholdSearchModel>(context),
                individual:
                    context.repository<IndividualModel, IndividualSearchModel>(
                        context),
                taskDataRepository:
                    context.repository<TaskModel, TaskSearchModel>(context),
                sideEffectDataRepository:
                    context.repository<SideEffectModel, SideEffectSearchModel>(
                        context),
                referralDataRepository: context
                    .repository<ReferralModel, ReferralSearchModel>(context),
                individualGlobalSearchRepository:
                    context.read<IndividualGlobalSearchRepository>(),
              );
            },
          ),
          BlocProvider(
            create: (context) {
              return SearchBlocWrapper(
                searchHouseholdsBloc: context.read<SearchHouseholdsBloc>(),
                tagSearchBloc: context.read<TagSearchBloc>(),
                individualGlobalSearchBloc:
                    context.read<IndividualGlobalSearchBloc>(),
              );
            },
          ),
          BlocProvider(
            create: (_) => HouseholdDetailsBloc(const HouseholdDetailsState()),
          ),
        ],
        child: const AutoRouter(),
      ),
    );
  }
}
