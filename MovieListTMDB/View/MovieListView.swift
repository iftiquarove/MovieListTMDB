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
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.frame = CGRect(x: 0, y: 0, width: 200, height: 70)
        searchBar.showsCancelButton = true
        searchBar.barStyle = .black
        searchBar.barTintColor = .white
        searchBar.placeholder = " Search Here..."
        searchBar.sizeToFit()
        listTableView.tableHeaderView = searchBar
        return searchBar
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
