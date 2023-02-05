//
//  ViewController.swift
//  Prework
//
//  Created by lemonshark on 2023/2/3.
//

import UIKit

class ViewController: UIViewController {

    var i = 0;
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Let's us chose the title we have selected from the segmented control
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
        // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend\(schoolNameTextField.text!).I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.It is \(morePetsSwitch.isOn) that I want more pets."
        
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        var backColor = arc4random() % 5;
        switch(backColor){
            case 0:
                self.view.backgroundColor = UIColor.red
            case 1:
                self.view.backgroundColor = UIColor.gray
            case 2:
                self.view.backgroundColor = UIColor.yellow
            case 3:
                self.view.backgroundColor = UIColor.blue
            default:
                self.view.backgroundColor = UIColor.white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped))
        logoImage.addGestureRecognizer(tapGR)
        logoImage.isUserInteractionEnabled = true
    }
    
    @objc func imageTapped(sender: UITapGestureRecognizer) {
        if i==0 {
            logoImage.image = UIImage(named:"USFG")
            i = 1
        } else {
            logoImage.image = UIImage(named:"USFCA")
            i = 0
        }
    }
}

