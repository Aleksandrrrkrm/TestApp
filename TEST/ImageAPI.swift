//
//  ImageAPI.swift
//  TEST
//
//  Created by Александр Головин on 10.07.2022.
//

import UIKit

class ImageAPI: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    

    @IBAction func getImage(_ sender: Any) {
        let api = "https://picsum.photos/200/300"
        guard let apiUrl = URL(string: api) else {
            fatalError("404 not found")
        }
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: apiUrl) {(data, response, error) in
                guard let data = data, error == nil else { return }
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data)
                }
            }
            task.resume()
        }
                
    }
    


