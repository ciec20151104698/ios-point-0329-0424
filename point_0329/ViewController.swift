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
    @IBOutlet weak var score1: UITextField!
    @IBOutlet weak var score2: UITextField!

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
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        //查看info对象
        print(info)
        
        //显示的图片
        let image:UIImage!
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        if(player1.image == "")
        {
            player1.image = image
        }
        else{
            player2.image = image
        }
        //图片控制器退出
        picker.dismiss(animated: true, completion: {
            () -> Void in
        })
    }
    @IBAction func upload2(_ sender: UIButton) {
        let pick2:UIImagePickerController = UIImagePickerController()
        pick2.delegate = self
        pick2.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(pick2,animated: true,completion: nil)
    }
    

}

