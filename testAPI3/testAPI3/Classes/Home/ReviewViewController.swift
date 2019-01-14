//
//  ReviewViewController.swift
//  testAPI3
//
//  Created by Gusti Hidayat on 14/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit
import Alamofire

class ReviewViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    var review: ReviewBase?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reviewMovie()
    }
    
    func reviewMovie() {
        DispatchQueue.main.async {
            let params: Parameters = [
                "api_key": "66c9232fb6779ffe5602df931db1a67b"
            ]
            
            Alamofire.request("https://api.themoviedb.org/3/review/529bc23719c2957215011e7b", method: .get, parameters: params).responseData(completionHandler: { (response) in
                
                switch response.result {
                case .success(let value):
                    let decode = JSONDecoder()
                    do {
                        let review = try decode.decode(ReviewBase.self, from: value)
                        self.review = review
                        self.titleLabel.text = review.media_title
                        self.contentLabel.text = review.content
                        self.authorLabel.text = review.author
                    } catch {
                        print(error.localizedDescription)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            })
        }
    }
}



