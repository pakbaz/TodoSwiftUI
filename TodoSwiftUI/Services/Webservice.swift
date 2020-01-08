//
//  webservice.swift
//  TodoSwiftUI
//
//  Created by Sepehr Pakbaz on 1/3/20.
//  Copyright © 2020 Sepehr Pakbaz. All rights reserved.
//

import Foundation

class Webservice {
    let session = URLSession.shared
    
    func getAllItems(completion: @escaping ([Item]) -> ()) {
        
      
      let url = URL(string: "https://crossplatformpoc.azurewebsites.net/api/Item")!
      let task = session.dataTask(with: url, completionHandler: { data, response, error in
        
          // Serialize the data into an object
          let items = try! JSONDecoder().decode([Item].self, from: data! )
            DispatchQueue.main.async {
                completion(items)
            }
      })
      task.resume()
    }
    
    
    func postNewItem(newItem: Item) {
        let url = URL(string: "https://crossplatformpoc.azurewebsites.net/api/Item")
        guard let requestUrl = url else { fatalError() }
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "POST"
        // Set HTTP Request Header
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let jsonData = try! JSONEncoder().encode(newItem)
        request.httpBody = jsonData
        let task = session.dataTask(with: request) { (data, response, error) in
                
            if let error = error {
                print("Error took place \(error)")
                return
            }
        }
        task.resume()
    }
}
