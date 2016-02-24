//
//  AddMovieVC.swift
//  watch-this
//
//  Created by Holly Klose on 2/23/16.
//  Copyright © 2016 Holly Klose. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var filmTitle: UITextField!
    @IBOutlet weak var filmReview: UITextField!
    @IBOutlet weak var filmPlot: UITextField!
    @IBOutlet weak var filmImg: UIImageView!
    @IBOutlet weak var imdbLink: UITextField!
    
    
    var imagePicker: UIImagePickerController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        filmImg.image = image
    }
    
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func addMovie(sender: AnyObject!) {
        if let titleLbl = filmTitle.text where titleLbl != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            movie.titleLbl = titleLbl
            movie.descLbl = filmReview.text
            movie.imdbLink = imdbLink.text
            movie.plotLbl = filmPlot.text
            movie.setFilmImg(filmImg.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
        
                
            } catch {
                print("Could not add movie")
            }
            
            
            
        }
    }




}
