//
//  ViewController.swift
//  MyStory
//
//  Created by lemonshark on 2023/2/21.
//
		    
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var introduce: UILabel!
    
    @IBOutlet weak var panda: UILabel!
    
    @IBOutlet weak var summary: UIStackView!
    
    @IBAction func controlbackcoloers(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func didTapIntroduce(_ sender: UITapGestureRecognizer) {
        print("introduceSegue")
        if let tappedView = sender.view {
            performSegue(withIdentifier: "introduceSegue", sender: tappedView)
        }
    }
   
    
    @IBAction func didTapSummary(_ sender: UITapGestureRecognizer) {
        print("summarySegue")
        if let tappedView = sender.view {
            performSegue(withIdentifier: "summarySegue", sender: tappedView)
        }
    }
    
    
    @IBAction func didTapPanda(_ sender: UITapGestureRecognizer) {
        print("pandaSegue")
        if let tappedView = sender.view {
            performSegue(withIdentifier: "pandaSegue", sender: tappedView)
        }
    }
}

