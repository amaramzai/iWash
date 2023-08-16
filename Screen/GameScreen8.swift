//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen8: View {
    //variables for font sizing
    @State private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.03
    
    //varables for tracking the dirts location
    let xDirtPos : CGFloat = UIScreen.main.bounds.size.width
    let yDirtPos : CGFloat = UIScreen.main.bounds.size.height
    
    //start state for trigger checkmark pop up on every dirts
    @State var isCleanDirt1 = false
    @State var isCleanDirt2 = false
    @State var isCleanDirt3 = false
    @State var isCleanDirt4 = false
    
    //array for opacity of every dirts
    @State var dirtOpacity : [Double] = [1.0,1.0,1.0, 1.0]
    
    //checkmark pop up start location
    @State var checkMarkDirt1: CGPoint = CGPoint(x: 0, y: 0)
    @State var checkMarkDirt2: CGPoint = CGPoint(x: 0, y: 0)
    @State var checkMarkDirt3: CGPoint = CGPoint(x: 0, y: 0)
    @State var checkMarkDirt4: CGPoint = CGPoint(x: 0, y: 0)
    
    //counter variables to keep count
    @State var counter : Int = 0
    
    //variables for showing the next button
    @State var isButtonHidden:  Bool = false
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            NavigationStack {
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    Image ("shortPants")
                        .resizable()
                        .scaledToFit()
                        .frame(width: frameImage( widths: 0.3))
                    Group {
                        Text ("step 6 : brush all the remaining ")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))  +
                        Text ("dirts ")
                            .font(.system(size: fontSizeTitle , weight: .bold , design: .rounded ))
                            .foregroundColor(.red) +
                        Text ("in")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded )) +
                        Text (" one direction")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .foregroundColor(.blue) +
                        Text (" by")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded )) +
                        Text (" hold, drag and release gesture, ")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .foregroundColor(.blue) +
                        Text (" do it several times until the dirts disappear.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                        
                    }  .multilineTextAlignment(.center)
                        .position(x: textSetPosX(textPosX: 0.5), y: textSetPosY(textPosY: 0.1))
                        .padding(.trailing, 100)
                    Group {
                        Text ("brush it until the ")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded )) +
                        Text ("green checkmarks ")
                            .font(.system(size: fontSize , weight: .bold , design: .rounded ))
                            .foregroundColor(.green) +
                        Text ("in each ")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded )) +
                        Text ("dirts ")
                            .font(.system(size: fontSize , weight: .bold , design: .rounded ))
                            .foregroundColor(.red) +
                        Text ("pops up. ")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded )) +
                        Text ("after all done, the ")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded )) +
                        Text ("next button ")
                            .font(.system(size: fontSize , weight: .bold , design: .rounded )) +
                        Text ("below will appear.")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded ))
                        
                        
                    }
                    .multilineTextAlignment(.center)
                    .position(x: textSetPosX(textPosX: 0.5), y: textSetPosY(textPosY: 0.78))
                    .padding(.trailing, 150)
                    //dirt1
                    if dirtOpacity[0] < 0.1 && !isCleanDirt1{
                        CheckMarkPop()
                            .onAppear{
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.checkMarkDirt1 = CGPoint(x: checkMarkDirt1.x + 0, y: checkMarkDirt1.y - 100)
                                    self.counter += 1
                                }
                                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { timer in
                                    withAnimation(.spring()) {
                                        self.isCleanDirt1.toggle()
                                    }
                                })
                            }
                            .position(checkMarkDirt1)
                    }else{
                        Image("dirtShortPant1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.08)
                            .modifier(AmzaiSpecialGesture(opacity: $dirtOpacity[0]))
                            .position(x: CalculateX(xPos: 0.57) , y : CalculateY(yPos: 0.43))
                    }
                    //dirt2
                    if dirtOpacity[1] < 0.1 && !isCleanDirt2{
                        CheckMarkPop()
                            .onAppear{
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.checkMarkDirt2 = CGPoint(x: checkMarkDirt2.x + 0, y: checkMarkDirt2.y - 100)
                                    self.counter += 1
                                }
                                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { timer in
                                    withAnimation(.spring()) {
                                        self.isCleanDirt2.toggle()
                                    }
                                })
                            }
                            .position(checkMarkDirt2)
                    }else{
                        Image("dirtShortPant2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.09)
                            .modifier(AmzaiSpecialGesture(opacity: $dirtOpacity[1]))
                            .position(x :  CalculateX(xPos: 0.42), y : CalculateY(yPos: 0.44))
                    }
                    
                    //dirt3
                    if dirtOpacity[2] < 0.1 && !isCleanDirt3{
                        CheckMarkPop()
                            .onAppear{
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.checkMarkDirt3 = CGPoint(x: checkMarkDirt3.x + 0, y: checkMarkDirt3.y - 100)
                                    self.counter += 1
                                }
                                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { timer in
                                    withAnimation(.spring()) {
                                        self.isCleanDirt3.toggle()
                                    }
                                })
                            }
                            .position(checkMarkDirt3)
                    }else{
                        Image("dirtShortPant3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.05)
                            .modifier(AmzaiSpecialGesture(opacity: $dirtOpacity[2]))
                            .position(x :  CalculateX(xPos: 0.48), y : CalculateY(yPos: 0.497))
                    }
                    //dirt4
                    if dirtOpacity[3] < 0.1 && !isCleanDirt4{
                        CheckMarkPop()
                            .onAppear{
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.checkMarkDirt4 = CGPoint(x: checkMarkDirt4.x + 0, y: checkMarkDirt4.y - 100)
                                    self.counter += 1
                                }
                                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { timer in
                                    withAnimation(.spring()) {
                                        self.isCleanDirt4.toggle()
                                    }
                                })
                            }
                            .position(checkMarkDirt4)
                    }else{
                        Image("dirtShortPant4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.12)
                            .modifier(AmzaiSpecialGesture(opacity: $dirtOpacity[3]))
                        .position(x :  CalculateX(xPos: 0.57), y : CalculateY(yPos: 0.514))}
                    //dirt5
                    VStack {
                        Spacer()
                        NavigationLink(destination: GameScreen9()){
                            if counter == 4 && !isButtonHidden {
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.height * 0.07)
                                    .foregroundColor(Color.black)
                                    .ignoresSafeArea(.all)
                                    .edgesIgnoringSafeArea(.all)
                            } else {
                                
                                Image ("")
                                
                            }
                        }.padding(.top, 60)
                            .padding(.bottom,100)
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
            
        }.onAppear{
            checkMarkDirt1 = CGPoint(x: CalculateX(xPos: 0.57), y: CalculateY(yPos: 0.43))
            checkMarkDirt2 = CGPoint(x: CalculateX(xPos: 0.42), y: CalculateY(yPos: 0.44))
            checkMarkDirt3 = CGPoint(x: CalculateX(xPos: 0.48), y: CalculateY(yPos: 0.497))
            checkMarkDirt4 = CGPoint(x: CalculateX(xPos: 0.57), y: CalculateY(yPos: 0.514))
        }
    }
    
    //text Positioning x
    func textSetPosX (textPosX: Double) -> Double {
        let _x : Double = UIScreen.main.bounds.width * textPosX
        return _x
    }
    //text Positioning y
    func textSetPosY (textPosY : Double) -> Double {
        let _y : Double = UIScreen.main.bounds.height * textPosY
        return _y
    }
    
    
    //putpinpointcoordinates
    func frameImage(widths : Double)-> Double{
        let _frame = UIScreen.main.bounds.size.width * widths
        return _frame
    }
    
    
    //function to calculate x and y position of each dirt
    func CalculateX (xPos : Double) -> Double{
        let _x: CGFloat = xPos * xDirtPos
        return _x
        
    }
    func CalculateY (yPos : Double) -> Double{
        let _y: CGFloat = yPos * yDirtPos
        return _y
    }
    //----------------------------------------------------
    struct GameScreen8_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen8()
        }
    }
}
