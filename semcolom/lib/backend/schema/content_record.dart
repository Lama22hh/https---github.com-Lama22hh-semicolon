import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentRecord extends FirestoreRecord {
  ContentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nameOfCourse" field.
  String? _nameOfCourse;
  String get nameOfCourse => _nameOfCourse ?? '';
  bool hasNameOfCourse() => _nameOfCourse != null;

  // "typeOfContent" field.
  String? _typeOfContent;
  String get typeOfContent => _typeOfContent ?? '';
  bool hasTypeOfContent() => _typeOfContent != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "nameOfLesson" field.
  String? _nameOfLesson;
  String get nameOfLesson => _nameOfLesson ?? '';
  bool hasNameOfLesson() => _nameOfLesson != null;

  // "ifVideo" field.
  String? _ifVideo;
  String get ifVideo => _ifVideo ?? '';
  bool hasIfVideo() => _ifVideo != null;

  void _initializeFields() {
    _nameOfCourse = snapshotData['nameOfCourse'] as String?;
    _typeOfContent = snapshotData['typeOfContent'] as String?;
    _title = snapshotData['title'] as String?;
    _link = snapshotData['link'] as String?;
    _nameOfLesson = snapshotData['nameOfLesson'] as String?;
    _ifVideo = snapshotData['ifVideo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('content');

  static Stream<ContentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContentRecord.fromSnapshot(s));

  static Future<ContentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContentRecord.fromSnapshot(s));

  static ContentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContentRecordData({
  String? nameOfCourse,
  String? typeOfContent,
  String? title,
  String? link,
  String? nameOfLesson,
  String? ifVideo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameOfCourse': nameOfCourse,
      'typeOfContent': typeOfContent,
      'title': title,
      'link': link,
      'nameOfLesson': nameOfLesson,
      'ifVideo': ifVideo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContentRecordDocumentEquality implements Equality<ContentRecord> {
  const ContentRecordDocumentEquality();

  @override
  bool equals(ContentRecord? e1, ContentRecord? e2) {
    return e1?.nameOfCourse == e2?.nameOfCourse &&
        e1?.typeOfContent == e2?.typeOfContent &&
        e1?.title == e2?.title &&
        e1?.link == e2?.link &&
        e1?.nameOfLesson == e2?.nameOfLesson &&
        e1?.ifVideo == e2?.ifVideo;
  }

  @override
  int hash(ContentRecord? e) => const ListEquality().hash([
        e?.nameOfCourse,
        e?.typeOfContent,
        e?.title,
        e?.link,
        e?.nameOfLesson,
        e?.ifVideo
      ]);

  @override
  bool isValidKey(Object? o) => o is ContentRecord;
}
