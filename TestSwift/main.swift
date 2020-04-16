//
//  main.swift
//  TestSwift
//
//  Created by YuSha Hu on 2020/4/15.
//  Copyright © 2020 YuSha Hu. All rights reserved.
//

protocol Runnable {
    associatedtype Speed
    var speed: Speed { get }
}

class Person: Runnable {
    var speed: Double {
        10.0
    }
}

class Per: Runnable {
    var speed: Int {
        5
    }
}

func test(_ : Int) -> some Runnable {
    return Person()
}

var str1 = "0123456789ABCDEF"
print(Mems.memStr(ofVal: &str1))
//0xd000000000000010 0x80000001000057b0  d0标志位 在常量区
str1.append("G")
print(Mems.memStr(ofVal: &str1))
//0xf000000000000011 0x0000000102205fe0
/*
var str1 = "0123456789"
print(Mems.memStr(ofVal: &str1))
//0x3736353433323130 0xea00000000003938
str1.append("G")
print(Mems.memStr(ofVal: &str1))
//0x3736353433323130 0xeb00000000473938
*/
/*
var str1 = "0123456789"
// 0x100002040: 0x3736353433323130 0xea00000000003938
// 0xea00000000003938 ： e表示以这种方式存储 a表示存储长度（最大f）
// 类似OC tagger Point

var str2 = "0123456789ABCDE"
//  rax = 0x3736353433323130
//  rdx = 0xef45444342413938
print(MemoryLayout.stride(ofValue: str1))


var str3 = "0123456789ABCDEF"
// rax = 0xd000000000000010
// rdx = 0x80000001000057b0
// 0x7fffffffffffffe0
// str3真实地址  0x80000001000057b0 - 0x7fffffffffffffe0 = 0x1000057D0
//             0x80000001000057b0 + 0x20 = 0x1000057D0
// %rdi存放字符串真实地址
// %rsi字符串长度
// call string.init
// %rdx存放的是字符串的真实地址 + 0x7fffffffffffffe0
print(Mems.memStr(ofVal: &str3))
print("1")
*/
