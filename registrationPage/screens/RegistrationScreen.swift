//
//  RegistrationScreen.swift
//  registrationPage
//
//  Created by Зехниддин on 02/01/21.
//

import SwiftUI

struct RegistrationScreen: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var sms = ""
    @State private var address1 = ""
    @State private var address2 = ""
    @State private var zipcode = ""
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                Text("First Name")
                TextField("First Name", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 15)
            
            VStack(alignment: .leading) {
                Text("Last Name")
                TextField("Last Name", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 15)
            
            
            VStack(alignment: .leading) {
                Text("Email")
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 15)
            
            VStack(alignment: .leading) {
                Text("Phone")
                TextField("Phone", text: $phone)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 15)
            
            VStack(alignment: .leading) {
                Text("SMS")
                SecureField("sms", text: $sms)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 15)
            
            VStack(alignment: .leading) {
                Text("Address1")
                TextField("Address1", text: $address1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 15)
            
            VStack(alignment: .leading) {
                Text("Address2")
                TextField("Address2", text: $address2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 15)
            
            VStack(alignment: .leading) {
                Text("Zipcode")
                SecureField("Zipcode", text: $zipcode)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 15)
            
            Button(action: {
                print("First Name: \(firstName)")
                print("Last Name: \(lastName)")
                print("Email: \(email)")
                print("Phone: \(phone)")
                print("SMS: \(sms)")
                print("Address1: \(address1)")
                print("Address2: \(address2)")
                print("Zipcode: \(zipcode)")
            }) {
                Text("Save")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 130, height: 50)
                    .background(Color.gray)
                    .cornerRadius(12)
                    .font(.title2)
            }
        }
        .padding()
        .font(.system(size: 18))
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}
