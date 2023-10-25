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
        if sender == btn1 {
                    btn1.setImage( UIImage.init(named: randomArray[0]), for: .normal)
                    selection.append(0)
                    btn1.isEnabled = false
                    count += 1
                } else if sender == btn2 {
                    btn2.setImage( UIImage.init(named: randomArray[1]), for: .normal)
                    selection.append(1)
                    btn2.isEnabled = false
                    count += 1
                } else if sender == btn3 {
                    btn3.setImage( UIImage.init(named: randomArray[2]), for: .normal)
                    selection.append(2)
                    btn3.isEnabled = false
                    count += 1
                } else if sender == btn4 {
                    btn4.setImage( UIImage.init(named: randomArray[3]), for: .normal)
                    selection.append(3)
                    btn4.isEnabled = false
                    count += 1
                } else if sender == btn5 {
                    btn5.setImage( UIImage.init(named: randomArray[4]), for: .normal)
                    selection.append(4)
                    btn5.isEnabled = false
                    count += 1
                } else if sender == btn6 {
                    btn6.setImage( UIImage.init(named: randomArray[5]), for: .normal)
                    selection.append(5)
                    btn6.isEnabled = false
                    count += 1
                } else if sender == btn7 {
                    btn7.setImage( UIImage.init(named: randomArray[6]), for: .normal)
                    selection.append(6)
                    btn7.isEnabled = false
                    count += 1
                } else if sender == btn8 {
                    btn8.setImage( UIImage.init(named: randomArray[7]), for: .normal)
                    selection.append(7)
                    btn8.isEnabled = false
                    count += 1
                } else if sender == btn9 {
                    btn9.setImage( UIImage.init(named: randomArray[8]), for: .normal)
                    selection.append(8)
                    btn9.isEnabled = false
                    count += 1
                } else if sender == btn10 {
                    btn10.setImage( UIImage.init(named: randomArray[9]), for: .normal)
                    selection.append(9)
                    btn10.isEnabled = false
                    count += 1
                } else if sender == btn11 {
                    btn11.setImage( UIImage.init(named: randomArray[10]), for: .normal)
                    selection.append(10)
                    btn11.isEnabled = false
                    count += 1
                } else if sender == btn12 {
                    btn12.setImage( UIImage.init(named: randomArray[11]), for: .normal)
                    selection.append(11)
                    btn12.isEnabled = false
                    count += 1
                }
                
                if count == 2 {
                    if randomArray[selection[0]] == randomArray[selection[1]] {
                        missing -= 1
                        missingLabel.text = String(missing)
                        count = 0
                        selection = []
                    }
                    else {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            for index in 0...1 {
                                switch self.selection[index] {
                                case 0: self.btn1.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn1.isEnabled = true
                                    break
                                case 1: self.btn2.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn2.isEnabled = true
                                    break
                                case 2: self.btn3.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn3.isEnabled = true
                                    break
                                case 3: self.btn4.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn4.isEnabled = true
                                    break
                                case 4: self.btn5.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn5.isEnabled = true
                                    break
                                case 5: self.btn6.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn6.isEnabled = true
                                    break
                                case 6: self.btn7.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn7.isEnabled = true
                                    break
                                case 7: self.btn8.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn8.isEnabled = true
                                    break
                                case 8: self.btn9.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn9.isEnabled = true
                                    break
                                case 9: self.btn10.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn10.isEnabled = true
                                    break
                                case 10: self.btn11.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn11.isEnabled = true
                                    break
                                case 11: self.btn12.setImage(UIImage(named: "empty"), for: .normal)
                                    self.btn12.isEnabled = true
                                    break
                                    
                                default: break
                                }
                            }
                            self.count = 0
                            self.selection = []
                        }
                        

                    }
                }
                
                if missing == 0 {
                    let alert = UIAlertController(title: "You won", message: "Congratulations", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Ok", style: .default)
                    alert.addAction(action)
                    self.present(alert, animated: true)
                    missing = 6
                    randomArray = []
                    startGame()
                }

        
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
        self.btn1.isEnabled = true
    self.btn2.setImage(UIImage(named: "empty"), for: .normal)
        self.btn2.isEnabled = true
    self.btn3.setImage(UIImage(named: "empty"), for: .normal)
        self.btn3.isEnabled = true
    self.btn4.setImage(UIImage(named: "empty"), for: .normal)
        self.btn4.isEnabled = true
    self.btn5.setImage(UIImage(named: "empty"), for: .normal)
        self.btn5.isEnabled = true
    self.btn6.setImage(UIImage(named: "empty"), for: .normal)
        self.btn6.isEnabled = true
    self.btn7.setImage(UIImage(named: "empty"), for: .normal)
        self.btn7.isEnabled = true
    self.btn8.setImage(UIImage(named: "empty"), for: .normal)
        self.btn8.isEnabled = true
    self.btn9.setImage(UIImage(named: "empty"), for: .normal)
        self.btn9.isEnabled = true
    self.btn10.setImage(UIImage(named: "empty"), for: .normal)
        self.btn10.isEnabled = true
    self.btn11.setImage(UIImage(named: "empty"), for: .normal)
        self.btn11.isEnabled = true
        self.btn12.setImage(UIImage(named: "empty"), for: .normal)
        self.btn2.isEnabled = true
    }
}
