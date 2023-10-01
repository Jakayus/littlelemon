//
//  UserProfile.swift
//  LittleLemon
//
//  Created by Joel Sereno on 9/27/23.
//

import SwiftUI

struct UserProfile: View {
    
    private let firstName = UserDefaults.standard.string(forKey: firstNameKey ) ?? "First Name"
    private let lastName = UserDefaults.standard.string(forKey: lastNameKey ) ?? "Second Name"
    private let email = UserDefaults.standard.string(forKey: emailKey ) ?? "Email"
    
    @Environment(\.presentationMode) var presentation // reference presentation environment
    
    var body: some View {
        VStack{
            Text("Personal Information")
                .font(.largeTitle)
                .bold()
            Image("Profile")
                .resizable()
                .scaledToFit()
            HStack{
                Text("FIRST NAME:")
                Spacer()
                Text(firstName)
                    .bold()
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color("Primary1"), lineWidth: 3)
                )
                .padding()
            
            HStack{
                Text("LAST NAME:")
                Spacer()
                Text(lastName)
                    .bold()
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color("Primary1"), lineWidth: 3)
                )
                .padding()
            
            HStack{
                Text("EMAIL:")
                Spacer()
                Text(email)
                    .bold()
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color("Primary1"), lineWidth: 3)
                )
                .padding()
            
            Button {
                UserDefaults.standard.set(false, forKey: loggedInKey)
                self.presentation.wrappedValue.dismiss() // tell Navigation to go to a previous screen
                
            } label: {
                Text("Logout")
                    .frame(maxWidth: 150)
            }
            .buttonStyle(.bordered)
            .background(Color("Primary1"))
            .foregroundColor(Color.white)
            .cornerRadius(5)
            .padding(.vertical)
            Spacer()
        }
    }
}

struct UserProfile_Preview: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
