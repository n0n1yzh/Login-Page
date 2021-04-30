 //
//  ContentView.swift
//  Login Page
//
//  Created by YZH on 2021/4/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Zstack 做背景色
        ZStack{
            // 颜色渐变效果 数组中三个颜色 依次渐变 道理很简单
            LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1"), Color("Color2")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            // 主视图
            Home()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
 

