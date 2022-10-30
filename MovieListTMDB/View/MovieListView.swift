//
//  MovieListView.swift
//  MovieListTMDB
//
//  Created by Iftiquar Ahmed Ove on 30/10/22.
//

import UIKit

class MovieListView: UIView {
    
    //MARK: - Properties
    
    let movieCellIdentifier = "movieCell"
    
    lazy var listTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .white
        return tableView
    }()
    
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Functions
    private func setUpSubviews(){
        self.backgroundColor = .white
        addSubview(listTableView)
        listTableView.fillSuperView()
        listTableView.register(MovieCell.self, forCellReuseIdentifier: movieCellIdentifier)
    }
}
