//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct ConclusionFacts: View {
    
    //varables
    @State private var xPosImage : Double = UIScreen.main.bounds.width * 0.5
    @State private var yPosImage : Double = UIScreen.main.bounds.height * 0.4
    
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            NavigationStack {
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    Image ("facts2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.7)
                        .position(x: xPosImage, y: yPosImage)
                    VStack {
                        Spacer()
                        HStack {
                            //Spacer()
//                            NavigationLink(destination: GameScreen5()){
//                                Image(systemName: "arrow.clockwise")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: geometry.size.height * 0.07)
//                                    .foregroundColor(Color.black)
//                                    .ignoresSafeArea(.all)
//                                    .edgesIgnoringSafeArea(.all)
//                            }.padding(.top, 60)
//                                .padding(.bottom,100)
                            //Spacer()
                            NavigationLink(destination: GameScreen6()){
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.height * 0.07)
                                    .foregroundColor(Color.black)
                                    .ignoresSafeArea(.all)
                                    .edgesIgnoringSafeArea(.all)
                            }.padding(.top, 60)
                                .padding(.bottom,100)
                           // Spacer()
                        }
                    }
                }.navigationBarBackButtonHidden(true)
            }
            
        }
    }
    
    
    
    struct ConclusionFacts_Previews: PreviewProvider {
        static var previews: some View {
            ConclusionFacts()
        }
    }
}
