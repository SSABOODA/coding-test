// 로그인 성공?
// https://school.programmers.co.kr/learn/courses/30/lessons/120883

import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    
    let id = id_pw[0]
    let pw = id_pw[1]
    
    for i in db {
        if i[0] == id {
            if i[1] == pw {
                return "login"
            }
            return "wrong pw"
        }
    }
    return "fail"
}
