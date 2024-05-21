//
//  CalculateViewController.swift
//  BMICalculator
//
//  Created by NERO on 5/21/24.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet var calculatorTitleLabel: UILabel!
    @IBOutlet var calculatorSubtitleLabel: UILabel!
    @IBOutlet var womanImageView: UIImageView!
    
    @IBOutlet var heightQuestionLabel: UILabel!
    @IBOutlet var heightView: UIView!
    @IBOutlet var heightTextField: UITextField!
    
    @IBOutlet var weightQuestionLabel: UILabel!
    @IBOutlet var weighView: UIView!
    @IBOutlet var weighTextField: UITextField!
    @IBOutlet var weightPrivacyButton: UIButton!
    
    @IBOutlet var randomCalculateButton: UIButton!
    @IBOutlet var calculateResultButton: UIButton!
    
    var isPrivacyButtonActive = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
        setImageView()
        setTextField()
        setPrivacybutton()
        setRandomCalculateButton()
        setCalculateResultButton()
    }
}

// MARK: - UI Setting
extension CalculateViewController {
    func setLabelText() {
        calculatorTitleLabel.text = "BMI Calculator"
        calculatorTitleLabel.font = UIFont(name: "Gill Sans Bold Italic", size: 25)
        
        calculatorSubtitleLabel.numberOfLines = 0
        calculatorSubtitleLabel.text = "당신의 BMI 지수를 \n알려 드릴게요."
        calculatorSubtitleLabel.font = .systemFont(ofSize: 15, weight: .medium)
        
        heightQuestionLabel.text = "키가 어떻게 되시나요?"
        heightQuestionLabel.font = .systemFont(ofSize: 15, weight: .medium)
        
        weightQuestionLabel.text = "몸무게는 어떻게 되시나요?"
        weightQuestionLabel.font = .systemFont(ofSize: 15, weight: .medium)
    }
    
    func setImageView() {
        womanImageView.image = .woman
        womanImageView.contentMode = .scaleAspectFill
        
        heightView.frame.size.height = 52
        heightView.layer.borderWidth = 1
        heightView.layer.borderColor = UIColor.black.cgColor
        heightView.layer.cornerRadius = 15
        
        weighView.frame.size.height = 52
        weighView.layer.borderWidth = 1
        weighView.layer.borderColor = UIColor.black.cgColor
        weighView.layer.cornerRadius = 15
    }
    
    @IBAction func privacyButtonClicked() {
        isPrivacyButtonActive.toggle()
        setPrivacybutton()
    }
    
    func setPrivacybutton() {
        if isPrivacyButtonActive {
            weightPrivacyButton.tintColor = .point1
            weightPrivacyButton.backgroundColor = .point2
            weightPrivacyButton.setImage(.hideIcon, for: .normal)
        } else {
            weightPrivacyButton.tintColor = .point2
            weightPrivacyButton.backgroundColor = .point1
            weightPrivacyButton.setImage(.openIcon, for: .normal)
        }
        
        weightPrivacyButton.imageEdgeInsets.left = 5
        weightPrivacyButton.imageEdgeInsets.right = 5
        weightPrivacyButton.imageEdgeInsets.bottom = 5
        weightPrivacyButton.imageEdgeInsets.top = 5
        weightPrivacyButton.frame.size = CGSize(width: 34, height: 34)
        weightPrivacyButton.contentMode = .scaleAspectFit
        weightPrivacyButton.layer.cornerRadius = 10
    }
    
    func setTextField() {
        for textField in [heightTextField, weighTextField] {
            textField!.backgroundColor = .clear
            textField!.borderStyle = .none
            textField!.textColor = .black
            textField!.tintColor = .black
            textField!.font = .systemFont(ofSize: 15)
        }
    }
    
    func setRandomCalculateButton() {
        randomCalculateButton.setImage(.init(systemName: "arrow.2.circlepath.circle"), for: .normal)
        randomCalculateButton.tintColor = .point3
        randomCalculateButton.imageEdgeInsets.right = 7
        
        randomCalculateButton.setTitle("랜덤으로 BMI 계산하기", for: .normal)
        randomCalculateButton.titleLabel?.font = .systemFont(ofSize: 13, weight: .medium)
        randomCalculateButton.titleLabel?.textAlignment = .right
        randomCalculateButton.setTitleColor(.point3, for: .normal)
        randomCalculateButton.setTitleColor(.point1, for: .highlighted)
    }
    
    func setCalculateResultButton() {
        calculateResultButton.setTitle("결과 보기", for: .normal)
        calculateResultButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        calculateResultButton.titleLabel?.textAlignment = .right
        calculateResultButton.setTitleColor(.white, for: .normal)
        calculateResultButton.backgroundColor = .point1
        calculateResultButton.layer.cornerRadius = 13
    }
}