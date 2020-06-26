import UIKit
//初始化放到数组里
var people:Array<Int> = []
//初始值均为100元
for _ in 0 ..< 3 {
    people.append(100)
}
//重复财富分配
for _ in 0 ..<  500 {
    //每个人都要花1元，给随机一个人
    for x in 0 ..< 3 {
        //但是没有钱的时候不用花钱
        if people[x] > 0 {
            //花一块钱
            people[x] -= 1
            //给随机一个人
            var randomPeople = Int.random(in: 0 ..< 3)
            //如果这个随机一个人是自己的话重新选
            while randomPeople == x {
                randomPeople = Int.random(in: 0 ..< 3)
            }
            //这个人得到1元
            people[randomPeople] += 1
        }
    }
    print(people)
}
