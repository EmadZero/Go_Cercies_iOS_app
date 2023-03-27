//
//  ContentView.swift
//  Go-ceries
//
//  Created by Emad A on 2/4/23.
//

//import SwiftUI
//
//struct ContentView: View {
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                CitySelector()
////                NavigationLink(destination: Text("Destination"), label: {
////                    Text("test")
////                })
//            }
//
//        }
//    }
//
//}
//
//
//struct CitySelector: View {
//    let cityList = [
//        "Atlanta",
//        "Boston",
//        "Chicago",
//        "Dallas",
//        "Los Angeles",
//        "Miami",
//        "New York City",
//        "Philadelphia",
//        "Washington DC",
//        "San Francisco",
//        "Toronto",
//        "Paris"
//    ]
//    var body: some View {
//        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.accentColor, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                .ignoresSafeArea()
//            ScrollView  {
//                ForEach(cityList, id: \.self) { cityList in
//                    NavigationLink(
//                        destination: Text(cityList)) {
//                            Image(systemName: "airplane")
//                            Text(cityList)
//                        }
//                        .padding()
//                        .background(RoundedRectangle(cornerRadius:15).fill(Color(.label)))
//                }
//                .navigationTitle("Cities")
//            }
//        }
//
//    }
//
//    struct AtlantaSelect: View {
//        var body: some View {
//            VStack {
//                Text("Test")
//            }
//        }
//    }
//
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//
//        }
//    }
//}

import SwiftUI

struct CityList: View {
    
    var cities: [City] = [.init(name: "Atlanta"), .init(name: "Boston"), .init(name: "Chicago"), .init(name: "Dallas"), .init(name: "Los Angeles"), .init(name: "Miami"), .init(name: "New York City"), .init(name: "Philadelphia")]
    
    var foodsATL: [Food] = [.init(name: "Milk", oldPrice: "3.03", newPrice: "3.39", percentDiff: "11.94%", imageName: "milk"),
                    .init(name: "Bread", oldPrice: "2.69", newPrice: "2.51", percentDiff: "-6.69%", imageName: "bread"), .init(name: "Rice", oldPrice: "1.59", newPrice: "1.93", percentDiff: "21.57%", imageName: "rice"), .init(name: "Eggs", oldPrice: "1.80", newPrice: "3.91", percentDiff: "117.22%", imageName: "eggs"),
                .init(name: "Cheese", oldPrice: "4.21", newPrice: "5.94", percentDiff: "40.96%", imageName: "cheese"), .init(name: "Chicken", oldPrice: "5.34", newPrice: "5.31", percentDiff: "-0.62%", imageName: "chicken-breast"), .init(name: "Ground Beef", oldPrice: "5.18", newPrice: "6.12", percentDiff: "18.04%", imageName: "beef"),
                            .init(name: "Apples", oldPrice: "2.79", newPrice: "2.28", percentDiff: "-18.40%", imageName: "apple")]
    
    var foodsBOS: [Food] = [.init(name: "Milk", oldPrice: "3.79", newPrice: "4.16", percentDiff: "9,90%", imageName: "milk"), .init(name: "Bread", oldPrice: "3.60", newPrice: "3.61", percentDiff: "0.28%", imageName: "bread"), .init(name: "Rice", oldPrice: "1.46", newPrice: "1.96", percentDiff: "34.61%", imageName: "rice"), .init(name: "Eggs", oldPrice: "2.41", newPrice: "4.26", percentDiff: "76.76%", imageName: "eggs"), .init(name: "Cheese", oldPrice: "6.92", newPrice: "7.63", percentDiff: "10.30%", imageName: "cheese"), .init(name: "Chicken", oldPrice:"4.56", newPrice: "6.43", percentDiff: "40.91%", imageName: "chicken-breast"), .init(name: "Ground Beef", oldPrice: "5.18", newPrice: "6.12", percentDiff: "18.04%", imageName: "beef"), .init(name: "Apples", oldPrice: "1.77", newPrice: "2.27", percentDiff: "27.99%", imageName: "apple")]
    
    var foodsCHI: [Food] = [.init(name: "Milk", oldPrice: "3.03", newPrice: "3.35", percentDiff: "10.62%", imageName: "milk"), .init(name: "Bread", oldPrice: "2.70", newPrice: "2.95", percentDiff: "9.26%", imageName: "bread"), .init(name: "Rice", oldPrice: "1.60", newPrice: "1.73", percentDiff: "8.35%", imageName: "rice"), .init(name: "Eggs", oldPrice: "2.14", newPrice: "3.83", percentDiff: "78.97%", imageName: "eggs"), .init(name: "Cheese", oldPrice: "4.56", newPrice: "6.18", percentDiff: "35.57%", imageName: "cheese"), .init(name: "Chicken", oldPrice: "3.86", newPrice: "5.40", percentDiff: "39.73%", imageName: "chicken-breast"), .init(name: "Ground Beef", oldPrice: "5.61", newPrice: "7.46", percentDiff: "33.06%", imageName: "beef"), .init(name: "Apples", oldPrice: "1.78", newPrice: "2.36", percentDiff: "32.39%", imageName: "apple")]
    
