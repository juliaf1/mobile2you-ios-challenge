//
//  MovieViewModel.swift
//  TodoMovies
//
//  Created by Julia Gomes on 14/03/22.
//

import SwiftUI


class MovieViewModel: ObservableObject {
    static let selectedMovieDetails: [String : Any] = [
        "title": "Fight Club",
        "photo": "/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg",
        "popularityView": "8.4",
        "voteCount": 23661,
        "id": 550
    ]
    static let similarMovies = [
        ["title": "The Chronicles of Narnia: Prince Caspian", "year": 2008, "photo": "/qxz3WIyjZiSKUhaTIEJ3c1GcC9z.jpg", "id": 2425, "genre": "Fantasy"],
        ["title": "Eragon", "year": 2006, "photo": "/mNu6QLUnKqPIjRA3pgEb5dkJye6.jpg", "id": 2486, "genre": "Action"],
        ["title": "The Specialist", "year": 1994, "photo": "/ifqrivWPQ0ZpwnIXBjgN261SQ1S.jpg", "id": 2436, "genre": "Comedy"]
    ]
    
    static func createMoviePage() -> MovieModel {
        MovieModel(movie: selectedMovieDetails, similarMovies: similarMovies)
    }
    
    @Published private var model: MovieModel = createMoviePage()
    
    var movie: MovieModel.Movie {
        model.selectedMovie
    }
    
    var movies: Array<MovieModel.Movie> {
        model.movies
    }
    
    // MARK: - Intent(s)
    func like() {
        model.like()
    }
}
