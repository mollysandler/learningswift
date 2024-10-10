//
//  ContentView.swift
//  WeatherApp
//
//  Created by Molly Sandler on 10/10/24.
//

import SwiftUI

struct Weather: Identifiable {
    let id = UUID()
    let cityName: String
    let temperature: Double
    let description: String
}

struct ContentView: View {
    @State private var cityName: String = ""
    @State private var weather: Weather?

    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter city name", text: $cityName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                fetchWeather(for: cityName)
            }) {
                Text("Get Weather")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            if let weather = weather {
                Text("City: \(weather.cityName)")
                    .font(.headline)
                Text("Temperature: \(weather.temperature)°C")
                Text("Condition: \(weather.description)")
            } else {
                Text("No data yet.")
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }

    func fetchWeather(for city: String) {
        // Simulate fetching weather data
        let exampleWeather = Weather(cityName: city, temperature: 22.0, description: "Sunny")
        weather = exampleWeather
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
