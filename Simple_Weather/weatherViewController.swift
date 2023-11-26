//
//  weatherViewController.swift
//  Simple_Weather
//
//  Created by 이지원 on 11/26/23.
//

import UIKit

class weatherViewController: UIViewController {
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        //도시 온도 날씨이미지 변경
        cityLabel.text = Cities.randomElement()
        
        let imageName = DayWeathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemperature = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemperature)°"
        
    }
    
    
    let Cities = ["SEOUL","BUSAN","CHANGWON","INCHEON"]
    
    let DayWeathers = ["sun.max.fill","cloud.fill"
        ,"wind","cloud.snow.fill"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
