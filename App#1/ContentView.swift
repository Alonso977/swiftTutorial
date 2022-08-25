//
//  ContentView.swift
//  App#1
//
//  Created by Alonso Alas on 17/8/22.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        Home()
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    @State var color = 0
    @State var height = UIScreen.main.bounds.height
    @State var widht = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            
            ZStack(alignment: .top){
                VStack{
                    Image(self.color == 0 ? "shoes" : "shoes1")
                        .resizable()
                        .frame(height: 350)
                    
                    HStack(spacing: 20){
                        
                        //                        Boton para cambiar a rojo
                        Button(action : {
                            
                            self.color = 0
                            
                        }) {
                            
                            VStack(spacing: 8) {
                                ZStack {
                                    Circle()
                                        .fill(Color.blue)
                                        .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(self.color == 0 ? Color.white : Color.clear, lineWidth: 2)
                                        .frame(width: 30, height: 30)
                                }
                                Text("Blue")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                            }
                        }
                        
                        //                        Boton para cambiar el color a naranja
                        Button(action : {
                            
                            self.color = 1
                            
                        }) {
                            
                            VStack(spacing: 8) {
                                ZStack {
                                    Circle()
                                        .fill(Color.orange)
                                        .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(self.color == 1 ? Color.white : Color.clear, lineWidth: 2)
                                        .frame(width: 30, height: 30)
                                }
                                Text("Orange")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                            }
                        }
                        
                        
                        
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 10)
                }
                
                HStack {
                    //                    Boton para volver
                    Button(action: {
                        
                    }, label: {
                        Image("back")
                            .renderingMode(.original)
                            .padding()
                    })
                    .padding(.leading, 10)
                    .padding(.top, 20)
                    
                    Spacer()
                    
                    //                    Boton del carrito de compras
                    Button(action: {
                        
                    }, label: {
                        Image("cart")
                            .renderingMode(.original)
                            .padding()
                    })
                    .padding(.horizontal, 10)
                    .padding(.vertical, self.height>800 ? 15 : 10)
                    .background(Color.white)
                    .clipShape(CustomShape(corner: .bottomLeft, radii: self.height>800 ? 35 : 30))
                    
                }
                
            }
            //            parte inferior de cambio de colores
            .background(self.color == 0 ? Color.blue : Color.orange)
            .clipShape(CustomShape(corner: .bottomLeft, radii: 55))
            
            
            //Dispositivos pequenios
            ScrollView(self.height > 800 ? .init() : .vertical, showsIndicators: false) {
                ScrollView {
                    VStack {
                        HStack {
                            //                        Texto del titulo del articulo
                            Text("Melodi Lamp")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            //                      Boton de LIKE
                            Button(action : {
                                
                            }) {
                                Image("heart")
                                    .renderingMode(.original)
                                    .padding()
                                    .foregroundColor(Color.white)
                            }
                            .background(self.color == 0 ? Color.blue : Color.orange)
                            .clipShape(Circle())
                        }
                        .padding(.horizontal, 35)
                        .padding(.top, 25)
                        
                        
                        //                    Texto de la descripcion
                        Text(self.color == 0 ? "Blue Air force new generetion new look" : "Nueva generacion de zapatos unisex")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 30)
                            .padding(.top, 20)
                        
                        Spacer(minLength: 0)
                        
                        HStack(spacing: 10) {
                            //   Botones de opciones del articulo.
                            Button(action: {
                                
                            }) {
                                VStack {
                                    Image("shoe-icon")
                                        .renderingMode(.original)
                                    Text("22 W")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                }
                                .padding()
                            }
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(12)
                            
                            Button(action: {
                                
                            }) {
                                VStack {
                                    Image(self.color == 0 ? "mat1" : "delivery")
                                        .renderingMode(.original)
                                    Text("24 CM")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                }
                                .padding()
                            }
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(12)
                            
                            Button(action: {
                                
                            }) {
                                VStack {
                                    Image(self.color == 0 ? "mat3" : "box")
                                        .renderingMode(.original)
                                    Text("1.6 M")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                }
                                .padding()
                            }
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(12)
                            
                        }
                        .padding(.top, 20)
                        .padding(.bottom, 25)
                        Spacer(minLength: 0)
                        
                    }
                }
            }
            
            //Dispositivos pequenios
            
            
            HStack {
                //                Texto del precio
                Text(self.color == 0 ? "$24.99" : "$99.99")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 35)
                    .padding(.bottom, 25)
                
                Spacer()
                
                //            Boton para agregar al carrito
                Button(action: {
                    
                }) {
                    Text("Add to Cart")
                        .foregroundColor(.black)
                        .padding(.vertical, 22)
                        .padding(.horizontal, 35)
                }
                .background(self.color == 0 ? Color.blue : Color.orange)
                .clipShape(CustomShape(corner: .topLeft, radii: 55))
                
            }
            
            
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
    }
}


struct CustomShape: Shape {
    var corner : UIRectCorner
    var radii : CGFloat
    
    func path(in rect : CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        return Path(path.cgPath)
    }
}

class Host : UIHostingController<ContentView> {
    override var  prefersHomeIndicatorAutoHidden: Bool{
        return true
    }
}
