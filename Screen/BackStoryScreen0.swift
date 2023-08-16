//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct BackStoryScreen0: View {
    
    //variables
    @State private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.03
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            NavigationStack {
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    Image ("backImage2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.5)
                    VStack {
                        
                        Text ("i cannot wash my clothes on my own.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top, 60)
                        Text ("the funny thing is that i only realized this after ten years of using a washing machine. when i moved to a boarding house, i started using a laundry service once a week.")
                            .font(.system(size: fontSize , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 20.0)
                            .padding(.horizontal, 70.0)
                        
                        Spacer()
                        NavigationLink(destination: BackStoryScreen()){
                            Image(systemName: "arrow.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.height * 0.07)
                                .foregroundColor(Color.black)
                                .ignoresSafeArea(.all)
                                .edgesIgnoringSafeArea(.all)
                        }.padding(.top, 60)
                            .padding(.bottom,100)
                        
                    }
                }
            }
            
        }
    }
    
    
    
    struct BackStoryScreen0_Previews: PreviewProvider {
        static var previews: some View {
            BackStoryScreen0()
        }
    }
}
