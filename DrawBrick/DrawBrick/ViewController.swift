//
//  ViewController.swift
//  DrawBrick
//
//  Created by Quynh on 2/13/20.
//  Copyright © 2020 Quynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var carImageView: UIImageView!
    let brickView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    let brickView1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    let brickView2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    let brickView3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        carImageView = UIImageView(frame: CGRect(x: -130,
                                                 y: 490,
                                                 width: 600,
                                                 height: 200))
      
        carImageView.image = UIImage(named: "truck")
        carImageView.contentMode = .scaleAspectFit
        
    
        view.addSubview(carImageView)
        brickView.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        brickView.center.x = 80
        brickView.center.y = 600
        view.addSubview(brickView)
        drawLayer()
        
        
        brickView1.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        brickView1.center.x = 80
        brickView1.center.y = 540
        view.addSubview(brickView1)
        drawLayer1()
        
        brickView2.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        brickView2.center.x = 80
        brickView2.center.y = 480
        view.addSubview(brickView2)
        drawLayer2()
        
        brickView3.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        brickView3.center.x = 140
        brickView3.center.y = 600
        view.addSubview(brickView3)
        drawLayer3()
        
        
    }
    
    func drawLayer(){
        let shapeLayer = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.width
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.5
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        
        
        
        let topLayerB = CAShapeLayer()
        let path1B = UIBezierPath()
        path1B.move(to: CGPoint(x: 0, y: L))
        path1B.addLine(to: CGPoint(x: L, y: L))
        path1B.addLine(to: CGPoint(x: L-x, y: L-x))
        path1B.addLine(to: CGPoint(x: x, y: L-x))
        
        topLayerB.fillColor = UIColor.white.cgColor
        topLayerB.opacity = 0.2
        topLayerB.path = path1B.cgPath
        shapeLayer.insertSublayer(topLayerB, at: 0)
        
        let topLayerL = CAShapeLayer()
        let path1L = UIBezierPath()
        path1L.move(to: CGPoint(x: 0, y: 0))
        path1L.addLine(to: CGPoint(x: 0, y: L))
        path1L.addLine(to: CGPoint(x: x, y: L-x))
        path1L.addLine(to: CGPoint(x: x, y: x))
        
        topLayerL.fillColor = UIColor.white.cgColor
        topLayerL.opacity = 0.6
        topLayerL.path = path1L.cgPath
        shapeLayer.insertSublayer(topLayerL, at: 0)
        
        let topLayerR = CAShapeLayer()
        let path1R = UIBezierPath()
        path1R.move(to: CGPoint(x: L, y: 0))
        path1R.addLine(to: CGPoint(x: L, y: L))
        path1R.addLine(to: CGPoint(x: L-x, y: L-x))
        path1R.addLine(to: CGPoint(x: L-x, y: x))
        
        topLayerR.fillColor = UIColor.white.cgColor
        topLayerR.opacity = 0.1
        topLayerR.path = path1R.cgPath
        shapeLayer.insertSublayer(topLayerR, at: 0)
        
        brickView.layer.addSublayer(shapeLayer)
        
        
    }
    func drawLayer1(){
        let shapeLayer = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.width
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.5
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        
        
        
        let topLayerB = CAShapeLayer()
        let path1B = UIBezierPath()
        path1B.move(to: CGPoint(x: 0, y: L))
        path1B.addLine(to: CGPoint(x: L, y: L))
        path1B.addLine(to: CGPoint(x: L-x, y: L-x))
        path1B.addLine(to: CGPoint(x: x, y: L-x))
        
        topLayerB.fillColor = UIColor.white.cgColor
        topLayerB.opacity = 0.2
        topLayerB.path = path1B.cgPath
        shapeLayer.insertSublayer(topLayerB, at: 0)
        
        let topLayerL = CAShapeLayer()
        let path1L = UIBezierPath()
        path1L.move(to: CGPoint(x: 0, y: 0))
        path1L.addLine(to: CGPoint(x: 0, y: L))
        path1L.addLine(to: CGPoint(x: x, y: L-x))
        path1L.addLine(to: CGPoint(x: x, y: x))
        
        topLayerL.fillColor = UIColor.white.cgColor
        topLayerL.opacity = 0.6
        topLayerL.path = path1L.cgPath
        shapeLayer.insertSublayer(topLayerL, at: 0)
        
        let topLayerR = CAShapeLayer()
        let path1R = UIBezierPath()
        path1R.move(to: CGPoint(x: L, y: 0))
        path1R.addLine(to: CGPoint(x: L, y: L))
        path1R.addLine(to: CGPoint(x: L-x, y: L-x))
        path1R.addLine(to: CGPoint(x: L-x, y: x))
        
        topLayerR.fillColor = UIColor.white.cgColor
        topLayerR.opacity = 0.1
        topLayerR.path = path1R.cgPath
        shapeLayer.insertSublayer(topLayerR, at: 0)
        
        
        brickView1.layer.addSublayer(shapeLayer)
        
    }
    func drawLayer2(){
        let shapeLayer = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.width
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.5
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        
        
        
        let topLayerB = CAShapeLayer()
        let path1B = UIBezierPath()
        path1B.move(to: CGPoint(x: 0, y: L))
        path1B.addLine(to: CGPoint(x: L, y: L))
        path1B.addLine(to: CGPoint(x: L-x, y: L-x))
        path1B.addLine(to: CGPoint(x: x, y: L-x))
        
        topLayerB.fillColor = UIColor.white.cgColor
        topLayerB.opacity = 0.2
        topLayerB.path = path1B.cgPath
        shapeLayer.insertSublayer(topLayerB, at: 0)
        
        let topLayerL = CAShapeLayer()
        let path1L = UIBezierPath()
        path1L.move(to: CGPoint(x: 0, y: 0))
        path1L.addLine(to: CGPoint(x: 0, y: L))
        path1L.addLine(to: CGPoint(x: x, y: L-x))
        path1L.addLine(to: CGPoint(x: x, y: x))
        
        topLayerL.fillColor = UIColor.white.cgColor
        topLayerL.opacity = 0.6
        topLayerL.path = path1L.cgPath
        shapeLayer.insertSublayer(topLayerL, at: 0)
        
        let topLayerR = CAShapeLayer()
        let path1R = UIBezierPath()
        path1R.move(to: CGPoint(x: L, y: 0))
        path1R.addLine(to: CGPoint(x: L, y: L))
        path1R.addLine(to: CGPoint(x: L-x, y: L-x))
        path1R.addLine(to: CGPoint(x: L-x, y: x))
        
        topLayerR.fillColor = UIColor.white.cgColor
        topLayerR.opacity = 0.1
        topLayerR.path = path1R.cgPath
        shapeLayer.insertSublayer(topLayerR, at: 0)
        
        
        brickView2.layer.addSublayer(shapeLayer)
        
    }
    func drawLayer3(){
        let shapeLayer = CAShapeLayer()
        // kích thước squareView
        let L = brickView.frame.size.width
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.5
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        
        
        
        let topLayerB = CAShapeLayer()
        let path1B = UIBezierPath()
        path1B.move(to: CGPoint(x: 0, y: L))
        path1B.addLine(to: CGPoint(x: L, y: L))
        path1B.addLine(to: CGPoint(x: L-x, y: L-x))
        path1B.addLine(to: CGPoint(x: x, y: L-x))
        
        topLayerB.fillColor = UIColor.white.cgColor
        topLayerB.opacity = 0.2
        topLayerB.path = path1B.cgPath
        shapeLayer.insertSublayer(topLayerB, at: 0)
        
        let topLayerL = CAShapeLayer()
        let path1L = UIBezierPath()
        path1L.move(to: CGPoint(x: 0, y: 0))
        path1L.addLine(to: CGPoint(x: 0, y: L))
        path1L.addLine(to: CGPoint(x: x, y: L-x))
        path1L.addLine(to: CGPoint(x: x, y: x))
        
        topLayerL.fillColor = UIColor.white.cgColor
        topLayerL.opacity = 0.6
        topLayerL.path = path1L.cgPath
        shapeLayer.insertSublayer(topLayerL, at: 0)
        
        let topLayerR = CAShapeLayer()
        let path1R = UIBezierPath()
        path1R.move(to: CGPoint(x: L, y: 0))
        path1R.addLine(to: CGPoint(x: L, y: L))
        path1R.addLine(to: CGPoint(x: L-x, y: L-x))
        path1R.addLine(to: CGPoint(x: L-x, y: x))
        
        topLayerR.fillColor = UIColor.white.cgColor
        topLayerR.opacity = 0.1
        topLayerR.path = path1R.cgPath
        shapeLayer.insertSublayer(topLayerR, at: 0)
        
        
        brickView3.layer.addSublayer(shapeLayer)
        
    }
    
}

