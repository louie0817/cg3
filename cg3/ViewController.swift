//
//  ViewController.swift
//  cg3
//
//  Created by Louis Iacoponi on 1/11/18.
//  Copyright © 2018 Louis Iacoponi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var responseButton: UIButton!
    @IBOutlet var myImage: UIImageView!
    
    var cardWidth: CGFloat = 0.0
    var cardHeight: CGFloat = 0.0
    let rows=CGFloat(3.0)
    let cols=CGFloat(3.0)
    
    @IBAction func again(_ sender: UITapGestureRecognizer) {
        responseButton.isHidden = true
        responseButton.setTitle("", for: .normal)
        myImage.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("in viewDidLoad")
        responseButton.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

        let tapGR = UITapGestureRecognizer(target: self, action: #selector(tapped))
        
        self.myImage.addGestureRecognizer(tapGR)
       
        cardWidth=myImage.bounds.width
        print(cardWidth)
        cardHeight=myImage.bounds.height
        
        //print (cardWidth, cardHeight)
        
    }
    
    
    @objc func tapped(gr:UITapGestureRecognizer) {
        //print("in tapped")
        
        if (gr.view as? UIImageView) != nil {
            
            let loc:CGPoint = gr.location(in: gr.view)
            
            let num=Int(floor(loc.y / (cardHeight/rows)) * floor(cols) + floor(loc.x / (cardWidth/cols))) + 1
            //print("num=\(num)")
            responseButton.setTitle(String(num), for: .normal)

            myImage.isHidden = true
            responseButton.isHidden = false

//            testView.isHidden = true
//            myImage.isHidden = false
        
        
        }
        
    }
    
}

