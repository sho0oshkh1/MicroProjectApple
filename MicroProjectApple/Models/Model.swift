//
//  Model.swift
//  MicroProjectApple
//
//  Created by shoug on 16/10/1445 AH.
//

import Foundation
import CloudKit

//1
struct Reviewer{
    let id: CKRecord.ID?
    var name: String
    var email: String
    var password: String
    let location: String
    let picture: Data
    let age: Int
    let score: Int
    
    init(record: CKRecord){
        self.id = record.recordID
        self.name = record["name"] as? String ?? "N/A"
        self.email = record["email"] as? String ?? "N/A"
        self.password = record["password"] as? String ?? "N/A"
        self.location = record["location"] as? String ?? "N/A"
        self.picture = record["picture"] as? Data ?? Data()
        self.age = record["age"] as? Int ?? 18
        // Use optional casting and provide a default value if the cast fails
        self.score = record["score"] as? Int ?? 18
    }
}

//2
struct Notification{
    let reviewer_id: CKRecord.ID?
    let pecture: Data
    
    init(record: CKRecord){
        self.reviewer_id = record.recordID
        self.pecture = record["pecture"] as? Data ?? Data()
    }
}

//3
struct Review{
    let id: CKRecord.ID?
    let reviewer_id: CKRecord.ID?
    let description: String
    let pecture: Data
    
    init(record: CKRecord){
        self.id = record.recordID
        self.reviewer_id = record.recordID
        self.description = record["description"] as? String ?? "N/A"
        self.pecture = record["pecture"] as? Data ?? Data()
    }
}

//4
struct ReviewForm{
    let product_id: CKRecord.ID?
    let description: String
    let requirements: String
    let last_review_date: Date
    
    init(record: CKRecord){
        self.product_id = record.recordID
        self.description = record["description"] as? String ?? "N/A"
        self.requirements = record["requirements"] as? String ?? "N/A"
        self.last_review_date = record["last_review_date"] as? Date ?? Date()
    }
}

//5
struct Acceptance{
    let product_id: CKRecord.ID?
    let acceptance: String
    let picture: Data
    
    init(record: CKRecord){
        self.product_id = record.recordID
        self.acceptance = record["acceptance"] as? String ?? "N/A"
        self.picture = record["picture"] as? Data ?? Data()
    }
}


//6
struct Request{
    let id: CKRecord.ID?
    let product_id: CKRecord.ID?
    let reviewer_id: CKRecord.ID?
    let acceptance:String
    let picture: Data
    
    init(record: CKRecord){
        self.id = record.recordID
        self.product_id = record.recordID
        self.reviewer_id = record.recordID
        self.acceptance = record["acceptance"] as? String ?? "N/A"
        self.picture = record["picture"] as? Data ?? Data()
    }
}

//7
struct Product{
    
    let id: CKRecord.ID?
    var name: String
    var description: String
    var picture: Data
    var last_review_date: Date
    var category: String

    
    
    init(record: CKRecord) {
        self.id = record.recordID
        self.name = record["name"] as? String ?? "N/A"
        self.description = record["description"] as? String ?? "N/A"
        self.picture = record["picture"] as? Data ?? Data()
        self.last_review_date = record["last_review_date"] as? Date ?? Date()
        self.category = record["category"] as? String ?? "Category"
    }
}

//8
struct ProductOwner{
    let id: CKRecord.ID?
    var name: String
    var email: String
    var password: String
    var location: String
    var picture: Data
    var maaroof_number : Int
    var description: String
    
    
    init(record: CKRecord) {
        self.id = record.recordID
        self.name = record["name"] as? String ?? "N/A"
        self.email = record["email"] as? String ?? "N/A"
        self.password = record["password"] as? String ?? "N/A"
        self.location = record["location"] as? String ?? "N/A"
        self.picture = record["picture"] as? Data ?? Data()
        self.maaroof_number = record["maaroof_number"] as? Int ?? 0000000000
        self.description = record["description"] as? String ?? "N/A"

    }
}

//9
struct Category{
    let id: CKRecord.ID?
    var name: String
    
    
    init(record: CKRecord) {
        self.id = record.recordID
        self.name = record["name"] as? String ?? "N/A"
    }
}


    

