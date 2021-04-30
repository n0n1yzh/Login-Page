//
//  Login.swift
//  Login Page
//
//  Created by YZH on 2021/4/30.
//

import SwiftUI

struct Login: View {
    
    @State var mail = ""
    @State var pass = ""
    
    var body: some View {

        VStack {
            
            HStack(spacing: 15) {
                
                Image(systemName: "envelope")
                    .foregroundColor(.black)
                
                TextField("Enter Email Address", text: self.$mail)
                
                
            }.padding(.vertical, 20)
            
            Divider()
            
            HStack(spacing: 15) {
                
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: 15, height: 18)
                    .foregroundColor(.black)
                
                SecureField("Enter Email Address", text: self.$pass)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "eye")
                        .foregroundColor(.black)
                })
                
                
            }.padding(.vertical, 20)
            
            
            
        }
        .padding(.vertical)
        .padding(.horizontal, 20)
        .background(Color.white)
        // 边框圆角弧度 值越大弧度越明显
        .cornerRadius(10)
        // 6:31 continue ... 


    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
