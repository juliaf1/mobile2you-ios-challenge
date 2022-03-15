//
//  TodoMoviesApp.swift
//  TodoMovies
//
//  Created by Julia Gomes on 14/03/22.
//

import SwiftUI

@main
struct TodoMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            MovieView(viewModel: MovieViewModel())
        }
    }
}
