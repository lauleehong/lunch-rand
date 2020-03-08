//
//  ViewController.swift
//  lunch.rand() App
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  Modified by Lau Lee Hong on 08/03/2020.
//  Copyright © 2020 lauleehong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png"),#imageLiteral(resourceName: "ball6")]
    let homeUrlString = "https://lauleehong.com"
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        let randomNum = Int.random(in: 0...5)
        imageView.image = ballArray[randomNum]
    }
    
    @IBAction func homeWebsiteButtonPressed(_ sender: UIButton) {
        if let url = URL(string: homeUrlString) {
            UIApplication.shared.open(url)
        }
    }

}
