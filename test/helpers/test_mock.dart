import 'package:flutter/cupertino.dart';
import 'package:gamechallange/data/datasources/game_remote_datasource.dart';
import 'package:gamechallange/domain/usecase/game_usecase.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  GameRemoteDatasource,
  GameUseCase
])
@GenerateNiceMocks([MockSpec<BuildContext>()])
void main() {}