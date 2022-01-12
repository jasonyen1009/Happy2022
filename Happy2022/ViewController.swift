//
//  ViewController.swift
//  Happy2022
//
//  Created by Hong Cheng Yen on 2022/1/4.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datepicker: UIDatePicker!
    
    //煙火
    let fireEmitterLayer = CAEmitterLayer()
    let firstEmitterCell = CAEmitterCell()
    let trailCell = CAEmitterCell()
    let fireworkCell = CAEmitterCell()
    
    //漸層
    let gradientLayer = CAGradientLayer()
    
    //time
    let now = Date()
    let dateformatter = DateFormatter()
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGradientBackground()
        firework()
        view.addSubview(make101())
        snow()
        view.addSubview(datepicker)
        
        
    }
    
    @IBAction func fireworks(_ sender: Any) {
        let date = datepicker.date
        let components = Calendar.current.dateComponents(in: TimeZone.current, from: date)
        //若日期為 1/1 放煙火
        if components.month == 1 && components.day == 1 {
//            gradientLayer.colors = [
//                CGColor(red: 117/255, green: 77/255, blue: 215/255, alpha: 1),
//                CGColor(red: 143/255, green: 184/255, blue: 237/255, alpha: 1)
//            ]
            gradientLayer.colors = [
                CGColor(red: 0, green: 0, blue: 0, alpha: 1),
                CGColor(red: 59/255, green: 25/255, blue: 166/255, alpha: 1),
                CGColor(red: 184/255, green: 111/255, blue: 234/255, alpha: 1)
            ]
            gradientLayer.locations = [0.6, 1]
            view.layer.addSublayer(fireEmitterLayer)
        }
    }
    
    //製作漸層背景
    func setupGradientBackground() {
        
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            CGColor(red: 117/255, green: 81/255, blue: 215/255, alpha: 1),
            CGColor(red: 143/255, green: 184/255, blue: 237/255, alpha: 1)
        ]