    var foodsDAL: [Food] = [.init(name: "Milk", oldPrice: "3.18", newPrice: "3.95", percentDiff: "5.35%", imageName: "milk"), .init(name: "Bread", oldPrice: "2.85", newPrice: "2.93", percentDiff: "2.81%", imageName: "bread"), .init(name: "Rice", oldPrice: "1.60", newPrice: "1.91", percentDiff: "19.63%", imageName: "rice"), .init(name: "Eggs", oldPrice: "2.26", newPrice: "4.04", percentDiff: "78.76%", imageName: "eggs"), .init(name: "Cheese", oldPrice: "5.47", newPrice: "4.82", percentDiff: "-11.89%", imageName: "cheese"), .init(name: "Chicken", oldPrice: "5.04", newPrice: "5.91", percentDiff: "17.28%", imageName: "chicken-breast"), .init(name: "Ground Beef", oldPrice: "8.08", newPrice: "7.02", percentDiff: "-13.52%", imageName: "beef"), .init(name: "Apples", oldPrice: "2.05", newPrice: "2.23", percentDiff: "9.01%", imageName: "apple")]
    
    var foodsLA: [Food] = [.init(name: "Milk", oldPrice: "3.63", newPrice: "4.47", percentDiff: "23.01%", imageName: "milk"), .init(name: "Bread", oldPrice: "3.42", newPrice: "3.53", percentDiff: "3.22%", imageName: "bread"), .init(name: "Rice", oldPrice: "2.02", newPrice: "2.61", percentDiff: "29.30%", imageName: "rice"), .init(name: "Eggs", oldPrice: "3.46", newPrice: "4.67", percentDiff: "34.97%", imageName: "eggs"), .init(name: "Cheese", oldPrice: "5.78", newPrice: "5.95", percentDiff: "2.88%", imageName: "cheese"), .init(name: "Chicken", oldPrice: "5.32", newPrice: "5.39", percentDiff: "1.30%", imageName: "chicken-breast"), .init(name: "Ground Beef", oldPrice: "6.81", newPrice: "8.26", percentDiff: "21.32%", imageName: "beef"), .init(name: "Apples", oldPrice: "1.83", newPrice: "1.85", percentDiff: "1.20%", imageName: "apple")]
    
    var foodsMIA: [Food] = [.init(name: "Milk", oldPrice: "3.90", newPrice: "4.37", percentDiff: "12.08%", imageName: "milk"), .init(name: "Bread", oldPrice: "3.05", newPrice: "2.83", percentDiff: "-7.21%", imageName: "bread"), .init(name: "Rice", oldPrice: "2.55", newPrice: "2.49", percentDiff: "-2.32%", imageName: "rice"), .init(name: "Eggs", oldPrice: "2.93", newPrice: "4.72", percentDiff: "61.09%", imageName: "eggs"), .init(name: "Cheese", oldPrice: "5.52", newPrice: "5.48", percentDiff: "-0.81%", imageName: "cheese"), .init(name: "Chicken", oldPrice: "5.08", newPrice: "7.14", percentDiff: "40.67%", imageName: "chicken-breast"), .init(name: "Ground Beef", oldPrice: "7.09", newPrice: "6.98", percentDiff: "-1.55%", imageName: "beef"), .init(name: "Apples", oldPrice: "2.55", newPrice: "2.99", percentDiff: "17.08%", imageName: "apple")]
    
    var foodsNYC: [Food] = [.init(name: "Milk", oldPrice: "4.47", newPrice: "4.76", percentDiff: "6.56%", imageName: "milk"), .init(name: "Bread", oldPrice: "3.98", newPrice: "3.87", percentDiff: "-2.76%", imageName: "bread"), .init(name: "Rice", oldPrice: "2.57", newPrice: "3.46", percentDiff: "41.78%", imageName: "rice"), .init(name: "Eggs", oldPrice: "3.23", newPrice: "4.64", percentDiff: "43.65%", imageName: "eggs"), .init(name: "Cheese", oldPrice: "5.90", newPrice: "7.65", percentDiff: "28.11%", imageName: "cheese"), .init(name: "Chicken", oldPrice: "5.79", newPrice: "7.71", percentDiff: "33.11%", imageName: "chicken-breast"), .init(name: "Ground Beef", oldPrice: "9.77", newPrice: "9.73", percentDiff: "-0.46%", imageName: "beef"), .init(name: "Apples", oldPrice: "2.58", newPrice: "2.58", percentDiff: "-0.04%", imageName: "apple")]
    
