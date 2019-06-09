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
    
    var arrayValor = [Double]()
    var valores: [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var chartEntry = [ChartDataEntry]()

        valores = [120, 232, 456, 775, 33, 44, 44, 556, 344, 343]
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
}

