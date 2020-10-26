

import Foundation
import Firebase
import CodableFirebase

extension Networking{
    static func signUp(email:String, password:String, success: @escaping()-> Void)
      {

          Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
               if error == nil {
                  // signed up successfully
                      success()
                   
              }
           }
      }
       static func signUp2(user: User, password:String, success: @escaping()-> Void)
         {

            Auth.auth().createUser(withEmail: user.email, password: password) { authResult, error in
               
                  if error == nil {
                     // signed up successfully
                    // Adding this user to the database
                    guard let auth = authResult else{return}
                    let uid = auth.user.uid
                    Networking.createItem(user, inCollection: "Users", documentId: uid) {
                        success()
                    }
                 }
                  else{
                    print("Encountared error: ", error)
                    
                    
                }
              }
         }  
    
    static func signIn2(email:String, password:String, success: @escaping()-> Void?, fail: @escaping()-> Void)
    {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            // ...
            if error == nil{
                success()
            }else{
                fail()
            }
        }
    }
    static func signOut(success: @escaping()-> Void)
    {
        try! Auth.auth().signOut()
    }
    
    static func Company(user: Company, password:String, success: @escaping()-> Void)
           {

              Auth.auth().createUser(withEmail: "Company", password: password) { authResult, error in
                 
                    if error == nil {
                       // signed up successfully
                      // Adding this user to the database
                      guard let auth = authResult else{return}
                      let uid = auth.user.uid
                      Networking.createItem(user, inCollection: "Users", documentId: uid) {
                          success()
                      }
                   }
                    else{
                      print("Encountared error: ", error)
                        
                      
                      
                  }
                }
   
}
}