//        gradientLayer.colors = [
//            CGColor(red: 0, green: 0, blue: 0, alpha: 1),
//            CGColor(red: 59/255, green: 25/255, blue: 166/255, alpha: 1),
//            CGColor(red: 184/255, green: 111/255, blue: 234/255, alpha: 1)
//        ]
        gradientLayer.locations = [0.6, 1]
        view.layer.addSublayer(gradientLayer)

    }
    
    //製作101
    func make101() -> UIView {
        
        let view = UIView()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 186, y: 226))
        path.addLine(to: CGPoint(x: 192, y: 226))
        path.addLine(to: CGPoint(x: 189, y: 167))
        path.close()
        

        let mark101 = CAShapeLayer()
        mark101.path = path.cgPath
        mark101.fillColor = CGColor(red: 92/255, green: 92/255, blue: 98/255, alpha: 1)
        mark101.lineWidth = 2
        mark101.strokeColor = CGColor(red: 92/255, green: 92/255, blue: 98/255, alpha: 1)
        view.layer.addSublayer(mark101)
        
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 180, y: 234))
        path2.addLine(to: CGPoint(x: 180, y: 249))
        path2.addLine(to: CGPoint(x: 189, y: 248))
        path2.addLine(to: CGPoint(x: 189, y: 237))
        
        
        let mark1012 = CAShapeLayer()
        mark1012.path = path2.cgPath
        mark1012.fillColor = CGColor(red: 178/255, green: 203/255, blue: 217/255, alpha: 1)
        mark1012.strokeColor = CGColor(red: 178/255, green: 203/255, blue: 217/255, alpha: 1)
        mark1012.lineWidth = 2
        view.layer.addSublayer(mark1012)
        
        
        let right1012 = CAShapeLayer()
        right1012.path = path2.cgPath
        let moveDistance = path2.bounds.maxX + path2.bounds.maxX
        let transform = CGAffineTransform(translationX: moveDistance, y: 0).scaledBy(x: -1, y: 1)
        right1012.setAffineTransform(transform)
        right1012.fillColor = CGColor(red: 132/255, green: 150/255, blue: 163/255, alpha: 1)
        right1012.strokeColor = CGColor(red: 132/255, green: 150/255, blue: 163/255, alpha: 1)
        right1012.lineWidth = 2
        view.layer.addSublayer(right1012)
        
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 172, y: 226))
        path1.addLine(to: CGPoint(x: 208, y: 226))
        path1.addQuadCurve(to: CGPoint(x: 172, y: 226), controlPoint: CGPoint(x: 190, y: 250))
        path1.close()
        let mark1011 = CAShapeLayer()
        mark1011.path = path1.cgPath
        mark1011.fillColor = CGColor(red: 118/255, green: 138/255, blue: 152/255, alpha: 1)
        mark1011.strokeColor = CGColor(red: 118/255, green: 138/255, blue: 152/255, alpha: 1)
        mark1011.lineWidth = 2
        view.layer.addSublayer(mark1011)

        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 171, y: 252))
        path4.addLine(to: CGPoint(x: 189, y: 250))
        path4.addLine(to: CGPoint(x: 189, y: 834))
        path4.addLine(to: CGPoint(x: 114, y: 834))
        path4.addLine(to: CGPoint(x: 152, y: 699))
        path4.addLine(to: CGPoint(x: 155, y: 699))
        path4.addLine(to: CGPoint(x: 150, y: 649))
        path4.addLine(to: CGPoint(x: 155, y: 648))
        path4.addLine(to: CGPoint(x: 150, y: 596))
        path4.addLine(to: CGPoint(x: 154, y: 594))
        path4.addLine(to: CGPoint(x: 150, y: 543))
        path4.addLine(to: CGPoint(x: 154, y: 541))
        path4.addLine(to: CGPoint(x: 150, y: 490))
        path4.addLine(to: CGPoint(x: 154, y: 489))
        path4.addLine(to: CGPoint(x: 149, y: 438))
        path4.addLine(to: CGPoint(x: 155, y: 437))
        path4.addLine(to: CGPoint(x: 150, y: 385))
        path4.addLine(to: CGPoint(x: 171, y: 385))
        path4.addLine(to: CGPoint(x: 168, y: 333))
        path4.addLine(to: CGPoint(x: 173, y: 333))
        path4.addLine(to: CGPoint(x: 171, y: 302))
        path4.addLine(to: CGPoint(x: 176, y: 303))
        let mark1014 = CAShapeLayer()
        mark1014.path = path4.cgPath
        mark1014.fillColor = UIColor.clear.cgColor
        mark1014.strokeColor = CGColor(red: 138/255, green: 185/255, blue: 209/255, alpha: 1)
        mark1014.lineWidth = 2
        view.layer.addSublayer(mark1014)

        
        let linepath1 = UIBezierPath()
        linepath1.move(to: CGPoint(x: 170, y: 251))
        linepath1.addLine(to: CGPoint(x: 189, y: 250))
        linepath1.addLine(to: CGPoint(x: 209, y: 251))

        linepath1.move(to: CGPoint(x: 171, y: 303))
        linepath1.addLine(to: CGPoint(x: 189, y: 303))
        linepath1.addLine(to: CGPoint(x: 209, y: 303))

        linepath1.move(to: CGPoint(x: 168, y: 334))
        linepath1.addLine(to: CGPoint(x: 189, y: 334))
        linepath1.addLine(to: CGPoint(x: 214, y: 334))

        let line1 = CAShapeLayer()
        line1.path = linepath1.cgPath
        line1.lineCap = .round
        line1.lineWidth = 4
        line1.fillColor = UIColor.clear.cgColor
//        line1.strokeColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
        view.layer.addSublayer(line1)

        
        let linepath2 = UIBezierPath()
        linepath2.move(to: CGPoint(x: 149, y: 385))
        linepath2.addLine(to: CGPoint(x: 189, y: 386))
        linepath2.addLine(to: CGPoint(x: 230, y: 386))
        
        linepath2.move(to: CGPoint(x: 149, y: 438))
        linepath2.addLine(to: CGPoint(x: 189, y: 439))
        linepath2.addLine(to: CGPoint(x: 230, y: 439))
        
        linepath2.move(to: CGPoint(x: 149, y: 489))
        linepath2.addLine(to: CGPoint(x: 189, y: 490))
        linepath2.addLine(to: CGPoint(x: 230, y: 490))
        
        linepath2.move(to: CGPoint(x: 149, y: 543))
        linepath2.addLine(to: CGPoint(x: 189, y: 545))
        linepath2.addLine(to: CGPoint(x: 230, y: 544))
        
        linepath2.move(to: CGPoint(x: 149, y: 597))
        linepath2.addLine(to: CGPoint(x: 189, y: 599))
        linepath2.addLine(to: CGPoint(x: 230, y: 597))
        
        linepath2.move(to: CGPoint(x: 149, y: 649))
        linepath2.addLine(to: CGPoint(x: 189, y: 651))
        linepath2.addLine(to: CGPoint(x: 230, y: 649))
        
        let line2 = CAShapeLayer()
        line2.path = linepath2.cgPath
        line2.lineCap = .round
        line2.lineWidth = 6
        line2.fillColor = UIColor.clear.cgColor
