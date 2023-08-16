import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FindpharmaRecord extends FirestoreRecord {
  FindpharmaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "pharmacyPhone" field.
  String? _pharmacyPhone;
  String get pharmacyPhone => _pharmacyPhone ?? '';
  bool hasPharmacyPhone() => _pharmacyPhone != null;

  // "pharmacyImg" field.
  String? _pharmacyImg;
  String get pharmacyImg => _pharmacyImg ?? '';
  bool hasPharmacyImg() => _pharmacyImg != null;

  // "pharmacyEmail" field.
  String? _pharmacyEmail;
  String get pharmacyEmail => _pharmacyEmail ?? '';
  bool hasPharmacyEmail() => _pharmacyEmail != null;

  // "pharmacyPerson" field.
  DocumentReference? _pharmacyPerson;
  DocumentReference? get pharmacyPerson => _pharmacyPerson;
  bool hasPharmacyPerson() => _pharmacyPerson != null;

  // "pharmacyName" field.
  String? _pharmacyName;
  String get pharmacyName => _pharmacyName ?? '';
  bool hasPharmacyName() => _pharmacyName != null;

  // "pharmacyDescription" field.
  String? _pharmacyDescription;
  String get pharmacyDescription => _pharmacyDescription ?? '';
  bool hasPharmacyDescription() => _pharmacyDescription != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _location = snapshotData['location'] as LatLng?;
    _pharmacyPhone = snapshotData['pharmacyPhone'] as String?;
    _pharmacyImg = snapshotData['pharmacyImg'] as String?;
    _pharmacyEmail = snapshotData['pharmacyEmail'] as String?;
    _pharmacyPerson = snapshotData['pharmacyPerson'] as DocumentReference?;
    _pharmacyName = snapshotData['pharmacyName'] as String?;
    _pharmacyDescription = snapshotData['pharmacyDescription'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('findpharma');

  static Stream<FindpharmaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FindpharmaRecord.fromSnapshot(s));

  static Future<FindpharmaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FindpharmaRecord.fromSnapshot(s));

  static FindpharmaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FindpharmaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FindpharmaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FindpharmaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FindpharmaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FindpharmaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFindpharmaRecordData({
  LatLng? location,
  String? pharmacyPhone,
  String? pharmacyImg,
  String? pharmacyEmail,
  DocumentReference? pharmacyPerson,
  String? pharmacyName,
  String? pharmacyDescription,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'pharmacyPhone': pharmacyPhone,
      'pharmacyImg': pharmacyImg,
      'pharmacyEmail': pharmacyEmail,
      'pharmacyPerson': pharmacyPerson,
      'pharmacyName': pharmacyName,
      'pharmacyDescription': pharmacyDescription,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class FindpharmaRecordDocumentEquality implements Equality<FindpharmaRecord> {
  const FindpharmaRecordDocumentEquality();

  @override
  bool equals(FindpharmaRecord? e1, FindpharmaRecord? e2) {
    return e1?.location == e2?.location &&
        e1?.pharmacyPhone == e2?.pharmacyPhone &&
        e1?.pharmacyImg == e2?.pharmacyImg &&
        e1?.pharmacyEmail == e2?.pharmacyEmail &&
        e1?.pharmacyPerson == e2?.pharmacyPerson &&
        e1?.pharmacyName == e2?.pharmacyName &&
        e1?.pharmacyDescription == e2?.pharmacyDescription &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(FindpharmaRecord? e) => const ListEquality().hash([
        e?.location,
        e?.pharmacyPhone,
        e?.pharmacyImg,
        e?.pharmacyEmail,
        e?.pharmacyPerson,
        e?.pharmacyName,
        e?.pharmacyDescription,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is FindpharmaRecord;
}
