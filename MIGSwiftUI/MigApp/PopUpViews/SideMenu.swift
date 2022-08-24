//
//  SideMenu.swift
//  MIGSwiftUI
//
//  Created by user on 22/8/22.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading, spacing: 0) {
                
                HStack(alignment: .center, spacing: 12 ) {
                    
                    Image("mig")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 65)
                        .clipShape(Circle())
                        .padding()
                    
                    Text("МиГ")
                        .font(.title2.bold())
                        .foregroundColor(Color.blue)
                    
                    Image(systemName: "xmark")
                        .frame(width: 40, height: 40)
                        .foregroundColor(.blue)
                        .offset(x: 65, y: 0)
                        .onTapGesture {
                            self.showMenu = false
                        }
                    
                }
                .frame(alignment: .leading)
                
                Divider()
                    .padding(.top)
                    .padding(.horizontal)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        VStack(alignment: .leading, spacing: 25) {
                            
                            TabButton(title: "Главная", image: "Home")
                            
                            TabButton(title: "Забронировать сумму", image: "dollar1")
                            
                            TabButton(title: "Золотые слитки", image: "gold")
                            
                            TabButton(title: "Ближайшие пункты", image: "tele")
                            
                            TabButton(title: "Финансовые новости", image: "dol")
                            
                            TabButton(title: "Архив курсов", image: "pap")
                            
                            TabButton(title: "Курсы НБ РК", image: "dia")
                            
                            TabButton(title: "Вход/Регистрация", image: "clo")
                            
                            Divider()
                            
                            
                            TabButton(title: "О компании", image: "pro")
                        }
                        .padding()
                        .padding(.vertical)
                        .padding(.top, 0)
                    }
                }
                
            }
            .padding(.vertical)
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            .frame(width: getRect().width - 90)
            .frame(maxHeight: .infinity)
            .background(Color(red: 238/255, green: 238/255, blue: 239/255))
            .frame(maxWidth: .infinity, alignment: .leading)

        }
        
    }
    
    @ViewBuilder
    func TabButton(title: String, image: String) -> some View {
        
        NavigationLink {
            Text("\(title) View")
                .navigationTitle(title)
        } label: {
            
            HStack(spacing: 13) {
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 22, height: 22)
                    
                
                Text(title)
            }
            .foregroundColor(.blue)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}

