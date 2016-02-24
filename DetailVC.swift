//
//  DetailVC.swift
//  watch-this
//
//  Created by Holly Klose on 2/24/16.
//  Copyright © 2016 Holly Klose. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var filmTitle: UILabel!
    @IBOutlet weak var filmReview: UILabel!
    @IBOutlet weak var filmPlot: UILabel!
    @IBOutlet weak var filmImg: UIImageView!
    
    var movies: Movie?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let theMovie = movies {
         
            filmTitle.text = theMovie.titleLbl
            filmReview.text = theMovie.descLbl
            filmPlot.text = theMovie.plotLbl
            filmImg.image = theMovie.getMovieImg()
            
        }
        
        
        
        
    }
    



}
