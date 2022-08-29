//
//  App#5.swift
//  App#1
//
//  Created by Alonso Alas on 25/8/22.
//

import SwiftUI

struct App_5: View {
    var body: some View {
        HomeFashion()
    }
}

struct App_5_Previews: PreviewProvider {
    static var previews: some View {
        App_5()
    }
}


struct HomeFashion : View {
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            ZStack {
                
                Text("Seasons").font(.title)
                
                HStack(spacing: 5) {
                    
                    Button  {
                        
                    } label: {
                        Image("Menu").renderingMode(.original)
                    }
                    
                    Spacer()
                    
                    Button  {
                        
                    } label: {
                        Image("search")
                    }
                    
                    Button  {
                        
                    } label: {
                        Image("noti")
                    }
                    Button  {
                        
                    } label: {
                        Image("shop")
                    }
                } //END HSTACK
                
            } // END ZSTACK
            .background(Color.white)
            .padding([.leading,.trailing,.top], 10)
            
            MainView()
            
        } //END VSTACK
    }
}


struct MainView: View {
    var body: some View {
        
        VStack(spacing: 15) {
            
            HStack {
                
                HStack {
                    
                    Button {
                        
                    } label: {
                        
                        HStack {
                            
                            Text("Casual Dress")
                            
                            Spacer()
                            
                            Image("down")
                            
                        } //END HSTACK
                        .padding()
                        
                    }
                    .foregroundColor(.black)
                    .background(Color.white)
                    
                    Button {
                        
                    } label: {
                        Image("filter")
                            .renderingMode(.original)
                            .padding()
                    }
                    .background(Color.white)
                    
                    
                } //END HSTACK
                
            } //END HSTACK
            
            DetailScroll()
            
        } //END VSTACK
        .background(Color("Color1App5"))
        .padding()
    }
}


struct DetailScroll: View {
    var body : some View {
        
                ScrollView(.vertical, showsIndicators: false) {
        
                    VStack(spacing: 12){
                        ForEach(datas){i in
        
                            VStack () {
                                ForEach(i.row) { j in
        
                                    VStack(spacing: 8) {
        
                                        Image(j.image)
                                            .resizable()
                                            .frame(width: UIScreen.main.bounds.width / 2 - 25, height: 240)
        
                                        HStack () {
        
                                            VStack (alignment: .leading, spacing: 10) {
        
                                                Text(j.name)
                                                Text(j.price)
                                                    .fontWeight(.heavy)
        
                                            } //END VSTACK
        
                                            Spacer()
        
                                            Button {
        
                                            } label: {
                                                Image("option")
                                                    .renderingMode(.original)
                                            }.padding(.trailing, 15)
        
        
                                        } //END HSTACK
        
                                    } //END VSTACK
                                } //END FOREACH
                            } //HSTACK END
        
                        } //END FOREACH
                    } //END VSTACK
        
                } //End SCROLLVIEW
        
    }
}

struct type : Identifiable {
    
    var id : Int
    var row : [row]
    
}

struct row : Identifiable {
    
    var id: Int
    var name: String
    var image: String
    var price: String
    
}

var sizes = ["S","M","X","XL"]

var types = ["Dress","Pants","Blazers","Jackets"]

var datas = [
    
    type(id: 0, row: [row(id: 0, name: "Fit an flare", image: "p1", price: "$122.99")]),
    
    type(id: 1, row: [row(id: 1, name: "Summer Vibes", image: "p12", price: "$159.99")]),
    
    type(id: 2, row: [row(id: 2, name: "Looking Relax", image: "p22", price: "$22.99")]),
    
]
