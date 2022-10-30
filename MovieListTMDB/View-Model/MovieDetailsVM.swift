//
//  MovieDetailsVM.swift
//  MovieListTMDB
//
//  Created by Iftiquar Ahmed Ove on 30/10/22.
//

import UIKit

protocol parsingVMDelegate: AnyObject{
    func getMovieList(page: Int, query: String, completion: @escaping(_ movieList: MovieList?, _ error: String?)-> Void)
}

class MovieDetailsVM: parsingVMDelegate{
    func getMovieList(page: Int, query: String, completion: @escaping (MovieList?, String?) -> Void) {
        MovieWebServices.shared.getMovieList(page: page, queryWord: query) { movieList, error in
            guard let movieList = movieList else {
                completion(nil, error)
                return
            }
            completion(movieList,nil)
        }
    }
}
