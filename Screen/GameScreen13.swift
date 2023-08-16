//
//  ContentView.swift
//
//  Created by Amar Amzari on 08/04/23.
//

import SwiftUI

struct GameScreen13: View {
    //create an animation variables, define and asign the values, to short the code
    private var animation: Animation{Animation.easeInOut.repeatForever().speed(0.06)}
    
    //variables
    @State private var isRotated = false
    
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader{ geometry in
            NavigationStack{
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                    Image("ImageStart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.8)
                        .padding(.top, 70.0)
                    
                    HStack {
                        Image("shines")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width*0.8)
                            .rotationEffect(Angle.degrees(isRotated ? -360 : 0))
                            .position(x: UIScreen.main.bounds.width * 0.2, y: UIScreen.main.bounds.height * 0.12)
                            .onAppear(){
                                DispatchQueue.main.async {
                                    self.isRotated = true
                                }
                            }
                        .animation(animation , value: isRotated)
                        Image("sun")
                            .resizable()
                            .scaledToFit()
                            .frame(width : geometry.size.width*0.1)
                            .position(x: UIScreen.main.bounds.width * -0.3, y: UIScreen.main.bounds.height * 0.12)
                    }
                    VStack {
                        Spacer()
                        Text("THANK YOU!")
                            .font(.system(size: geometry.size.width * 0.08, weight: .bold, design: .rounded))
                            .scaledToFit()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Text("i hope this app will help you as well as it helps me :)")
                            .font(.system(size: geometry.size.width * 0.035, weight: .semibold, design: .rounded))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 50)
                            .padding(.horizontal, 100)
                        NavigationLink(destination: ContentView()){
                            Image(systemName: "arrow.clockwise")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.height * 0.07)
                                .foregroundColor(Color.black)
                                .ignoresSafeArea(.all)
                                .edgesIgnoringSafeArea(.all)
                            }
                        .padding(.bottom, 100.0)
                            
                    }
                    
                }
                
            }
            
            .navigationBarHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())}
    }
}


struct GameScreen13_previews: PreviewProvider {
    static var previews: some View {
        GameScreen13()
        //.previewInterfaceOrientation(.landscapeRight)
    }
}
