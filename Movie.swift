//
//  Movie.swift
//  watch-this
//
//  Created by Holly Klose on 2/23/16.
//  Copyright © 2016 Holly Klose. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {

    func setFilmImg(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.movieImg = data
    }
    
    func getMovieImg() -> UIImage {
    
        let img = UIImage(data: self.movieImg!)!
        return img
    }


    
    
}
