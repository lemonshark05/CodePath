//
//  DetailViewController.swift
//  MyStory
//
//  Created by lemonshark on 2023/2/27.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var pandaImageView: UIImageView!
    @IBOutlet weak var pandaNameLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    
    @IBOutlet weak var factLabel1: UILabel!
    @IBOutlet weak var factLabel2: UILabel!
    @IBOutlet weak var factLabel3: UILabel!
    
    var info: Informat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let info = info {
            // Configure the dinosaur image and dynamic labels
            pandaImageView.image = info.image
            pandaNameLabel.text = info.name
            weightLabel.text = String(info.weight) + " KG"
            lengthLabel.text = String(info.length) + " M"
            factLabel1.text = String(info.diet)
            factLabel2.text = String(info.region)
            factLabel3.text = String(info.speed) + " mph"
        }
        
    }
    

}
