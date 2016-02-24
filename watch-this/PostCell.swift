//
//  PostCell.swift
//  watch-this
//
//  Created by Holly Klose on 2/23/16.
//  Copyright © 2016 Holly Klose. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var moreBtn: UIButton!
    @IBOutlet weak var imdbBtn: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        movieImg.layer.cornerRadius = 15.0
        movieImg.clipsToBounds = true
        
    }
    
    func configureCell (movie: Movie) {
       movieImg.image = movie.getMovieImg()
        titleLbl.text = movie.titleLbl
        descLbl.text = movie.descLbl
       
    }

 

}
