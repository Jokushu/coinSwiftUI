//
//  ContentView.swift
//  CoinWatch
//
//  Created by Vincent Gunawan on 10/03/22.
//

import SwiftUI

let bitcoin: [CGFloat] = [
    12000,15200,17500,8900,9650,12600,15500
]

let eth: [CGFloat] = [
    1000,1200,2000,1000,3350,2305,3400
]

let bnb: [CGFloat] = [
    1200,100,340,4995,300,99,1000
]

let xrp: [CGFloat] = [
    100,300,250,450,600,200,540
]

let terra: [CGFloat] = [
    1200,100,340,4995,300,99,1000
]

struct Header: View {
    var body: some View {
        HStack {
            Image(systemName: "rectangle.grid.2x2")
                .font(.title3)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.ultraThinMaterial)
                        .frame(width: 50, height: 50)
                ).padding(.leading, 30)
            Spacer()
            Text("Biniancex")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.yellow)
            Spacer()
            Image(systemName: "bell")
                .font(.title3)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.ultraThinMaterial)
                        .frame(width: 50, height: 50)
                ).padding(.trailing, 30)
        }
    }
}

struct card: View {
    var body: some View {
        VStack(alignment:.leading) {
            ZStack {
                HStack {
                    Circle()
                        .fill(.red)
                        .frame(width: 50, height: 50)
                        .padding()
                        .zIndex(100)
                    Circle()
                        .fill(.orange)
                        .frame(width: 50, height: 50)
                        .offset(x: -55, y: 0)
                        .padding()
                    Spacer()
                    Image(systemName: "info.circle")
                        .font(.title)
                        .padding()
                }
            }
            .rotationEffect(.degrees(2))
            Text("$1,391.23")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .rotationEffect(.degrees(2))
            Text("2371 5897 8428 5569")
                .fontWeight(.semibold)
                .padding(.horizontal)
                .rotationEffect(.degrees(2))
            HStack {
                VStack(alignment: .leading) {
                    Text("Expired Date")
                        .foregroundColor(.gray)
                    Text("05/27")
                        .foregroundColor(.gray)
                }.padding(10)
                    .padding(.leading,6)
                VStack(alignment: .leading) {
                    Text("Code")
                        .foregroundColor(.gray)
                    Text("••••")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }.padding(10)
            }
            .rotationEffect(.degrees(2))
            
            
        }.background(
            RoundedRectangle(cornerRadius: 30)
                .fill(.ultraThinMaterial)
                .frame(width: 350, height: 270)
                .padding(.top)
                .rotationEffect(.degrees(2))
        ).padding(.horizontal)
            
    }
        
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("crypto_bg")
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    Header()
                    
                    VStack(alignment: .leading) {
                        Text("Hi Vincent 👋")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.horizontal, 30)
                        Text("How is your day?")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 30)
                    }
                    
                    ZStack {
                        card()
                            .zIndex(100)
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.linearGradient(colors: [.clear, .white], startPoint: .leading, endPoint: .trailing))
                            .frame(width: 350, height: 270)
                            .padding(.top)
                            .rotationEffect(.degrees(2))
                    }
                    
                    Text("Markets")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    HStack {
                        Image("bitcoin_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 60, height: 60)
                            ).padding(.leading, 10)
                            
                            Text("Bitcoin")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            LineGraph(data: bitcoin)
                                .frame(width: 100, height: 70)
                                .padding(.horizontal)
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("$87,000")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                Text("+8.3%")
                                    .font(.subheadline)
                                    .foregroundColor(.green)
                            }.padding(.trailing)
                        }
                    HStack {
                        Image("eth_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 60, height: 60)
                            ).padding(.leading, 10)
                        
                        Text("Ethereum")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        LineGraph(data: eth)
                            .frame(width: 90, height: 70)
                            .padding(.horizontal)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("$2,000")
                                .font(.callout)
                                .fontWeight(.semibold)
                            Text("-0.23%")
                                .font(.subheadline)
                                .foregroundColor(.red)
                        }.padding(.trailing)
                    }
                    HStack {
                        Image("bnb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 60, height: 60)
                            ).padding(.leading, 10)
                        
                        Text("Binance")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        LineGraph(data: bnb)
                            .frame(width: 90, height: 70)
                            .padding(.horizontal)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("$1,000")
                                .font(.callout)
                                .fontWeight(.semibold)
                            Text("+0.53%")
                                .font(.subheadline)
                                .foregroundColor(.green)
                        }.padding(.trailing)
                    }
                    HStack {
                        Image("xrp_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 60, height: 60)
                            ).padding(.leading, 10)
                        
                        Text("Ripple")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        LineGraph(data: xrp)
                            .frame(width: 90, height: 70)
                            .padding(.horizontal)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("$500")
                                .font(.callout)
                                .fontWeight(.semibold)
                            Text("-0.23%")
                                .font(.subheadline)
                                .foregroundColor(.red)
                        }.padding(.trailing)
                    }
                    HStack {
                        Image("terra_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 60, height: 60)
                            ).padding(.leading, 10)
                        
                        Text("Terra")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        LineGraph(data: terra)
                            .frame(width: 90, height: 70)
                            .padding(.horizontal)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("$100")
                                .font(.callout)
                                .fontWeight(.semibold)
                            Text("+0.53%")
                                .font(.subheadline)
                                .foregroundColor(.green)
                        }.padding(.trailing)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portrait)
    }
}
