//
//  Home.swift
//  Login Page
//
//  Created by YZH on 2021/4/30.
//

import SwiftUI

struct Home: View {
    @State var index = 0
    var body: some View {
        
        VStack {
            
            Image("logo")
                .resizable()
                .frame(width: 200, height: 180)
            
            HStack {
                
                Button(action: {
                    
                    self.index = 0
                    
                }, label: {
                    Text("Existing")
                        .foregroundColor(self.index == 0 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                })
                // 选中的状态下为白色 没选中的状态下为透明
                .background(self.index == 0 ? Color.white : Color.clear)
                .clipShape(Capsule())
                
                
                Button(action: {
                    
                    self.index = 1
                    
                }, label: {
                    Text("New")
                        .foregroundColor(self.index == 1 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                })
                .background(self.index == 1 ? Color.white : Color.clear)
                .clipShape(Capsule())
            }
            // 按钮的那个槽的背景色 设置透明度 数值越小越透明
            .background(Color.black.opacity(0.1))
            // 两个按钮整体轮廓的形状为💊
            .clipShape(Capsule())
            .padding(.top, 25)
            
            Login()
            
        }
        .padding()
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
