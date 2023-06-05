//
//  SplashScreenView.swift
//  OnPic.
//
//  Created by ashwaq almuzaini on 02/08/1444 AH.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isSplashActive = true
        @State private var size = 1.0
        @State private var opacity = 0.5
    
        var body: some View {
            if isSplashActive {
                VStack {
                    ZStack{
                        Color("gray")
                            .edgesIgnoringSafeArea(.all)
                        VStack {
                            Image("logo")
                                .resizable()
                                .frame(width: 300,height: 300)
                                .scaleEffect(size)
                                .opacity (opacity)
                            
                            Text("OnPic")
                                .foregroundColor(Color("bro"))
                                .font(.largeTitle)
                                .scaleEffect(size)
                                .padding(.top, -50.0)
                                .opacity (opacity)
                                .bold()
                                . onAppear {
                                    withAnimation (.easeIn(duration: 1.2)) {
                                        self.size = 0.9
                                        self.opacity = 1.0
                                        
                            
                                        
                                    }
                                }
                        }
                        
                        
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                            withAnimation {
                                self.isSplashActive = false
                            }
                        }
                        }
                        }
                    } else {
                        NavigationView {
                            onboarding()
                        }
                    }
                }
            }

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