//        line2.strokeColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
        view.layer.addSublayer(line2)
        

        let linepath3 = UIBezierPath()
        linepath3.move(to: CGPoint(x: 151, y: 701))
        linepath3.addLine(to: CGPoint(x: 189, y: 703))
        linepath3.addLine(to: CGPoint(x: 226, y: 701))
        
        linepath3.move(to: CGPoint(x: 150, y: 711))
        linepath3.addLine(to: CGPoint(x: 189, y: 713))
        linepath3.addLine(to: CGPoint(x: 227, y: 711))
        
        let line3 = CAShapeLayer()
        line3.path = linepath3.cgPath
        line3.lineCap = .round
        line3.lineWidth = 6
        line3.fillColor = UIColor.clear.cgColor
//        line3.strokeColor = CGColor(red: 92/255, green: 131/255, blue: 159/255, alpha: 1)
        view.layer.addSublayer(line3)
        
        let linepath4 = UIBezierPath()
        linepath4.move(to: CGPoint(x: 117, y: 832))
        linepath4.addLine(to: CGPoint(x: 189, y: 832))
        linepath4.addLine(to: CGPoint(x: 258, y: 832))
        
        let line4 = CAShapeLayer()
        line4.path = linepath4.cgPath
        line4.lineCap = .round
        line4.lineWidth = 10
        line4.fillColor = UIColor.clear.cgColor
//        line4.strokeColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
        view.layer.addSublayer(line4)
        
        
        let aDegree = CGFloat.pi / 180
        let pathcircle = UIBezierPath(arcCenter: CGPoint(x: 167, y: 707), radius: 10, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        let layer = CAShapeLayer()
        layer.path = pathcircle.cgPath
        layer.fillColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
        layer.strokeColor = CGColor(red: 132/255, green: 205/255, blue: 242/255, alpha: 1)
        layer.lineWidth = 4
        view.layer.addSublayer(layer)
        

        CATransaction.begin()
        CATransaction.setCompletionBlock {
            mark1014.fillColor = CGColor(red: 138/255, green: 185/255, blue: 209/255, alpha: 1)
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.fromValue = 0
            animation.toValue = 1
            animation.duration = 3
            line1.add(animation, forKey: nil)
            line2.add(animation, forKey: nil)
            line3.add(animation, forKey: nil)
            line4.add(animation, forKey: nil)
            
            line1.strokeColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
            line2.strokeColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
            line3.strokeColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
            line4.strokeColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
            
            let rightmark4 = CAShapeLayer()
            rightmark4.path = path4.cgPath
            let moveDistance4 = path4.bounds.maxX + path4.bounds.maxX + 2
            let transform4 = CGAffineTransform(translationX: moveDistance4, y: 0).scaledBy(x: -1, y: 1)
            rightmark4.setAffineTransform(transform4)
            rightmark4.lineWidth = 2
            rightmark4.fillColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
            rightmark4.strokeColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
            view.layer.addSublayer(rightmark4)
            
            let circle2 = CAShapeLayer()
            circle2.path = pathcircle.cgPath
            circle2.fillColor = CGColor(red: 65/255, green: 122/255, blue: 164/255, alpha: 1)
            circle2.strokeColor = CGColor(red: 132/255, green: 205/255, blue: 242/255, alpha: 1)
            circle2.lineWidth = 4
            circle2.position = CGPoint(x: 40, y: 0)
            view.layer.addSublayer(circle2)
            circle2.add(animation, forKey: nil)
            
        }
        
        //設定動畫
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 4
        mark1014.add(animation, forKey: nil)
        CATransaction.commit()
        layer.add(animation, forKey: nil)
        mark101.add(animation, forKey: nil)
        mark1012.add(animation, forKey: nil)
        mark1014.add(animation, forKey: nil)
        
        return view
    }
    
    // 製作煙火
    func firework() {
        //煙火發射器
        fireEmitterLayer.emitterSize = CGSize(width: view.bounds.width , height: view.bounds.height )
        
        //發射起點
        fireEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: view.bounds.height / 1.5)
        
        //加渲染效果
        fireEmitterLayer.renderMode = .additive

        firstEmitterCell.color = UIColor(red: 117/255, green: 77/255, blue: 205/255, alpha: 0.5).cgColor
        firstEmitterCell.redRange = 0.5
        firstEmitterCell.greenRange = 0.5
        firstEmitterCell.blueRange = 0.5
        
        
        firstEmitterCell.lifetime = 5
        firstEmitterCell.birthRate = 5
        firstEmitterCell.velocity = 250
        firstEmitterCell.velocityRange = 150
        //firstEmitterCell.emissionRange = CGFloat.pi / 4
        firstEmitterCell.emissionRange = CGFloat.pi / 4
        //firstEmitterCell.emissionLongitude = CGFloat.pi + 90
        firstEmitterCell.emissionLongitude = -CGFloat.pi / 2
        firstEmitterCell.yAcceleration = 10

        
        trailCell.contents = UIImage(named: "fg2")?.cgImage
        trailCell.lifetime = 5
        trailCell.birthRate = 300
        //trailCell.velocity = 80
        trailCell.velocity = -80
        trailCell.scale = 0.4
        trailCell.scaleRange = 1
        trailCell.alphaSpeed = -0.7
        trailCell.scaleSpeed = -0.1
        trailCell.scaleRange = 0.1
        trailCell.beginTime = 0.01
        trailCell.duration = 1.7
        trailCell.emissionRange = CGFloat.pi / 8
        trailCell.emissionLongitude = CGFloat.pi * 2
        
        
