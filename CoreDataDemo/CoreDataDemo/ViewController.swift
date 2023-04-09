//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Mac on 04/04/17.
//

import UIKit

class ViewController: UIViewController,DataPass {
    
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtAdd: UITextField!
    @IBOutlet weak var txtName: UITextField!
    var i = Int()
    var isUpdate = Bool()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func saveBtn(_ sender: Any) {
        let dict = ["name":txtName.text,"address":txtAdd.text,"city":txtCity.text,"mobile":txtMobile.text]
        if isUpdate{
            DBHelper.shareInstance.editData(object: dict as![String:String], i: i)
        }else{
        DBHelper.shareInstance.save(object: dict as! [String:String])
        }
    }
    @IBAction func btnShowClick(_ sender: Any) {
        let listVC = self.storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        listVC.delegate = self
        self.navigationController?.pushViewController(listVC, animated: true)
    }
    func data(object: [String : String],index: Int,isEdit:Bool) {
        txtName.text = object["name"]
        txtAdd.text = object["address"]
        txtCity.text = object["city"]
        txtMobile.text = object["mobile"]
        i = index
        isUpdate = isEdit
    }
}

