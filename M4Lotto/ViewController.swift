//
//  ViewController.swift
//  M4Lotto
//
//  Created by Settimi, Niccolo B. on 2/10/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel1: UILabel!
    @IBOutlet weak var numLabel2: UILabel!
    @IBOutlet weak var numLabel3: UILabel!
    @IBOutlet weak var numLabel4: UILabel!
    @IBOutlet weak var numLabel5: UILabel!
    @IBOutlet weak var numLabel6: UILabel!
    @IBOutlet weak var numLabel7: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNumberLabel(numLabel1)
        setupNumberLabel(numLabel2)
        setupNumberLabel(numLabel3)
        setupNumberLabel(numLabel4)
        setupNumberLabel(numLabel5)
        setupNumberLabel(numLabel6)
        setupNumberLabel(numLabel7)
        numLabel7.backgroundColor = UIColor.purple
        numLabel7.textColor = .white
    }
    
    func setupNumberLabel(_ label: UILabel)
    {
        let rand = Int.random(in: 1...45)
        
        label.text = "\(rand)"
        
        switch rand
        {
            case 1...10:
            label.backgroundColor = UIColor.red
            label.textColor = .white
            
            case 11...20:
            label.backgroundColor = UIColor.green
            label.textColor = .black
                
            case 21...30:
            label.backgroundColor = UIColor.blue
            label.textColor = .white
                
            case 31...40:
            label.backgroundColor = UIColor.yellow
            label.textColor = .black
                
            case 41...45:
            label.backgroundColor = UIColor.green
            label.textColor = .black
            
            default:
                break;
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        numLabel1.layer.cornerRadius = numLabel1.bounds.width / 2
        numLabel1.clipsToBounds = true
        
        numLabel2.layer.cornerRadius = numLabel1.bounds.width / 2
        numLabel2.clipsToBounds = true
        
        numLabel3.layer.cornerRadius = numLabel1.bounds.width / 2
        numLabel3.clipsToBounds = true
        
        numLabel4.layer.cornerRadius = numLabel1.bounds.width / 2
        numLabel4.clipsToBounds = true
        
        numLabel5.layer.cornerRadius = numLabel1.bounds.width / 2
        numLabel5.clipsToBounds = true
        
        numLabel6.layer.cornerRadius = numLabel1.bounds.width / 2
        numLabel6.clipsToBounds = true
        
        numLabel7.layer.cornerRadius = numLabel1.bounds.width / 2
        numLabel7.clipsToBounds = true
    
    }


}

