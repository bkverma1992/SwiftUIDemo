//
//  RegisterView.swift
//  DummySwiftUIProject
//
//  Created by APPLE on 31/12/25.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.dismiss) var dismiss
    @State var userName: String = ""
    @State var userLastName: String = ""
    @State var userEmail: String = ""
    @State var userPassword: String = ""
    private var size: CGFloat = 200
    
    var body: some View {
        Text("Sign UP")
            .font(.title)
            .bold()
            .foregroundColor(.black)
            .padding(.top, 20)
        Spacer()
        
        ScrollView {
            ZStack {
                Rectangle()
                    .frame(width: size,height: size)
                    .foregroundColor(Color.blue)
                    .border(.black, width: 2)
                    
                Rectangle()
                    .foregroundColor(Color.red)
                    .border(.black, width: 2)
                    .frame(width: size/sqrt(2), height: size/sqrt(2))
                    .rotationEffect(.init(degrees: 45))
                Circle()
                    .frame(width: size/sqrt(2))
                    .foregroundColor(Color.green)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                TextLabel(title: "Full Name")
                InputView(title: "Enter Your name", text: $userName)
                TextLabel(title: "Last Name")
                InputView(title: "Enter Your Last name", text: $userLastName)
                TextLabel(title: "Email")
                InputView(title: "Enter Your email", text: $userEmail)
                TextLabel(title: "Password")
                PasswordInputView(title: "Enter Your password", text: $userPassword)
                
                Button {
                    print("Dismiss")
                } label: {
                    Text("Sign Up")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .foregroundColor(Color.white)
                .clipShape(.capsule)
            }
        }
        .padding(.horizontal)
        Spacer()
        HStack {
            Text("Already have an account?")
            Button {
                dismiss()
            } label: {
                Text("Login")
            }
            .foregroundColor(.black)
            .font(.title3)
        }
    }
}

#Preview {
    RegisterView()
}