    var foodsPHI: [Food] = [.init(name: "Milk", oldPrice: "4.05", newPrice: "4.66", percentDiff: "15.05%", imageName: "milk"), .init(name: "Bread", oldPrice: "3.13", newPrice: "3.28", percentDiff: "4.79%", imageName: "bread"), .init(name: "Rice", oldPrice: "1.96", newPrice: "2.23", percentDiff: "13.80%", imageName: "rice"), .init(name: "Eggs", oldPrice: "2.13", newPrice: "4.02", percentDiff: "88.73%", imageName: "eggs"), .init(name: "Cheese", oldPrice: "4.81", newPrice: "5.83", percentDiff: "21.25%", imageName: "cheese"), .init(name: "Chicken", oldPrice: "5.46", newPrice: "6.37", percentDiff: "16.74%", imageName: "chicken-breast"), .init(name: "Ground Beef", oldPrice: "6.74", newPrice: "6.76", percentDiff: "0.22%", imageName: "beef"), .init(name: "Apples", oldPrice: "2.41", newPrice: "2.29", percentDiff: "-4.92%", imageName: "apple")]
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Cities") {
                    ForEach(cities, id: \.name) { city in
                        NavigationLink(value: city){
                            Label(city.name, systemImage: "airplane")
                        }
                    }
                }
            }
            .navigationTitle("Select a City!")
            .navigationDestination(for: City.self) { city in
                ZStack {
                    Label(city.name, systemImage: "airplane")
                        .font(.largeTitle).bold()
                    if (city.name == "Atlanta"){
                        List {
                            ForEach(foodsATL, id: \.name) { food in
                                NavigationLink(value: food){
                                    HStack {
                                        Label(food.name, systemImage: food.imageName)
                                        Text("Cost: $" + food.newPrice)
                                    }
                                }
                            }
                        }
                        .navigationTitle("Atlanta")
                    }
                    
                    if (city.name == "Boston"){
                        List {
                            ForEach(foodsBOS, id: \.name) { food in
                                NavigationLink(value: food){
                                    Label(food.name, systemImage: food.imageName)
                                    Text("Cost: $" + food.newPrice)
                                }
                            }
                        }
                        .navigationTitle("Boston")
                    }
                    
                    if (city.name == "Chicago"){
                        List {
                            ForEach(foodsCHI, id: \.name) { food in
                                NavigationLink(value: food){
                                    Label(food.name, systemImage: food.imageName)
                                    Text("Cost: $" + food.newPrice)
                                }
                            }
                        }
                        .navigationTitle("Chicago")
                    }
                    
                    if (city.name == "Dallas"){
                        List {
                            ForEach(foodsDAL, id: \.name) { food in
                                NavigationLink(value: food){
                                    Label(food.name, systemImage: food.imageName)
                                    Text("Cost: $" + food.newPrice)
                                }
                            }
                        }
                        .navigationTitle("Dallas")
                    }
                    
                    if (city.name == "Los Angeles"){
                        List {
                            ForEach(foodsLA, id: \.name) { food in
                                NavigationLink(value: food){
                                    Label(food.name, systemImage: food.imageName)
                                    Text("Cost: $" + food.newPrice)
                                }
                            }
                        }
                        .navigationTitle("Los Angeles")
                    }
                    
                    if (city.name == "Miami"){
                        List {
                            ForEach(foodsMIA, id: \.name) { food in
                                NavigationLink(value: food){
                                    Label(food.name, systemImage: food.imageName)
                                    Text("Cost: $" + food.newPrice)
                                }
                            }
                        }
                        .navigationTitle("Miami")
                    }
                    
                    if (city.name == "New York City"){
                        List {
                            ForEach(foodsNYC, id: \.name) { food in
                                NavigationLink(value: food){
                                    Label(food.name, systemImage: food.imageName)
                                    Text("Cost: $" + food.newPrice)
                                }
                            }
                        }
                        .navigationTitle("New York City")
                    }
                    
                    if (city.name == "Philadelphia"){
                        List {
                            ForEach(foodsPHI, id: \.name) { food in
                                NavigationLink(value: food){
                                    Label(food.name, systemImage: food.imageName)
                                    Text("Cost: $" + food.newPrice)
                                }
                            }
                        }
                        .navigationTitle("Philadelphia")
                    }
                }
            }
        }
    }
}
    
struct CityList_Previews: PreviewProvider {
    static var previews: some View {
        CityList()
    }
}

struct City: Hashable {
    let name: String
}

struct Food: Hashable {
    let name: String
    let oldPrice: String
    let newPrice: String
    let percentDiff: String
    let imageName: String
}




