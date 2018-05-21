//
//  ViewController.swift
//  IndozAssignment
//
//  Created by Achyut Kumar Baba Maddela on 18/05/18.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var qrCodeImageView: UIImageView!
    
    var filter: CIFilter!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "QR Code Generator"
        
    }


    @IBAction func onGenerateQRCodePressed(_ sender: UIButton) {
        let qrString = "\(firstNameTextField.text!) ," + "\(lastNameTextField.text!) ," + "\(emailTextField.text!) ," + "\(phoneNumberTextField.text!)"
        print(qrString)
        let data = qrString.data(using: .ascii, allowLossyConversion: false)
        filter = CIFilter(name: "CIQRCodeGenerator")
        filter.setValue(data, forKey: "inputMessage")
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let image = UIImage(ciImage: filter.outputImage!.transformed(by: transform))
        qrCodeImageView.image = image
        
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

