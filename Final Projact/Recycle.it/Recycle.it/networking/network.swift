//
//  network.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/12/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import Foundation
import Firebase
import CodableFirebase

class Networking
{
    
    static func createItem<T:Codable>(_ item: T, inCollection COLLECTION_NAME: String, documentId: String? = nil, success: @escaping()-> Void)
    {
        let encoded = try! FirestoreEncoder().encode(item)
        var docRef: DocumentReference
        let ref = Firestore
            .firestore()
            .collection(COLLECTION_NAME)
        
        if let documentId = documentId {
            docRef = ref.document(documentId)
        }else{
            docRef = ref.document()
        }
        docRef.setData(encoded) { (error) in
            if error == nil{
                // ✅
                print("Added ")
                DispatchQueue.main.async {
                    success()
                }
            }
            else{
                // ❌
                print("Error encountered", error as Any)
            }
        }
    }
    
    
    
    static func getListOf<T: Codable>(COLLECTION_NAME: String, success: @escaping([T])-> Void)
    {
        Firestore.firestore().collection(COLLECTION_NAME).getDocuments { (snapshot, error) in
            if error == nil{
                // there is no error
                if snapshot != nil {
                    // There is data
                    let items = try! FirebaseDecoder().decode([T].self, from: snapshot?.documents.map{$0.data() as Any} as Any)
                    DispatchQueue.main.async {
                        success(items)
                    }
                }
            }
        }
    }
    

    
}

