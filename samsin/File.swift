//
//  File.swift
//  samsin
//
//  Created by rimduhui on 2016. 5. 23..
//  Copyright © 2016년 samsin. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addBackground() {
        // screen width and height:
        let width = UIScreen.mainScreen().bounds.size.width
        let height = UIScreen.mainScreen().bounds.size.height
       
    //    let width = 500
    //    let height = 500
        
        let imageViewBackground = UIImageView(frame: CGRectMake(11, 157, 390, 390))
        imageViewBackground.image = UIImage(named: "board.png")
        
        // you can change the content mode:
        imageViewBackground.contentMode = UIViewContentMode.ScaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubviewToBack(imageViewBackground)
    }
    
    func addBackground2() {
        // screen width and height:
        let width = UIScreen.mainScreen().bounds.size.width
        let height = UIScreen.mainScreen().bounds.size.height
        
        //    let width = 500
        //    let height = 500
        
        let imageViewBackground = UIImageView(frame: CGRectMake(11, 157, 390, 390))
        imageViewBackground.image = UIImage(named: "backmain.png")
        
        // you can change the content mode:
        imageViewBackground.contentMode = UIViewContentMode.ScaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubviewToBack(imageViewBackground)
    }
}