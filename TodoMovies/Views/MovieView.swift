//
//  MovieView.swift
//  TodoMovies
//
//  Created by Julia Gomes on 14/03/22.
//

import SwiftUI

struct MovieView: View {
    @ObservedObject var viewModel: MovieViewModel
    
    var heartIcon: some View {
        Button {
            viewModel.like()
        } label: {
            viewModel.movie.liked ? Image(systemName: "heart.fill") : Image(systemName: "heart")
        }
    }
    
    var voteCount: some View {
        HStack{
            Image(systemName: "heart.fill")
            Text(String("\(viewModel.movie.voteCount!) Likes"))
        }
        .font(.system(size: 16))
    }
    
    var popularityViews: some View {
        HStack{
            Image(systemName: "eye.fill")
            Text(String("\(viewModel.movie.popularityView!) Views"))
        }
        .font(.system(size: 16))
    }
    
    var movieHeader: some View {
        HStack(spacing: 20) {
            Text(viewModel.movie.title).foregroundColor(.white)
                .font(.system(size: 24))
                .fontWeight(.black)
                .padding(.leading, 20)
            Spacer()
            heartIcon
        }
        .padding(.bottom, 20)
    }
    
    var movieDetails: some View {
        HStack(alignment: .bottom) {
            voteCount
            popularityViews
            Spacer()
        }.padding(.horizontal,20)
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                VStack {
                    movieHeader
                    movieDetails
                }
                .padding(.bottom, 20)
            }
            Spacer()
            VStack(alignment: .leading) {
                HStack{
                    Spacer()
                }
                ForEach(viewModel.movies) { movie in
                    Text(String(movie.title))
                    HStack {
                        Text(String(movie.year!))
                        Text(String(movie.genre!))
                    }
                    .foregroundColor(.gray)
                    .padding(.bottom, 5)
                }
            }
        }
        .padding(20)
        .foregroundColor(.white)
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(viewModel: MovieViewModel())
        MovieView(viewModel: MovieViewModel()).preferredColorScheme(.dark)
    }
}
