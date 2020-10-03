//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by Mariam on 10/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    
    var movieData: Movie = Movie(movieName: "", movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "PG")

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareMovieData()
        
        // Do any additional setup after loading the view.
    }

    
    func prepareMovieData(){
        let movie = movieData
        movieName.title = movie.movieName
        movieImg.image = UIImage(named: movie.movieName)
        movieRated.text = movie.pgRating
        movieRated.text = "\(movie.rating)"
        movieReleaseDate.text = "\(movie.movieReleaseDate)"
        actorImg1.image = UIImage (named: movie.actors[0])
        actorImg2.image = UIImage (named: movie.actors[1])
        actorImg3.image = UIImage (named: movie.actors[2])
        actorName1.text = movie.actors[0]
        actorName2.text = movie.actors[1]
        actorName3.text = movie.actors[2]
        
        
        
    }
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destination.
         Pass the selected object to the new view controller.
    }
    */

}
