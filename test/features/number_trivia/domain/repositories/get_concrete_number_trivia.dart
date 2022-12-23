import 'package:clean_architecture_tdd_course/core/error/failures.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class GetConcreteNumberTrivia {
  NumberTriviaRepository numberTriviaRepository;
  GetConcreteNumberTrivia(this.numberTriviaRepository);

  Future<Either<FailureResponse, NumberTrivia>> execute({
    required int number,
  }) async {
    return await numberTriviaRepository.getConcreteNumberTrivia(number);
  }
}
