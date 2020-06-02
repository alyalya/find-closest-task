let arr = [1,2,4,5,9,10]
let numb = 6

func findDiff(numbOne: Int, numbTwo: Int) -> Int {
    var diff: Int
    if numbOne > numbTwo {
        diff = numbOne - numbTwo
    } else {
        diff = numbTwo - numbOne
    }
    return diff
}

func findClosest(arr: Array<Int>, numb: Int) -> (Int, Int) {
    var min: Int = arr[0]
    var max: Int = arr[0]
        
    for i in arr {
        if i > numb {
            if findDiff(numbOne: max, numbTwo: numb) >= findDiff(numbOne: i, numbTwo: numb) {
                max = i
            }
        } else {
            if findDiff(numbOne: numb, numbTwo: min) >= findDiff(numbOne: numb, numbTwo: i) {
                min = i
            }
        }
    }
    
    return (min, max)
}

findClosest(arr: arr, numb: numb)

