import 'package:flutter/material.dart';
import 'package:life_in_the_uk/viewModel/exam_view_model.dart';
import 'package:life_in_the_uk/viewModel/question_view_model.dart';
import 'package:provider/provider.dart';

class QuestionHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionViewModel>(
      builder: (context, question, child) {
        ExamViewModel exam = context.watch<ExamViewModel>();
        int index = exam.questionsViewModels.indexOf(question) + 1;
        int totalQuestions = exam.totalQuestions;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  'Question $index of $totalQuestions',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  question.title,
                  style: TextStyle(color: Colors.blueGrey[800], fontSize: 34.0),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
