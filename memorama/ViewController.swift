//
//  ViewController.swift
//  memorama
//
//  Created by Adrián Moras Acuña on 24/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var missingLabel: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    
    var count = 0
    var missing = 6
    var randomArray: [String] = []
    var selection: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
        // Do any additional setup after loading the view.
    }

    @IBAction func handleTap(_ sender: UIButton) {

        
    }
    
    func startGame () {
        var randomIntArray: [Int] = []
        var counter = 0
        
        missingLabel.text = "6"
        
        while (counter < 12) {
            let randomInt = Int.random(in: 1..<13)
            if !randomIntArray.contains(randomInt) {
                randomIntArray.append(randomInt)
                counter += 1
            }
            
        }
        
        var c = 0
        while (c < 12) {
            switch randomIntArray[c] {
            case 1, 2: randomArray.append("grande")
                c += 1
                break
            case 3, 4: randomArray.append("guess")
                c += 1
                break
            case 5, 6: randomArray.append("pelo")
                c += 1
                break
            case 7, 8: randomArray.append("cruzcruz")
                c += 1
                break
            case 9, 10: randomArray.append("dorado")
                c += 1
                break
            case 11, 12: randomArray.append("rojo")
                c += 1
                break
            default: break
            }
            

        }

    self.btn1.setImage(UIImage(named: "empty"), for: .normal)
    self.btn2.setImage(UIImage(named: "empty"), for: .normal)
    self.btn3.setImage(UIImage(named: "empty"), for: .normal)
    self.btn4.setImage(UIImage(named: "empty"), for: .normal)
    self.btn5.setImage(UIImage(named: "empty"), for: .normal)
    self.btn6.setImage(UIImage(named: "empty"), for: .normal)
    self.btn7.setImage(UIImage(named: "empty"), for: .normal)
    self.btn8.setImage(UIImage(named: "empty"), for: .normal)
    self.btn9.setImage(UIImage(named: "empty"), for: .normal)
    self.btn10.setImage(UIImage(named: "empty"), for: .normal)
    self.btn11.setImage(UIImage(named: "empty"), for: .normal)
    self.btn12.setImage(UIImage(named: "empty"), for: .normal)
    }
}
