//
//  App#3.swift
//  App#1
//
//  Created by Alonso Alas on 23/8/22.
//

import SwiftUI

struct App_3: View {
    var body: some View {
        ZStack () {
            
            LinearGradient(gradient: .init(colors: [Color("ColorApp3"),Color("Color1App3"),Color("Color2App3")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all)
            
            HomeDating()
        }
        
    }
}

struct App_3_Previews: PreviewProvider {
    static var previews: some View {
        App_3()
    }
}

struct HomeDating : View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack {
            
            Image("logo")
                .resizable()
                .frame(width: 200, height: 180)
            
            HStack () {
                
                Button {
                    
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        self.index = 0
                    }
                    
                } label: {
                    Text("Existing")
                        .foregroundColor(self.index == 0 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(self.index == 0 ? Color.white : Color.clear)
                .clipShape(Capsule())
                
                Button {
                    
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        self.index = 1
                    }
                    
                } label: {
                    Text("New")
                        .foregroundColor(self.index == 1 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(self.index == 1 ? Color.white : Color.clear)
                .clipShape(Capsule())
                
            } // Alonso: - END HSTACK
            .background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.top, 25)
            
            if self.index == 0 {
                Login()
            } else {
                SignUp()
            }
            
            if self.index == 0 {
                Button {
                    
                } label: {
                    Text("Forget Password?")
                        .foregroundColor(.white)
                }
                .padding(.top, 20)
            }
            
            HStack(spacing: 15) {
                
                Color.white.opacity(0.7)
                    .frame(width: 35, height: 1)
                
                Text("Or")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Color.white.opacity(0.7)
                    .frame(width: 35, height: 1)
                
                
            } // Alonso: - END HSTACK
            .padding(.top, 10)
            
            HStack() {
                
                Button {
                    
                } label: {
                    Image("facebook")
                        .renderingMode(.original)
                        .padding()
                }
                .background(Color.white)
                .clipShape(Circle())
                
                Button {
                    
                } label: {
                    Image("google")
                        .renderingMode(.original)
                        .padding()
                }
                .background(Color.white)
                .clipShape(Circle())
                .padding(.leading, 25)
                
            } // Alonso: - END HSTACK
            .padding(.top, 10)
            
        } // Alonso: - END VSTACK
        .padding()
        
    }
}

struct SecureTextField : View {
    @State private var isSecureField: Bool = true
    @Binding var text: String
    
    var body: some View {
        
        HStack {
            
            if isSecureField {
                SecureField("Password", text: $text)
            } else {
                TextField(text, text: $text)
            }
            
        } // Alonso: - END OF HSTACK
        .overlay(alignment: .trailing) {
            Image(systemName: isSecureField ? "eye.slash" : "eye")
                .onTapGesture {
                    isSecureField.toggle()
                }
        }
        
    }
}


struct Login : View {
    @State private var mail = ""
    @State private var pass = ""
    
    var body: some View {
        
        VStack () {
            
            VStack() {
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Enter Email Address", text: self.$mail)
                    
                } // Alonso: - END HSTACK
                .padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                        .padding(.leading, 4)
                    
                    SecureTextField(text: self.$pass)
                        .padding(.leading, 4)
                    
                    
                } // Alonso: - END HSTACK
                .padding(.vertical, 20)
                
                
            } // Alonso: - END VSTACK
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button {
                
            } label: {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }
            .background(LinearGradient(gradient: .init(colors: [Color("Color2App3"), Color("Color1App3"), Color("ColorApp3")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
            
            
        } // Alonso: - END VSTACK
        
    }
}


struct SignUp : View {
    @State private var mail = ""
    @State private var pass = ""
    @State private var repass = ""
    
    var body: some View {
        
        VStack () {
            
            VStack() {
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Enter Email Address", text: self.$mail)
                    
                } // Alonso: - END HSTACK
                .padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                        .padding(.leading, 4)
                    
                    SecureTextField(text: self.$pass)
                        .padding(.leading, 4)
                    
                    
                } // Alonso: - END HSTACK
                .padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                        .padding(.leading, 4)
                    
                    SecureTextField(text: self.$repass)
                        .padding(.leading, 4)
                    
                    
                } // Alonso: - END HSTACK
                .padding(.vertical, 20)
                
                
            } // Alonso: - END VSTACK
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button {
                
            } label: {
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }
            .background(LinearGradient(gradient: .init(colors: [Color("Color2App3"), Color("Color1App3"), Color("ColorApp3")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
            
            
        } // Alonso: - END VSTACK
        
    }
}
