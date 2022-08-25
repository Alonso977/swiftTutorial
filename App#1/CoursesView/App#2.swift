//
//  App#2.swift
//  App#1
//
//  Created by Alonso Alas on 21/8/22.
//

import SwiftUI

struct App_2: View {
    var body: some View {
        HomeJuice()
    }
}

struct App_2_Previews: PreviewProvider {
    static var previews: some View {
        App_2()
    }
}


struct HomeJuice : View {
    @State var count = 0
    @State var height = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack {
            Color("Color").edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0){
                Image("orange2")
                    .resizable()
                
                ZStack (alignment: .topTrailing){
                    
                    if self.height > 750 {
                        VStack {
                            
                            HStack (){
                                Text("Orange Juice")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                            }//End of HSTACK
                            .padding(.top, 25)
                            
                            HStack() {
                                
                                VStack(alignment: .leading, spacing: 15) {
                                    Text("Fresh Drink")
                                        .font(.caption)
                                    
                                    HStack(spacing:15){
                                        Image(systemName: "star.fill")
                                        Text("4.5")
                                    }//End of HSTACK
                                    
                                    HStack(spacing:15){
                                        Image(systemName: "stopwatch.fill")
                                        Text("5 Minutes")
                                    }//End of HSTACK
                                    
                                    HStack (spacing: 10 ) {
                                        Image(systemName: "dollarsign.circle.fill")
                                        Text("Price: $5")
                                    } // Alonso: - END OF HSTACK
                                    
                                } //End of VSTACK
                                .foregroundColor(.gray)
                                
                                Spacer()
                                
                            }//End of HSTACK
                            .padding(.top)
                            
                            HStack(spacing: 18) {
                                
                                VStack() {
                                    Text("30%")
                                    Text("Sweet")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                } // End of HSTACK
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 4)
                                
                                VStack() {
                                    Text("30%")
                                    Text("Fruit")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                } // End of HSTACK
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 4)
                                
                                VStack() {
                                    Text("40%")
                                    Text("Water")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                } // End of HSTACK
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 4)
                                
                            } // End of HSTACK
                            .padding(.top)
                            
                            Text("Options")
                                .fontWeight(.bold)
                                .foregroundColor(Color("Color"))
                                .padding(.top)
                            
                            HStack(spacing: 18) {
                                
                                Button {
                                    
                                } label: {
                                    VStack{
                                        Text("Basic")
                                            .foregroundColor(.gray)
                                    } //End of VSTACK
                                    .padding()
                                    .background(.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 4)
                                }
                                .foregroundColor(.black)
                                
                                Button {
                                    
                                } label: {
                                    
                                    VStack{
                                        Text("Pepper Toppings")
                                            .foregroundColor(.gray)
                                    } //End of VSTACK
                                    .padding()
                                    .background(.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 4)
                                }
                                .foregroundColor(.black)
                                
                                
                            } //End of HSTACK
                            
                            HStack(){
                                
                                Button {
                                    
                                } label: {
                                    
                                    HStack{
                                        Image(systemName: "info.circle")
                                            .foregroundColor(.gray)
                                            .padding()
                                    } //End of VSTACK
                                    
                                }
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(radius: 4)
                                .padding(.top)
                                
                            } //End of HSTACK
                            
                        } //End of VSTACK
                        .padding(.bottom, 40)
                        .padding(.horizontal, 20)
                        .background(CustomJuiceShape().fill(Color.white))
                        .clipShape(CornersJuice())
                    } else {
                        
                        ScrollView(.vertical, showsIndicators: false, content: {
                            VStack {
                                
                                HStack (){
                                    Text("Orange Juice")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                    
                                }//End of HSTACK
                                .padding(.top, 25)
                                
                                HStack() {
                                    
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("Fresh Drink")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        
                                        HStack(spacing:15){
                                            Image(systemName: "star")
                                            Text("4.5")
                                        }//End of HSTACK
                                        .foregroundColor(.gray)
                                        
                                        HStack(spacing:15){
                                            Image(systemName: "stopwatch")
                                            Text("5 Minutes")
                                        }//End of HSTACK
                                        .foregroundColor(.gray)
                                        
                                    }//End of VSTACK
                                    
                                    Spacer()
                                    
                                }//End of HSTACK
                                .padding(.top)
                                
                                HStack(spacing: 18) {
                                    
                                    VStack() {
                                        Text("30%")
                                        Text("Sweet")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    } // End of HSTACK
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 4)
                                    
                                    VStack() {
                                        Text("30%")
                                        Text("Fruit")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    } // End of HSTACK
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 4)
                                    
                                    VStack() {
                                        Text("40%")
                                        Text("Water")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    } // End of HSTACK
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 4)
                                    
                                } // End of HSTACK
                                .padding(.top)
                                
                                Text("Options")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Color"))
                                    .padding(.top)
                                
                                HStack(spacing: 18) {
                                    
                                    Button {
                                        
                                    } label: {
                                        VStack{
                                            Text("Basic")
                                                .foregroundColor(.gray)
                                        } //End of VSTACK
                                        .padding()
                                        .background(.white)
                                        .cornerRadius(10)
                                        .shadow(radius: 4)
                                    }
                                    .foregroundColor(.black)
                                    
                                    Button {
                                        
                                    } label: {
                                        
                                        VStack{
                                            Text("Pepper Toppings")
                                                .foregroundColor(.gray)
                                        } //End of VSTACK
                                        .padding()
                                        .background(.white)
                                        .cornerRadius(10)
                                        .shadow(radius: 4)
                                    }
                                    .foregroundColor(.black)
                                    
                                    
                                } //End of HSTACK
                                
                                HStack(){
                                    
                                    Button {
                                        
                                    } label: {
                                        
                                        HStack{
                                            Image(systemName: "info.circle")
                                                .foregroundColor(.gray)
                                                .padding()
                                                .padding(.bottom, 10)
                                        } //End of VSTACK
                                        
                                    }
                                    .background(Color.white)
                                    .clipShape(Circle())
                                    .shadow(radius: 4)
                                    .padding(.top)
                                    
                                } //End of HSTACK
                                
                            } //End of VSTACK
                        })
                        
                        .padding(.bottom, 40)
                        .padding(.horizontal, 20)
                        .background(CustomJuiceShape().fill(Color.white))
                        .clipShape(CornersJuice())
                        
                    }
                    
                    VStack(spacing: 15){
                        Button {
                            self.count += 1
                        } label: {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.gray)
                                .font(.title)
                        }
                        
                        Text("\(self.count)")
                            .foregroundColor(.yellow)
                            .padding(10)
                            .background(Color.black)
                            .clipShape(Circle())

                        Button {
                            if self.count > 0 {
                                self.count -= 1
                            }
                        } label: {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.gray)
                                .font(.title)
                        }
                        
                        
                    } // Alonso: - END VSTACK
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 4)
                    .padding(.trailing, 25)
                    .offset(y: -55)
                    
                } // Alonso: - end ZSTACK
                .zIndex(40)
                .offset(y: -40)
                .padding(.bottom, -40)
                
                Spacer()
                
                HStack() {
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        Text("Total Order")
                            .fontWeight(.bold)
                        
                        HStack(spacing: 18) {
                            
                            VStack(spacing: 8){
                                Text("\(self.count)")
                                    .fontWeight(.bold)
                                
                                Text("Total Order")
                                
                            } // Alonso: - END OF VSTACK
                            
                            VStack(spacing: 8){
                                Text("$ \(self.count * 5)")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor((self.count > 0 ? .green : .white))
                                
                                Text("Total Price")
                                
                            } // Alonso: - END OF VSTACK
                            
                        } // Alonso: - END OF HSTACK
                         
                    } // Alonso: - END OF VSTACK
                    .foregroundColor(.white)
                    .padding(.leading, 20)
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        
                    } label: {
                        
                        VStack () {
                            Text("Pay")
                                .fontWeight(.bold)
                            
                            Text("Now")
                                .fontWeight(.bold)
                        } // Alonso: - End VSTACK
                        .foregroundColor(.white)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 25)
                        .background(Color.yellow)
                        .cornerRadius(15)
                        .shadow(radius: 4)
                    }
                    .padding(.trailing, 25)
                    .offset(y: -55)
                    
                } // Alonso: - END OF HSTACK
                .zIndex(40)
                .padding(.bottom)
                
            } //End of VSTACK
            .edgesIgnoringSafeArea(.top)
        } //End of ZSTACK
        
    }
}


struct CustomJuiceShape : Shape {
    func path(in rect: CGRect) -> Path {
        return Path{path in
            path.move(to: CGPoint(x:0, y:0))
            path.addLine(to: CGPoint(x:rect.width, y:0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 40))
        }
    }
}

struct CornersJuice : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
        
    }
}
