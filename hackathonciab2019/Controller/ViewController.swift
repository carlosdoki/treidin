//
//  ViewController.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 08/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var chartView: LineChartView!
    @IBOutlet weak var metaTxt: UILabel!
    @IBOutlet weak var perfilBtn: RoundedButton!
    @IBOutlet weak var cashLbl: UILabel!
    @IBOutlet weak var popUpView: UIView!
    
    var arrayValor = [Double]()
    var valores: [Double] =  [250, 232, 300, 475, 330, 440, 440, 556, 344, 343]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.isHidden = false
        // Do any additional setup after loading the view.
        if divida == 0 {
            metaTxt.text = "Nova meta despesa básica: R$ 250,00"
        } else {
            metaTxt.text = "Nova meta despesa básica: R$ 250,00"
            cashLbl.text = "R$140,20"
        }
        var chartEntry = [ChartDataEntry]()

        for i in 0..<valores.count {
            let value = ChartDataEntry(x: Double(i), y: valores[i])
            chartEntry.append(value)
        }

        let line = LineChartDataSet(entries: chartEntry, label: "valor")
        line.colors = [UIColor.green]

        let data = LineChartData()
        data.addDataSet(line)

        chartView.data = data
        chartView.chartDescription?.text = "Valor"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        sleep(3000)
        popUpView.isHidden = true
    }
}

