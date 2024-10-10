import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initial setup
        cityLabel.text = "City: -"
        temperatureLabel.text = "Temperature: -"
        descriptionLabel.text = "Condition: -"
    }
    
    @IBAction func getWeatherTapped(_ sender: UIButton) {
        guard let city = cityTextField.text, !city.isEmpty else { return }
        fetchWeather(for: city)
    }
    
    func fetchWeather(for city: String) {
        // Here, add the API request to get weather data
        // Use a completion handler to update the labels after fetching data
        // For simplicity, let's just create a dummy response here:
        let exampleWeather = Weather(cityName: city, temperature: 22.0, description: "Sunny")
        updateWeatherLabels(with: exampleWeather)
    }
    
    func updateWeatherLabels(with weather: Weather) {
        cityLabel.text = "City: \(weather.cityName)"
        temperatureLabel.text = "Temperature: \(weather.temperature)°C"
        descriptionLabel.text = "Condition: \(weather.description)"
    }
}

