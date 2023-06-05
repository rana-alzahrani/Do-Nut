//
//  MyAchievements-5View.swift
//  Do-nut(5-8)


import SwiftUI

struct MyAchievements: View {
    //animation properties
    @State var expandCards: Bool = false
    var body: some View {
        ZStack{
            Color("backg")
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 393, height: 120)
                .foregroundColor(Color.white)
                .padding(.bottom, 660.0)
                .ignoresSafeArea()
            VStack(spacing:0){
                Spacer()
                Text("My Achievements")
                    .font(.system(size: 20))
                    .offset(y: 20)
                    .font(.title)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity,alignment: expandCards ? .leading : .center)
                    .overlay(alignment: .trailing){
                        // close button
                        Button{
                            // closing cards
                            withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.7)){
                                expandCards = false
                            }
                        }label: {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color("Lbutton") , in: Circle())
                        }
                        .rotationEffect(.init(degrees: expandCards ? 45: 0))
                        .offset(x: expandCards ? 10: 15)
                        .opacity(expandCards ? 1:0)
                    }
                    .padding(.horizontal , 40.0)
                    .padding(.bottom,40)
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 0){
                        ForEach(cards){card in
                            CardView(card: card)
                        }
                    }
                    .overlay {
                        //to avoid scrolling
                        Rectangle()
                            .fill(.black.opacity(expandCards ? 0 : 0.01))
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.35)){
                                    expandCards = true
                                }
                            }
                    }
                    .padding(.top,expandCards ? 30 : 0)
                }
                .coordinateSpace(name: "SCROLL")
            }
        }
    }
    @ViewBuilder
    func CardView(card: Card)-> some View{
        GeometryReader {proxy in
            let rect = proxy.frame(in: .named("SCROLL"))
            let offset = CGFloat(getIndex(Card: card)*70)
            ZStack(){
                Image("cardImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("2")
                    .resizable()
                    .frame(width:300 ,height: 400)
                    .shadow(color: Color.gray.opacity(10),
                            radius: 8,
                            x: 0,
                            y: 2)
                    .offset(x: -169 , y:150)
                VStack(spacing: 10){
                    Text(card.con)
                        .fontWeight(.bold)
                        .foregroundColor(Color("cOrange"))
                        .padding(.top, 50.0)
                    Text(card.mess)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    Text(card.name)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    Text(card.mess1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                }
                .padding(.leading, 50)
            }
            //making it as a stack
            .offset(x:  45, y: expandCards ?  offset : -rect.minY + offset)
        }
        .frame(height: 200)
    }
}
// retreiving index
func getIndex(Card: Card) -> Int{
    return cards.firstIndex {currentCard in
        return currentCard.id == Card.id
    } ?? 0
}
struct MyAchievements_Previews: PreviewProvider {
    static var previews: some View {
        MyAchievements()
    }
}

