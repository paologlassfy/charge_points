import 'package:charge_points/src/model/address_info.dart';
import 'package:charge_points/src/model/connection_info.dart';
import 'package:charge_points/src/model/data_provider.dart';
import 'package:charge_points/src/model/media_item.dart';
import 'package:charge_points/src/model/operator_info.dart';
import 'package:charge_points/src/model/user_comment.dart';

class POI {
  int id;
  String uuid;
  List<UserComment> userComments;
  List<MediaItem> mediaItems;
  bool isRecentlyVerified;
  DateTime dateLastVerified;
  int? parentChargePointId;
  int dataProviderId;
  String? dataProvidersReference;
  int? operatorId;
  String? operatorsReference;
  int? usageTypeId;
  String? usageCost;
  AddressInfo addressInfo;
  List<ConnectionInfo> connections;
  int? numberOfPoints;
  String? generalComments;
  DateTime? datePlanned;
  DateTime? dateLastConfirmed;
  int? statusTypeId;
  DateTime dateLastStatusUpdate;
  List? metadataValues;
  int? dataQualityLevel;
  DateTime dateCreated;
  int? submissionStatusTypeId;
  DataProvider dataProvider;
  OperatorInfo? operatorInfo;
  UsageType? usageType;
  StatusType? statusType;
  SubmissionStatus submissionStatus;

  POI.fromJson(Map json)
      : id = json['ID'],
        uuid = json['UUID'],
        userComments = UserComments.fromJson(json['UserComments']),
        mediaItems = MediaItems.fromJson(json['MediaItems']),
        isRecentlyVerified = json['IsRecentlyVerified'],
        dateLastVerified = DateTime.parse(json['DateLastVerified']),
        parentChargePointId = json['ParentChargePointID'],
        dataProviderId = json['DataProviderID'],
        dataProvidersReference = json['DataProvidersReference'],
        operatorId = json['OperatorID'],
        operatorsReference = json['OperatorsReference'],
        usageTypeId = json['UsageTypeID'],
        usageCost = json['UsageCost'],
        addressInfo = AddressInfo.fromJson(json['AddressInfo']),
        connections = Connections.fromJson(json['Connections']),
        numberOfPoints = json['NumberOfPoints'],
        generalComments = json['GeneralComments'],
        datePlanned = json['DatePlanned'] == null
            ? null
            : DateTime.parse(json['DatePlanned']),
        dateLastConfirmed = json['DateLastConfirmed'] == null
            ? null
            : DateTime.parse(json['DateLastConfirmed']),
        statusTypeId = json['StatusTypeId'],
        dateLastStatusUpdate = DateTime.parse(json['DateLastStatusUpdate']),
        metadataValues = json['MetadataValues'],
        dataQualityLevel = json['DataQualityLevel'],
        dateCreated = DateTime.parse(json['DateCreated']),
        submissionStatusTypeId = json['SubmissionStatusTypeId'],
        dataProvider = DataProvider.fromJson(json['DataProvider']),
        operatorInfo = json['OperatorInfo'] == null
            ? null
            : OperatorInfo.fromJson(json['OperatorInfo']),
        usageType = json['UsageType'] == null
            ? null
            : UsageType.fromJson(json['UsageType']),
        statusType = json['StatusType'] == null
            ? null
            : StatusType.fromJson(json['StatusType']),
        submissionStatus = SubmissionStatus.fromJson(json['SubmissionStatus']);
}

class UsageType {
  bool? isPayAtLocation;
  bool? isMembershipRequired;
  bool? isAccessKeyRequired;
  int id;
  String title;

  UsageType.fromJson(Map json)
      : isPayAtLocation = json['IsPayAtLocation'],
        isMembershipRequired = json['IsMembershipRequired'],
        isAccessKeyRequired = json['IsAccessKeyRequired'],
        id = json['ID'],
        title = json['Title'];
}

class SubmissionStatus {
  int id;
  String title;
  bool? isLive;

  SubmissionStatus.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'],
        isLive = json['isLive'];
}
