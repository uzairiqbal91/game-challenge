import 'package:flutter/cupertino.dart';
import 'package:gamechallange/data/datasources/game_remote_datasource.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:gamechallange/domain/usecase/detail/game_detail_usecase.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  GameRemoteDatasource,
  GameUseCase,
  GameDetailUseCase,
])
@GenerateNiceMocks([MockSpec<BuildContext>()])
void main() {}