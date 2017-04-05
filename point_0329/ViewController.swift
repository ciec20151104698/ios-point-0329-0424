//
//  ViewController.swift
//  point_0329
//
//  Created by s20151104698 on 2017/3/29.
//  Copyright © 2017年 s20151104698. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var player1: UIImageView!
    @IBOutlet weak var player2: UIImageView!
    var player:UIImageView!
    @IBOutlet weak var score1: UITextField!
    @IBOutlet weak var score2: UITextField!
    @IBOutlet weak var sum1: UITextField!
    @IBOutlet weak var sum2: UITextField!
    @IBOutlet weak var win1: UITextField!
    @IBOutlet weak var win2: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func upload1(_ sender: UIButton) {
        let pick:UIImagePickerController = UIImagePickerController()
        pick.delegate = self
        pick.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(pick,animated: true,completion: nil)
    }
    @IBAction func upload2(_ sender: UIButton) {
        let pick2:UIImagePickerController = UIImagePickerController()
        pick2.delegate = self
        pick2.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(pick2,animated: true,completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any])
    {
        //查看info对象
        print(info)
        
        //显示的图片
        let image:UIImage!
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        player1.image = image
        //图片控制器退出
        picker.dismiss(animated: true, completion: {
            () -> Void in
        })
    }
    @IBAction func ADD1(_ sender: UIButton) {
        var temp:Int
        if(score1.text=="")
        {
            temp=1
            score1.text = "\(temp)"
        }
        else{
            temp = Int(score1.text!)! + 1;
            score1.text = "\(temp)"
        }
        
    }
    @IBAction func Delete1(_ sender: UIButton) {
        var temp:Int
        if(score1.text=="")
        {
            score1.text = "0"
        }
        else if(score1.text == "0")
        {
            score1.text = "0"
        }
        else{
            temp = Int(score1.text!)! - 1
            score1.text = "\(temp)"
        }
    }
    @IBAction func ADD2(_ sender: UIButton) {
        var temp:Int
        if(score2.text=="")
        {
            temp=1
            score2.text = "\(temp)"
        }
        else{
            temp = Int(score2.text!)! + 1;
            score2.text = "\(temp)"
        }
    }
    @IBAction func Delete2(_ sender: UIButton) {
        var temp:Int
        if(score2.text=="")
        {
            score2.text = "0"
        }
        else if(score2.text == "0")
        {
            score2.text = "0"
        }
        else{
            temp = Int(score2.text!)! - 1
            score2.text = "\(temp)"
        }
    }
    @IBAction func Judge(_ sender: UIButton) {
        var s1:Int
        var s2:Int
        
        s1 = Int(score1.text!)!
        s2 = Int(score2.text!)!
        
        if(s1==21 && s2<20)
        {
            if(sum1.text=="")
            {
                sum1.text = "1"
                score1.text = ""
                score2.text = ""
            }
            else{
                var temp:Int
                temp = Int(sum1.text!)! + 1
                sum1.text = "\(temp)"
                score1.text = ""
                score2.text = ""
            }
        }
        if(s2==21 && s1<20)
        {
            if(sum2.text=="")
            {
                sum2.text = "1"
                score1.text = ""
                score2.text = ""
            }
            else{
                var temp:Int
                temp = Int(sum2.text!)! + 1
                sum2.text = "\(temp)"
                score1.text = ""
                score2.text = ""
            }
        }
        if(s1>20 && s2>20)
        {
            if(s1>s2||s1<s2)
            {
                
                if(s1-2>=s2)
                {
                    if(sum1.text=="")
                    {
                        sum1.text = "1"
                        score1.text = ""
                        score2.text = ""
                    }
                    else{
                        var temp:Int
                        temp = Int(sum1.text!)! + 1
                        sum1.text = "\(temp)"
                        score1.text = ""
                        score2.text = ""
                    }
                }
                if(s2-2>=s1)
                {
                    if(sum2.text=="")
                    {
                        sum2.text = "1"
                        score1.text = ""
                        score2.text = ""
                    }
                    else{
                        var temp:Int
                        temp = Int(sum2.text!)! + 1
                        sum2.text = "\(temp)"
                        score1.text = ""
                        score2.text = ""
                    }
                }
            }
        }
        if(s1==30 && s2==29)
        {
            if(sum1.text=="")
            {
                sum1.text = "1"
                score1.text = ""
                score2.text = ""
            }
            else{
                var temp:Int
                temp = Int(sum1.text!)! + 1
                sum1.text = "\(temp)"
                score1.text = ""
                score2.text = ""
            }
        }
        if(s2==30 && s1==29)
        {
            if(sum2.text=="")
            {
                sum2.text = "1"
                score1.text = ""
                score2.text = ""
            }
            else{
                var temp:Int
                temp = Int(sum2.text!)! + 1
                sum2.text = "\(temp)"
                score1.text = ""
                score2.text = ""
            }
        }
        var su1:Int
        var su2:Int
/*        su1 = Int(sum1.text!)!
        su2 = Int(sum2.text!)!
        if(su1==2)
        {
            win1.text = "胜利"
            win2.text = "失败"
            sum1.text = ""
            sum2.text = ""
        }
        if(su2==2)
        {
            win2.text = "胜利"
            win1.text = "失败"
            sum1.text = ""
            sum2.text = ""
        }*/
    }
    
    
}

