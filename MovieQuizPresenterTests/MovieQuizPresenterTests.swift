//
//  MovieQuizPresenterTests.swift
//  MovieQuizPresenterTests
//
//  Created by Роман Ивановский on 30.07.2023.
//

import XCTest
@testable import MovieQuiz

final class MovieQuizViewControllerMock: MovieQuizViewControllerProtocol {
    func resetBorderAndButtons() {

    }

    func show(quiz step: QuizStepViewModel) {

    }
    
    func show(quiz step: QuizResultsViewModel) {

    }

    func showResults() {

    }
    func highlightImageBorder(isCorrectAnswer: Bool) {

    }

    func showLoadingIndicator() {

    }

    func hideLoadingIndicator() {

    }

    func showNetworkError(message: String) {

    }
}

final class MovieQuizPresenterTests: XCTestCase {
    func testPresenterConvertModel() throws {
        let viewControllerMock = MovieQuizViewControllerMock()
        let sut = MovieQuizPresenter(viewController: viewControllerMock)

        let emptyData = Data()
        let question = QuizQuestion(image: emptyData, text: "Question Text", correctAnswer: true)
        let viewModel = sut.convert(model: question)

        XCTAssertNotNil(viewModel.image)
        XCTAssertEqual(viewModel.question, "Question Text")
        XCTAssertEqual(viewModel.questionNumber, "1/10")
    }
}
