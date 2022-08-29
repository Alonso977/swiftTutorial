//
//  App#4.swift
//  App#1
//
//  Created by Alonso Alas on 25/8/22.
//

import SwiftUI

struct App_4: View {
    var body: some View {
        HomeFruit()
    }
}

struct App_4_Previews: PreviewProvider {
    static var previews: some View {
        App_4()
    }
}


struct HomeFruit : View {
    @State var width = UIScreen.main.bounds.width
    @State var data = [
        
        DataType(name: "Breaking Banana", price: "$5/Dozen", content: "Bananas are hight in potasium and contain goog levels of protien and dietary fiber", calories: "89", expand: ["0.3 g", "23 g", "1.1 g"], color: Color("ban"), image: "ban"),
        
        DataType(name: "Amazing Avocado", price: "$25/Kg", content: "Avocados are hight in potasium and contain goog levels of protien and dietary fiber", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("ava"), image: "ava"),
        
        DataType(name: "Seductive Strawberry", price: "$100/Kg", content: "Strawberrys are hight in potasium and contain goog levels of protien and dietary fiber", calories: "89", expand: ["0.3 g", "23 g", "1.1 g"], color: Color("sta"), image: "sta"),
        
    ]
    
    @State var index = 0
    
    var body: some View {
        ZStack(alignment: .top) {
            
            VStack() {
                
                HStack () {
                    
                    Button  {
                        
                    } label: {
                        
                        HStack (spacing: 10) {
                            
                            Image("back4")
                                .renderingMode(.original)
                            
                            Text("Back")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                        } //END HSTACK
                        
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        Image("bag")
                            .renderingMode(.original)
                        
                    }
                    
                } //END HSTACK MENU
                .padding()
                
                HStack() {
                    
                    Button  {
                        
                        if self.index != 0 {
                            self.index -= 1
                        }
                        
                    } label: {
                        Image("arrow-left")
                            .renderingMode(.original)
                    }
                    .opacity(self.index != 0 ? 1 : 0.5)
                    .disabled(self.index != 0 ? false : true)
                    
                    
                    Image(self.data[index].image)
                        .resizable()
                        .shadow(radius: 0)
                        .frame(width: 180, height: 180)
                        .cornerRadius(100)
                    
                    Button  {
                        
                        if self.index != self.data.count - 1 {
                            self.index += 1
                        }
                        
                    } label: {
                        Image("arrow-right")
                            .renderingMode(.original)
                    }
                    .opacity(self.index != self.data.count - 1 ? 1 : 0.5)
                    .disabled(self.index != self.data.count - 1 ? false : true)
                    
                } //END OF HSTACK
                .padding(.top, 10)
                
                VStack (spacing: 20) {
                    
                    Text(self.data[self.index].name)
                        .fontWeight(.bold)
                        .font(.title2)
                    
                    //                    Text(self.data[self.index].price)
                    //                        .fontWeight(.bold)
                    
                    Text(self.data[self.index].content)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                    Text("Nutrition Value")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    HStack {
                        
                        HStack () {
                            
                            Image(systemName: "flame.fill")
                                .resizable()
                                .frame(width: 25, height: 35)
                                .foregroundColor(.white)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                
                                Text(self.data[self.index].calories)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                
                                Text("Calories")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                
                                
                            } //END VSTACK
                            .padding(.leading, 20)
                            
                        } //END HSTACK CALORIES
                        .padding()
                        .background(self.data[index].color)
                        .cornerRadius(10)
                        
                        Spacer()
                        HStack {
                            
                            HStack {
                                
                                
                                Text(self.data[self.index].price)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .opacity(0.7)
                            }
                        }
                    }.padding()
                    
                    HStack {
                        
                        VStack(alignment: .center, spacing: 10) {
                            
                            Text(self.data[self.index].expand[0])
                                .fontWeight(.bold)
                            
                            Text("Fat")
                                .foregroundColor(.gray)
                            
                        } // END VSTACK EXPAND
                        Spacer()
                        
                        VStack(alignment: .center, spacing: 10) {
                            
                            Text(self.data[self.index].expand[1])
                                .fontWeight(.bold)
                            
                            Text("Carbohydrade")
                                .foregroundColor(.gray)
                            
                        } // END VSTACK EXPAND
                        Spacer()
                        
                        VStack(alignment: .center, spacing: 10) {
                            
                            Text(self.data[self.index].expand[2])
                                .fontWeight(.bold)
                            
                            Text("Protien")
                                .foregroundColor(.gray)
                            
                        } // END VSTACK EXPAND
                        
                    } ///HSTACK END
                    .padding(.horizontal)
                    .padding(.top, 20)
                    
                    
                } //END VSTACK
                .padding(.horizontal, 20)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Add to Cart")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(width: self.width - 50)
                        .background(self.data[index].color)
                        .clipShape(Capsule())
                }
                .padding(.bottom, 25)
                
                
            } //END VSTACK
            .zIndex(1)
            // zindex swap position in the stack
            
            
            // Now going to create top curve
            Circle()
                .fill(self.data[index].color)
                .frame(width: self.width + 200, height: self.width + 200)
                .padding(.horizontal, -100)
                .offset(y: -self.width) // moving view up
            
            // now we going to expand circle size
            // though we re expanding circle size by 200 so we pad horizontal to  -100 to fit into screen
            
            
            
            
        } //END OF ZSTACK CONTAINER
    }
}


// sample Data
struct DataType {
    
    var name : String
    var price : String
    var content : String
    var calories : String
    var expand : [String]
    var color : Color
    var image : String
    
}

