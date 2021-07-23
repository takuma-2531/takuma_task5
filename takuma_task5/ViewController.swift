//
//  ViewController.swift
//  takuma_task5
//
//  Created by 小川卓馬 on 2021/06/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var dividendTextField: UITextField!
    @IBOutlet weak private var divisorTextField: UITextField!
    @IBOutlet weak private var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        dividendTextField.keyboardType = .numberPad
        divisorTextField.keyboardType = .numberPad
    }

    @IBAction private func tapCaluculateButton(_ sender: UIButton) {
        let dividendNumber = Double(dividendTextField.text!) ?? 0
        let divisorNumber = Double(divisorTextField.text!) ?? 0

        guard dividendNumber != 0 else {
            showAlert(title: "課題5", message: "割られる数を入力して下さい")
            return
        }

        guard divisorTextField.text! != "" else {
            showAlert(title: "課題5", message: "割る数を入力して下さい")
            return
        }

        guard divisorNumber != 0 else {
            showAlert(title: "課題5", message: "割る数には0を入力しないで下さい")
            return
        }

        answerLabel.text = String(dividendNumber / divisorNumber)
    }

    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
