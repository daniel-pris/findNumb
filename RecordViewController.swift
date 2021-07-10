//
//  RecordViewController.swift
//  FindNumber
//
//  Created by DaninMac on 10.07.21.
//

import UIKit

class RecordViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        let record = UserDefaults.standard.integer(forKey: KeysUserDefaults.recordGame)
        
        if record != 0{
            recordLabel.text = "Your record is \(record)."
        }else{
            recordLabel.text = "No record set."
        }
    }
    
    @IBAction func closeVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
