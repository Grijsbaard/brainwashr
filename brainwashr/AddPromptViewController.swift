//
//  AddPromptViewController.swift
//  brainwashr
//
//  Created by Pieter-Jan Delaruelle on 11/06/2020.
//  Copyright © 2020 Pieter-Jan Delaruelle. All rights reserved.
//

import UIKit

class AddPromptViewController: UIViewController, UITextFieldDelegate {

    
    
    
    @IBOutlet weak var promptNameInput: UITextField!
    @IBOutlet weak var promptMessageInput: UITextField!
    @IBOutlet weak var promptIntervalInput: UIDatePicker!
    @IBOutlet weak var doneButton: UIButton!
   
    @objc
    @IBAction func addPrompt() -> Void {
        let interval = promptIntervalInput.countDownDuration
        let newPrompt = Prompt(promptNameInput.text!, promptMessageInput.text!, interval)
        Storage.shared.objects.append(newPrompt)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        let allowedCharacters = CharacterSet.alphanumerics.union(CharacterSet.whitespaces)
        let characterSet = CharacterSet(charactersIn: string)
        
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    @objc func editingChanged(_ textField: UITextField) {
        if textField.text?.count == 1 {
            if textField.text?.first == " " {
                textField.text = ""
                return
            }
        }
        
        guard
            let name = promptNameInput.text, !name.isEmpty,
            let message = promptMessageInput.text, !message.isEmpty
            else {
                self.doneButton.isEnabled = false
                return
        }
        self.doneButton.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        promptNameInput.delegate = self
        promptMessageInput.delegate = self
        
        doneButton.isEnabled = false
        
        promptNameInput.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
        promptMessageInput.addTarget(self, action: #selector(editingChanged), for: .editingChanged)    }
}
