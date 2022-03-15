//
//  Movie.swift
//  TodoMovies
//
//  Created by Julia Gomes on 14/03/22.
//

import Foundation

struct MovieModel {
    private(set) var selectedMovie: Movie
    private(set) var movies: Array<Movie>
    
    mutating func like() {
        selectedMovie.liked.toggle()
        if (selectedMovie.liked) {
            selectedMovie.voteCount! += 1
        }
        else {
            selectedMovie.voteCount! -= 1
        }
    }

    init(movie: [String : Any], similarMovies: [[String: Any]]) {
        selectedMovie = Movie(
            title: movie["title"] as! String,
            voteCount: movie["voteCount"] as? Int,
            popularityView: movie["popularityView"] as? String,
            photo: movie["photo"] as! String,
            id: movie["id"] as! Int
        )
        movies = Array<Movie>()
        for index in 0..<similarMovies.count {
            movies.append(
                Movie(
                    title: similarMovies[index]["title"] as! String,
                    photo: similarMovies[index]["photo"] as! String,
                    year: similarMovies[index]["year"] as? Int,
                    genre: similarMovies[index]["genre"] as? String,
                    id: similarMovies[index]["id"] as! Int
                )
            )
        }
    }
    
    struct Movie: Identifiable {
        var title: String
        var voteCount: Int?
        var popularityView: String?
        var liked: Bool = false
        var photo: String
        var year: Int?
        var genre: String?
        var id: Int
    }
}