//        trailCell.yAcceleration = -350
        //fireworks
        fireworkCell.contents = UIImage(named: "fg2")?.cgImage
    //        fireworkCell.color = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        fireworkCell.lifetime = 100
        fireworkCell.birthRate = 20000
        fireworkCell.velocity = 130
        fireworkCell.scale = 0.6
        fireworkCell.spin = 2
        fireworkCell.alphaSpeed = -0.2
        fireworkCell.scaleSpeed = -0.1
        fireworkCell.beginTime = 1.5
        fireworkCell.duration = 0.1
        fireworkCell.emissionRange = CGFloat.pi * 2
        fireworkCell.yAcceleration = -80

        //firstEmitterCell是trailCell和fireworksCell的容器
        firstEmitterCell.emitterCells = [ trailCell, fireworkCell ]
        fireEmitterLayer.emitterCells = [firstEmitterCell]
//        view.layer.addSublayer(fireEmitterLayer)
    }
    
    // 製作雪
    func snow() {
        
        let snowEmitterCell = CAEmitterCell()
        snowEmitterCell.contents = UIImage(named: "snowFlake")?.cgImage
        //每秒產生多少雪
        snowEmitterCell.birthRate = 40
        //雪在花面中的時間
        snowEmitterCell.lifetime = 20
        //雪移動的速度
        snowEmitterCell.velocity = -30
        snowEmitterCell.velocityRange = -10
        //向下的加速度
        snowEmitterCell.yAcceleration = 20
        snowEmitterCell.xAcceleration = 5
        //大小限制
        snowEmitterCell.scale = 0.06
        snowEmitterCell.scaleRange = 0.3
        //降落後的大小改變
        snowEmitterCell.scaleSpeed = -0.02
        snowEmitterCell.spin = -0.5
        snowEmitterCell.spinRange = 1
        snowEmitterCell.emissionRange = .pi
        
        let snowEmitterLayer = CAEmitterLayer()
        snowEmitterLayer.emitterCells = [ snowEmitterCell ]
        snowEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2 , y: -50)
        snowEmitterLayer.emitterSize = CGSize(width: view.bounds.width , height: 0)
        snowEmitterLayer.emitterShape = .line
        
        view.layer.addSublayer(snowEmitterLayer)
        
    }
    
    func setdatepicker() {
//        dateformatter.dateFormat = "yyyy MM dd"
//        dateformatter.locale = Locale(identifier: "zh_TW")
//        datepicker.locale = Locale(identifier: "zh_TW")
//        let newdate = "2021 12 31"
//        let newDate = dateformatter.date(from: newdate)
//
//
//        datepicker.setDate(newDate!, animated: true)
//        datepicker.preferredDatePickerStyle = .compact
//        datepicker.datePickerMode = .date
//        datepicker.tintColor = .white
    }

}

