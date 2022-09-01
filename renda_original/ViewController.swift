//
//  ViewController.swift
//  renda_original
//
//  Created by Atsuhiro Muroyama on 2022/08/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startbutton: UIButton!
    @IBOutlet weak var titlelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startbutton.layer.borderColor = UIColor.black.cgColor  // 枠線の色
        startbutton.layer.borderWidth = 3.0 //
        startbutton.layer.cornerRadius = 7
        titlelabel.layer.borderColor = UIColor.black.cgColor
        titlelabel.layer.borderWidth = 3.0 //
        titlelabel.layer.cornerRadius = 2
    }
    


}

