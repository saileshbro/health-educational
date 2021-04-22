// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drug _$DrugFromJson(Map<String, dynamic> json) {
  return Drug(
    brandName: json['brandName'] as String,
    genericName: json['genericName'] as String,
    imageUrl: json['imageUrl'] as String,
    dose: json['dose'] as String,
    summary: json['summary'] as String,
    sections: (json['sections'] as List<dynamic>)
        .map((e) => Section.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DrugToJson(Drug instance) => <String, dynamic>{
      'brandName': instance.brandName,
      'genericName': instance.genericName,
      'imageUrl': instance.imageUrl,
      'dose': instance.dose,
      'summary': instance.summary,
      'sections': instance.sections,
    };

Section _$SectionFromJson(Map<String, dynamic> json) {
  return Section(
    title: json['title'] as String,
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };
