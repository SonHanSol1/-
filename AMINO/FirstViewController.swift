//
//  FirstViewController.swift
//  AMINO
//
//  Created by 손한솔 on 2022/01/18.
//

import UIKit
import SnapKit


class FirstViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    lazy var mainView: UIView = {
        let view = UIView()
        return view
    }()
    
    func setView() {
        mainView.layer.cornerRadius = 20
        mainView.layer.borderColor = UIColor.red.cgColor
        mainView.layer.shadowOpacity = 1
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowOffset = CGSize(width: 0, height: 0)
        mainView.layer.shadowRadius = 10
        
        mainView.layer.masksToBounds = false
        
        extension UIView {
            // extensiondptjsms Stored Property(값을 넣는 프로퍼티)가
            // 안되기 때문에, 이렇게 get과 set으로 넣어줘야한다.
            @IBInspectable var cornerRadius : CGFloat{
                
                get{
                    return self.layer.cornerRadius
                }
                
                set{
                    self.layer.cornerRadius = newValue
                }
            }
            
            @IBInspectable var shadowRadius : CGFloat {
                //그림자의 퍼짐 정도
                get{
                    return self.layer.shadowRadius
                }
                
                set{
                    self.layer.shadowRadius = newValue
                }
            }
            
            @IBInspectable var shadowOpacity : Float {
                // 그림자의 투명도 0 - 1 사이의 값을 가짐
                get{
                    return self.layer.shadowOpacity
                }
                
                set{
                    self.layer.shadowOpacity = newValue
                }
            }
            
            @IBInspectable var shadowColor : UIColor {
                // 그림자의 색
                get{
                    if let shadowColor = self.layer.shadowColor {
                        return UIColor(cgColor: shadowColor)
                    }
                    return UIColor.clear
                }
                set{
                    // 그림자의 색이지정됬을 경우
                    self.layer.shadowOffset = CGSize(width: 0, height: 0)
                }
            }
            
        }
    }
    
   
    
/*
    lazy var emptyView: UIView = {
        let view = UIView()
        
        return view
    }()


        view.addSubview(emptyView)
        emptyView.snp.makeConstraints { maker in
                   maker.center.equalToSuperview()
                   maker.width.height.equalTo(200)
               }
        emptyView.layer.borderWidth = 1
                /// 테두리 밖으로 contents가 있을 때, 마스킹(true)하여 표출안되게 할것인지 마스킹을 off(false)하여 보일것인지 설정
                emptyView.layer.masksToBounds = false
                /// shadow 색상
                emptyView.layer.shadowColor = UIColor.black.cgColor
                /// 현재 shadow는 view의 layer 테두리와 동일한 위치로 있는 상태이므로 offset을 통해 그림자를 이동시켜야 표출
                emptyView.layer.shadowOffset = CGSize(width: 0, height: 20)
                /// shadow의 투명도 (0 ~ 1)
                emptyView.layer.shadowOpacity = 0.8
                /// shadow의 corner radius
                emptyView.layer.shadowRadius = 5.0
        
        
    }
    /*
    @IBAction func summaryView() {
        var myView = UIView()
        
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOffset = CGSize(width: 10, height: 10)
        myView.layer.shadowRadius = 10
        myView.layer.shadowOpacity = 0.1
        myView.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
    }
    */
 */

    }

