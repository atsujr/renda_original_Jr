//
//  GameViewController.swift
//  renda_original
//
//  Created by Atsuhiro Muroyama on 2022/08/29.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var answerlabel: UILabel!
    @IBOutlet weak var animalImage1: UIImageView!
    @IBOutlet weak var animalImage2: UIImageView!
    @IBOutlet weak var animalImage3: UIImageView!
    @IBOutlet weak var animalImage4: UIImageView!
    @IBOutlet weak var animalImage5: UIImageView!
    @IBOutlet weak var animalImage6: UIImageView!
    @IBOutlet weak var animalImage7: UIImageView!
    @IBOutlet weak var animalImage8: UIImageView!
    @IBOutlet weak var animalImage9: UIImageView!
    @IBOutlet weak var animalImage10: UIImageView!
    @IBOutlet weak var animalImage11: UIImageView!
    @IBOutlet weak var animalImage12: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var answerbutton: UIButton!
    @IBOutlet weak var plusbutton: UIButton!
    @IBOutlet weak var minusbutton: UIButton!
    var whivhimage: [Int] = Array(repeating: 0, count: 12)
    //0だったら表示しない、1だったらとり、２だったら猫
    var selectmode = 0
    var animal1num = 0
    var animal2num = 0
    var answercount = 0
    
    var timer: Timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerbutton.layer.borderColor = UIColor.black.cgColor  // 枠線の色
        answerbutton.layer.borderWidth = 3.0 //
        answerbutton.layer.cornerRadius = 5
        setdesighn()
        answerlabel.text = String(answercount)
        selectmode = Int.random(in: 1..<3)
        if(selectmode == 1){
            titleLabel.text = "鳥は何羽？"
        }else {
            titleLabel.text = "猫は何匹？"
        }
        for i in 0...11{
            whivhimage[i] = Int.random(in: 0..<3)
            
            
            if(whivhimage[i] == 1){
                animal1num += 1
            }
            if(whivhimage[i] == 2){
                animal2num += 1
            }
            //print(whivhimage[])
        }
        print(whivhimage)
        
        setImage()
        // Do any additional setup after loading the view.
        if(!timer.isValid){
            
            timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(self.vanish), userInfo: nil, repeats: false)
            
        }
        
    }
    
    @objc func vanish(){
        animalImage1.isHidden = true
        animalImage2.isHidden = true
        animalImage3.isHidden = true
        animalImage4.isHidden = true
        animalImage5.isHidden = true
        animalImage6.isHidden = true
        animalImage7.isHidden = true
        animalImage8.isHidden = true
        animalImage9.isHidden = true
        animalImage10.isHidden = true
        animalImage11.isHidden = true
        animalImage12.isHidden = true
        
    }
    func setdesighn() {
        answerbutton.layer.borderColor = UIColor.black.cgColor  // 枠線の色
        answerbutton.layer.borderWidth = 3.0 //
        answerbutton.layer.cornerRadius = 5
        plusbutton.layer.borderColor = UIColor.black.cgColor  // 枠線の色
        plusbutton.layer.borderWidth = 3.0 //
        plusbutton.layer.cornerRadius = 35
        minusbutton.layer.borderColor = UIColor.black.cgColor  // 枠線の色
        minusbutton.layer.borderWidth = 3.0 //
        minusbutton.layer.cornerRadius = 35
        
        
    }
    func setImage() {
        if(whivhimage[0] == 1){
            animalImage1.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[1] == 1){
            animalImage2.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[2] == 1){
            animalImage3.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[3] == 1){
            animalImage4.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[4] == 1){
            animalImage5.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[5] == 1){
            animalImage6.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[6] == 1) {
            animalImage7.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[7] == 1){
            animalImage8.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[8] == 1){
            animalImage9.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[9] == 1){
            animalImage10.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[10] == 1){
            animalImage11.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[11] == 1){
            animalImage12.image = UIImage(named: "anilmalImage.png")
        }
        if(whivhimage[0] == 2){
            animalImage1.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[1] == 2){
            animalImage2.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[2] == 2){
            animalImage3.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[3] == 2){
            animalImage4.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[4] == 2){
            animalImage5.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[5] == 2){
            animalImage6.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[6] == 2) {
            animalImage7.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[7] == 2){
            animalImage8.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[8] == 2){
            animalImage9.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[9] == 2){
            animalImage10.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[10] == 2){
            animalImage11.image = UIImage(named: "animal_2.png")
        }
        if(whivhimage[11] == 2){
            animalImage12.image = UIImage(named: "animal_2.png")
        }
    }
    @IBAction func plus(_ sender: Any) {
        answercount += 1
        answerlabel.text = String(answercount)
    }
    @IBAction func minus(_ sender: Any) {
        if(answercount == 0){
            
        }else{
        answercount -= 1
        answerlabel.text = String(answercount)
        }
    }
    
    @IBAction func finalanswer(_ sender: Any) {
        if(selectmode == 1) {
            if(answercount == animal1num) {
                correctalert()
            }else{
                dicorectalert()
            }
        }else {
            if(answercount == animal2num) {
                correctalert()
            }else{
                dicorectalert()
        }
    }
        
    func correctalert() {
        animalImage1.isHidden = false
        animalImage2.isHidden = false
        animalImage3.isHidden = false
        animalImage4.isHidden = false
        animalImage5.isHidden = false
        animalImage6.isHidden = false
        animalImage7.isHidden = false
        animalImage8.isHidden = false
        animalImage9.isHidden = false
        animalImage10.isHidden = false
        animalImage11.isHidden = false
        animalImage12.isHidden = false
        let alert: UIAlertController = UIAlertController(title: "正解！", message: "ホーム画面に戻ります", preferredStyle:  UIAlertController.Style.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
                // ボタンが押された時の処理を書く（クロージャ実装）
            (action: UIAlertAction!) -> Void in
            self.dismiss(animated: true)
            })
        alert.addAction(defaultAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    func dicorectalert() {
        let alert: UIAlertController = UIAlertController(title: "残念！", message: "答えが違います！頑張って！", preferredStyle:  UIAlertController.Style.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
                // ボタンが押された時の処理を書く（クロージャ実装）
            (action: UIAlertAction!) -> Void in
            })
        alert.addAction(defaultAction)
        present(alert, animated: true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
