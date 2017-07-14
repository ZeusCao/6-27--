//
//  ViewController.swift
//  17-6-27-字符串
//
//  Created by Zeus on 2017/6/27.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo()
        demo1()
        
        
    }
    
    //MARK --- 字符串的子串 ---
    func demo4()  {
        
        // 建议 一般使用nsstring作为中转，因为swift取子串的方法一直在优化
        // 容易理解
        let str = "我们一起去飞"
        
        // 方法1.NSString
        let ocStr = str as NSString
        let S1 = ocStr.substring(with: NSMakeRange(2, 3))
        print(S1)
        
        // 方法2：string 的swift3.0的方法（偶尔使用方便，但复杂的截取，不好理解，而且语法经常变化）
        //str.substring(with: <#T##Range<String.Index>#>)
        print(str.startIndex)
        print(str.endIndex)
        
        let s2 = str.substring(from: "我们".endIndex)
        print(s2)
        
        let s3 = str.substring(from: "123".endIndex)
        print(s3)
        
        
        //取子字符串的范围
        guard let range = str.range(of: "一起") else {
            print("没有找到字符串")
            return
        }
        // 一定找到了范围
        print(range)
        print(str.substring(with: range))
        
    }
    
    
    // MARK --- 格式化
    func demo3() -> () {
        let h = 8
        let m = 9
        let s = 6
        let dataStr = "\(h)\(m)\(s)"
        print(dataStr)
        
        // 使用格式字符串格式化
        let dataStr1 = String(format: "%02d:%02D:%02d", h,m,s)
        print(dataStr1)
        
        
        
    }
    
    
    // MARK --- 字符串的拼接
    func demo2() -> () {
        let name = "老王"
        let age = 18
        let title : String? = "boss"
        let  point = CGPoint(x :10 ,y:20)
        
        // 拼接字符串需要注意可选项
        print("\(name) \(age)\(title ?? "")\(point)")
    }

    
    //MARK --- 字符串的长度
    func demo1() {
        
        let str = "hello world你好"
        
        // 1> 返回指定 编码的对应的字节数量
        // UTF8的编码（0-4个）汉字是三个字节
        print(str.lengthOfBytes(using: .utf8))
        
        // 2> 字符串长度 :返回字符的个数 =================》推荐使用
        print(str.characters.count);
        
        // 3> 使用NSString中转(从而得到length)
        /**
         str as NSString
         相当于oc中的强转（MytableViewCell *）
         swift 中可以使用“ 值 as 类型” 类型转换
         */
        let ocStr = str as NSString
        print(ocStr.length)
        
    }
    
    
    
    //MARK --- 字符串的遍历
    func demo() {
        
        // NSString不支持以下方式遍历
        let str : String = "我要飞得更高"
        for c in str.characters {
            print(c)
        }
        
    }
    
    


}

