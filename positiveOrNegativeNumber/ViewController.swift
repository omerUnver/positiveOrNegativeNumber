//
//  ViewController.swift
//  positiveOrNegativeNumber
//
//  Created by M.Ömer Ünver on 14.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sayiText: UITextField!
    @IBOutlet weak var sonucText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Girilen sayının negatif, pozitif veya sıfır olduğunu gösteren bir çalışma
    }
    @IBAction func hesaplaBtn(_ sender: Any) {
        let number = sayiText.text ?? "" //default boş string atadık
        if number.isEmpty {
            sonucText.text = "bir sayı giriniz"
            return
        }
        if let n1 = Int(number) {
            if n1 > 0 {
                sonucText.text = "girilen sayı pozitif"
            }else if n1 < 0 {
                sonucText.text = "girilen sayı bir negatiftir"
            }else{
                sonucText.text = "girilen sayı sıfırdır"
            }
                    
        }else {
            sonucText.text = "bir rakam giriniz"
        }
    }

}

