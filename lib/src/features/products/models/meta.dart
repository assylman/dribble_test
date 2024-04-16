import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'meta.g.dart';

@CopyWith()
class Meta extends Equatable {
  final int page;
  final int perPage;
  final int total;

  const Meta(
    this.page,
    this.perPage,
    this.total,
  );

  @override
  List<Object?> get props => [page, perPage, total];
}
