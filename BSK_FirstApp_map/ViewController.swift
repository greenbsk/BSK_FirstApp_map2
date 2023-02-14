//
//  ViewController.swift
//  BSK_FirstApp_map
//
//  Created by BS K on 2023/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loadImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }

    func configureUI() {
        
        loadImageView.image = UIImage(named: "load")
        loadImageView.backgroundColor = .red
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if let mainViewController = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") {
                mainViewController.modalPresentationStyle = .fullScreen
                self.present(mainViewController, animated: true, completion: nil)
            }
            
        }
    }
    
    

}

