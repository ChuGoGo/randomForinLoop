//
//  ViewController.swift
//  demoviewdidload
//
//  Created by Chu Go-Go on 2022/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        建立角度
        let oneDergee = CGFloat.pi / 180
        // Do any additional setup after loading the view.
//        加入寶貝球
        let ballimage = UIImage(named: "PokeBall.png")
        let ballImageView = UIImageView(image: ballimage)
//        設定尺寸
        ballImageView.frame = CGRect(x: 50, y: 250, width: 50, height: 50)
//        顯示的型態
        ballImageView.contentMode = .scaleAspectFit
//        加到view裡
        view.addSubview(ballImageView)
//        用animate加入想要的動畫以及位置
        UIView.animate(withDuration: 2, delay: 0, animations: {
            ballImageView.transform = CGAffineTransform(translationX: 110, y: 170).scaledBy(x: 0.5, y: 0.5).rotated(by: (-180 * oneDergee) )
        }, completion: nil)
//         用.animate加入Delay讓前面的動畫跑完後才會跑下一個動畫
        UIView.animate(withDuration: 2, delay: 2.5){
//            我讓他跑100隻3d龍出來
            self.pokemon(xpoint: 0, ypiont: 0, scale: 0, rotaDergee: 0)
            for i in 0...100{
//                位置，大小都用亂數隨機生成
                self.pokemon(xpoint: CGFloat(Int.random(in: 10...200)), ypiont:CGFloat(Int.random(in: 10...600)), scale: CGFloat.random(in: 0.1...1.5), rotaDergee:CGFloat.random(in: 0...360) )
            }
        }
        
    }
    //    調整角度的Func
    func pokemon(xpoint:CGFloat, ypiont:CGFloat, scale:CGFloat, rotaDergee:CGFloat){
        //        建立一個儲存的UIview
        let pokeView = UIView()
        //頭部
        let pinkHead = UIBezierPath()
        pinkHead.move(to: CGPoint(x: 70, y: 64))
        pinkHead.addLine(to: CGPoint(x: 98, y: 74))
        pinkHead.addLine(to: CGPoint(x: 82, y: 112))
        pinkHead.addLine(to: CGPoint(x: 71, y: 115))
        pinkHead.addLine(to: CGPoint(x: 68, y: 148))
        pinkHead.addLine(to: CGPoint(x: 57, y: 184))
        pinkHead.addLine(to: CGPoint(x: 33, y: 173))
        pinkHead.addLine(to: CGPoint(x: 51, y: 100))
        pinkHead.close()
        let triangleLayer = CAShapeLayer()
        triangleLayer.path = pinkHead.cgPath
        triangleLayer.fillColor = CGColor(red: 245/255, green: 152/255, blue: 163/255, alpha: 1)
        triangleLayer.strokeColor = UIColor.black.cgColor
        //        把畫好的物件加入到pokeView裡
        pokeView.layer.addSublayer(triangleLayer)
        //        嘴巴
        let blueMouth = UIBezierPath()
        blueMouth.move(to: CGPoint(x: 33, y: 173))
        blueMouth.addLine(to: CGPoint(x: 24, y: 225))
        blueMouth.addLine(to: CGPoint(x: 38, y: 232))
        blueMouth.addLine(to: CGPoint(x: 58, y: 183))
        blueMouth.close()
        
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = blueMouth.cgPath
        mouthLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        mouthLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(mouthLayer)
        
        //    下方嘴巴
        let blueTeeth = UIBezierPath()
        blueTeeth.move(to: CGPoint(x: 24, y: 225))
        blueTeeth.addLine(to: CGPoint(x: 27, y: 229))
        blueTeeth.addLine(to: CGPoint(x: 39, y: 232))
        blueTeeth.addLine(to: CGPoint(x: 42, y: 240))
        blueTeeth.close()
        let teethLayer = CAShapeLayer()
        teethLayer.path = blueTeeth.cgPath
        teethLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        teethLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(teethLayer)
        //        左方嘴巴
        let rightMouth = UIBezierPath()
        rightMouth.move(to: CGPoint(x: 39, y: 232))
        rightMouth.addLine(to: CGPoint(x: 42, y: 238))
        rightMouth.addLine(to: CGPoint(x: 63, y: 194))
        rightMouth.addLine(to: CGPoint(x: 58, y: 182))
        
        let rightMouthLayer = CAShapeLayer()
        rightMouthLayer.path = rightMouth.cgPath
        rightMouthLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        rightMouthLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(rightMouthLayer)
        //        左邊牙齒
        let rightTeeth = UIBezierPath()
        rightTeeth.move(to: CGPoint(x: 42, y: 238))
        rightTeeth.addLine(to: CGPoint(x: 63, y: 194))
        rightTeeth.addLine(to: CGPoint(x: 68, y: 220))
        
        let rightTeethLayer = CAShapeLayer()
        rightTeethLayer.path = rightTeeth.cgPath
        rightTeethLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        rightTeethLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(rightTeethLayer)
        //        右邊臉
        let rightFace = UIBezierPath()
        rightFace.move(to: CGPoint(x: 69, y: 148))
        rightFace.addLine(to: CGPoint(x: 76, y: 162))
        rightFace.addLine(to: CGPoint(x: 63, y: 194))
        rightFace.addLine(to: CGPoint(x: 57, y: 182))
        let rightFaceLayer = CAShapeLayer()
        rightFaceLayer.path = rightFace.cgPath
        rightFaceLayer.fillColor = CGColor(red: 245/255, green: 152/255, blue: 163/255, alpha: 1)
        rightFaceLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(rightFaceLayer)
        //    右邊深色臉
        let rightbigface = UIBezierPath()
        rightbigface.move(to: CGPoint(x: 76, y: 162))
        rightbigface.addLine(to: CGPoint(x: 90, y: 160))
        rightbigface.addLine(to: CGPoint(x: 94, y: 130))
        rightbigface.addLine(to: CGPoint(x: 112, y: 116))
        rightbigface.addLine(to: CGPoint(x: 105, y: 162))
        rightbigface.addLine(to: CGPoint(x: 82, y: 209))
        rightbigface.addLine(to: CGPoint(x: 68, y: 220))
        rightbigface.addLine(to: CGPoint(x: 63, y: 194))
        let rightBigFaceLayer = CAShapeLayer()
        rightBigFaceLayer.path = rightbigface.cgPath
        rightBigFaceLayer.fillColor = CGColor(red: 215/255, green: 109/255, blue: 109/255, alpha: 1)
        rightBigFaceLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(rightBigFaceLayer)
        //        後方耳朵
        let rightear = UIBezierPath()
        rightear.move(to: CGPoint(x: 83, y: 112))
        rightear.addLine(to: CGPoint(x: 94, y: 130))
        rightear.addLine(to: CGPoint(x: 112, y: 116))
        rightear.addLine(to: CGPoint(x: 98, y: 74))
        let rightEarLayer = CAShapeLayer()
        rightEarLayer.path = rightear.cgPath
        rightEarLayer.fillColor = CGColor(red: 245/255, green: 152/255, blue: 163/255, alpha: 1)
        rightEarLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(rightEarLayer)
        //        眼睛
        let eyes = UIBezierPath()
        eyes.move(to: CGPoint(x: 82, y: 133))
        eyes.addLine(to: CGPoint(x: 79, y: 136))
        eyes.addLine(to: CGPoint(x: 80, y: 143))
        eyes.addLine(to: CGPoint(x: 84, y: 142))
        let eyesLayer = CAShapeLayer()
        eyesLayer.path = eyes.cgPath
        eyesLayer.fillColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(eyesLayer)
        //    脖子
        let neck = UIBezierPath()
        neck.move(to: CGPoint(x: 105, y: 162))
        neck.addLine(to: CGPoint(x: 131, y: 164))
        neck.addLine(to: CGPoint(x: 96, y: 183))
        
        let neckLayer = CAShapeLayer()
        neckLayer.path = neck.cgPath
        neckLayer.fillColor = CGColor(red: 245/255, green: 152/255, blue: 163/255, alpha: 1)
        neckLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(neckLayer)
        //        身體
        let pinkBody = UIBezierPath()
        pinkBody.move(to: CGPoint(x: 131, y: 164))
        pinkBody.addLine(to: CGPoint(x: 145, y: 187))
        pinkBody.addLine(to: CGPoint(x: 105, y: 280))
        pinkBody.addLine(to: CGPoint(x: 110, y: 223))
        pinkBody.addLine(to: CGPoint(x: 95, y: 183))
        let pinkBodyLayer = CAShapeLayer()
        pinkBodyLayer.path = pinkBody.cgPath
        pinkBodyLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: 1)
        pinkBodyLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(pinkBodyLayer)
        
        let blueBody = UIBezierPath()
        blueBody.move(to: CGPoint(x: 96, y: 182))
        blueBody.addLine(to: CGPoint(x: 105, y: 280))
        blueBody.addLine(to: CGPoint(x: 110, y: 224))
        let blueBodyLayer = CAShapeLayer()
        blueBodyLayer.path = blueBody.cgPath
        blueBodyLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: 1)
        blueBodyLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(blueBodyLayer)
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 95, y: 184))
        body.addLine(to: CGPoint(x: 82, y: 210))
        body.addLine(to: CGPoint(x: 66, y: 222))
        body.addLine(to: CGPoint(x: 57, y: 262))
        body.addLine(to: CGPoint(x: 104, y: 281))
        let bodyLayer = CAShapeLayer()
        bodyLayer.path = body.cgPath
        bodyLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        bodyLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(bodyLayer)
        
        let pinkleg = UIBezierPath()
        pinkleg.move(to: CGPoint(x: 145, y: 189))
        pinkleg.addLine(to: CGPoint(x: 146, y: 210))
        pinkleg.addLine(to: CGPoint(x: 129, y: 226))
        pinkleg.addLine(to: CGPoint(x: 105, y: 280))
        pinkleg.addLine(to: CGPoint(x: 114, y: 316))
        pinkleg.addLine(to: CGPoint(x: 122, y: 298))
        pinkleg.addLine(to: CGPoint(x: 128, y: 226))
        let pinkLegLayer = CAShapeLayer()
        pinkLegLayer.path = pinkleg.cgPath
        pinkLegLayer.fillColor = CGColor(red: 215/255, green: 109/255, blue: 109/255, alpha: 1)
        pinkLegLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(pinkLegLayer)
        
        let blueBelly = UIBezierPath()
        blueBelly.move(to: CGPoint(x: 58, y: 262))
        blueBelly.addLine(to: CGPoint(x: 84, y: 300))
        blueBelly.addLine(to: CGPoint(x: 114, y: 317))
        blueBelly.addLine(to: CGPoint(x: 104, y: 281))
        let blueBellyLayer = CAShapeLayer()
        blueBellyLayer.path = blueBelly.cgPath
        blueBellyLayer.fillColor = CGColor(red: 83/255, green: 141/255, blue: 143/255, alpha: 1)
        blueBellyLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(blueBellyLayer)
        
        let leftLeg = UIBezierPath()
        leftLeg.move(to: CGPoint(x: 51, y: 279))
        leftLeg.addLine(to: CGPoint(x: 66, y: 293))
        leftLeg.addLine(to: CGPoint(x: 68, y: 277))
        leftLeg.addLine(to: CGPoint(x: 57, y: 261))
        leftLeg.addLine(to: CGPoint(x: 66, y: 222))
        leftLeg.addLine(to: CGPoint(x: 55, y: 229))
        leftLeg.addLine(to: CGPoint(x: 52, y: 279))
        let leftLegLayer = CAShapeLayer()
        leftLegLayer.path = leftLeg.cgPath
        leftLegLayer.fillColor = CGColor(red: 127/255, green: 190/255, blue: 195/255, alpha: 1)
        leftLegLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(leftLegLayer)
        
        let shose = UIBezierPath()
        shose.move(to: CGPoint(x: 66, y: 294))
        shose.addLine(to: CGPoint(x: 70, y: 297))
        shose.addLine(to: CGPoint(x: 75, y: 287))
        shose.addLine(to: CGPoint(x: 68, y: 276))
        let shoseLayer = CAShapeLayer()
        shoseLayer.path = shose.cgPath
        shoseLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        shoseLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(shoseLayer)
        
        let rightLeg = UIBezierPath()
        rightLeg.move(to: CGPoint(x: 129, y: 227))
        rightLeg.addLine(to: CGPoint(x: 155, y: 251))
        rightLeg.addLine(to: CGPoint(x: 142, y: 345))
        rightLeg.addLine(to: CGPoint(x: 120, y: 323))
        let rightLegLayer = CAShapeLayer()
        rightLegLayer.path = rightLeg.cgPath
        rightLegLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        rightLegLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(rightLegLayer)
        
        let backLeg = UIBezierPath()
        backLeg.move(to: CGPoint(x: 129, y: 227))
        backLeg.addLine(to: CGPoint(x: 156, y: 202))
        backLeg.addLine(to: CGPoint(x: 175, y: 222))
        backLeg.addLine(to: CGPoint(x: 155, y: 251))
        let backLegLayer = CAShapeLayer()
        backLegLayer.path = backLeg.cgPath
        backLegLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        backLegLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(backLegLayer)
        
        let darkLeg = UIBezierPath()
        darkLeg.move(to: CGPoint(x: 175, y: 222))
        darkLeg.addLine(to: CGPoint(x: 175, y: 240))
        darkLeg.addLine(to: CGPoint(x: 146, y: 358))
        darkLeg.addLine(to: CGPoint(x: 142, y: 345))
        darkLeg.addLine(to: CGPoint(x: 155, y: 252))
        let darkLegLayer = CAShapeLayer()
        darkLegLayer.path = darkLeg.cgPath
        darkLegLayer.fillColor = CGColor(red: 83/255, green: 141/255, blue: 143/255, alpha: 1)
        darkLegLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(darkLegLayer)
        
        let rightShose = UIBezierPath()
        rightShose.move(to: CGPoint(x: 146, y: 358))
        rightShose.addLine(to: CGPoint(x: 124, y: 338))
        rightShose.addLine(to: CGPoint(x: 120, y: 323))
        rightShose.addLine(to: CGPoint(x: 142, y: 345))
        
        let rightShoseLayer = CAShapeLayer()
        rightShoseLayer.path = rightShose.cgPath
        rightShoseLayer.fillColor = CGColor(red: 80/255, green: 141/255, blue: 144/255, alpha: 1)
        rightShoseLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(rightShoseLayer)
        
        let tail = UIBezierPath()
        tail.move(to: CGPoint(x: 147, y: 204))
        tail.addLine(to: CGPoint(x: 154, y: 56))
        tail.addLine(to: CGPoint(x: 149, y: 46))
        tail.addLine(to: CGPoint(x: 137, y: 172))
        tail.addLine(to: CGPoint(x: 145, y: 188))
        tail.addLine(to: CGPoint(x: 147, y: 204))
        
        let tailLayer = CAShapeLayer()
        tailLayer.path = tail.cgPath
        tailLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        tailLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(tailLayer)
        
        let lastTail = UIBezierPath()
        lastTail.move(to: CGPoint(x: 149, y: 46))
        lastTail.addLine(to: CGPoint(x: 143, y: 46))
        lastTail.addLine(to: CGPoint(x: 118, y: 162))
        lastTail.addLine(to: CGPoint(x: 131, y: 164))
        lastTail.addLine(to: CGPoint(x: 137, y: 171))
        
        let lastTailLayer = CAShapeLayer()
        lastTailLayer.path = lastTail.cgPath
        lastTailLayer.fillColor = CGColor(red: CGFloat.random(in: 0.1...1), green: CGFloat.random(in: 0.1...1), blue: CGFloat.random(in: 0.1...1), alpha: CGFloat.random(in: 0.1...1))
        lastTailLayer.strokeColor = UIColor.black.cgColor
        pokeView.layer.addSublayer(lastTailLayer)
        
        //        pokeView.frame = CGRect(x: 10, y: 10, width: 300, height: 200)
        //        建立角度
        let oneDergee = CGFloat.pi / 180
        //        建立一個CGAffineTransform讓可以編輯大小，位置，角度。
        pokeView.transform = CGAffineTransform(translationX: xpoint, y: ypiont).scaledBy(x: scale, y: scale).rotated(by: oneDergee * rotaDergee)
        //        最後把pokeView加到view裡面
        view.addSubview(pokeView)
    }
}

