//
//  MainViewController.swift
//  BSK_FirstApp_map
//
//  Created by BS K on 2023/02/14.
//

import UIKit


class MainViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var appleButton: UIStackView!
    
    @IBOutlet weak var naverButton: UIButton!
    
    @IBOutlet weak var justButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()

       
    }
    
    func configureUI() {
        mainLabel.text = "어디에 뭐가 있을까 ?"
        mainLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        
        mainImageView.image = UIImage(named: "load")
        mainImageView.backgroundColor = .red
        
        
        naverButton.layer.borderWidth = 1.0
        naverButton.layer.borderColor = UIColor.black.cgColor
   
    }
    
    @IBAction func justButtonTapped(_ sender: UIButton) {
        
        guard let realVC = storyboard?.instantiateViewController(withIdentifier: "RealViewController") as? RealViewController else { return }
                
                realVC.modalPresentationStyle = .fullScreen
                present(realVC, animated: true, completion: nil)
        
    }
    


}
