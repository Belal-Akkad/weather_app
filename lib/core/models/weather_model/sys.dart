import 'package:equatable/equatable.dart';

class Sys extends Equatable {
  final String? pod;

  const Sys({this.pod});

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        pod: json['pod'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'pod': pod,
      };

  @override
  List<Object?> get props => [pod];
}
