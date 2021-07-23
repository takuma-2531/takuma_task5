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
        guard let dividendNumber = Double(dividendTextField.text!) else {
            showAlert(message: "割られる数を入力して下さい")
            return
        }

        guard let divisorNumber = Double(divisorTextField.text!) else {
            showAlert(message: "割る数を入力して下さい")
            return
        }

        guard divisorNumber != 0 else {
            showAlert(message: "割る数には0を入力しないで下さい")
            return
        }

        answerLabel.text = String(dividendNumber / divisorNumber)
    }

    func showAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
