//
//  CustomView.swift
//  ViewBuilder
//
//  Created by 米国梁 on 2021/4/26.
//

import SwiftUI

struct CustomView<Content: View>: View {
    
    let content: Content
    
    init(content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        
        HStack {
            
            GeometryReader { proxy in
             
                // Centerlize the content
                content
                    .position(CGPoint(x: proxy.size.width / 2, y: proxy.size.height / 2))
                
            }
            
        }
        .background(Color.yellow)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView {
            Text("Hello World!")
        }
    }
}
