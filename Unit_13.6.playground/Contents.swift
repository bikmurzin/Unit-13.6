import UIKit
//1
print("Задание 1\n")
print("Кортеж для двух человек")
let tuplePerson1 = (name: "Nikolos", age: 34, gender: "Male")
let tuplePerson2 = (name: "Alisa", age: 22, gender: "Female")

print("Name: \(tuplePerson1.0), age: \(tuplePerson1.1), gender: \(tuplePerson1.2)")
print("Name: \(tuplePerson2.name), age: \(tuplePerson2.age), gender: \(tuplePerson2.gender)")


//2
print("\nЗадание 2")
print("\nСоздайте массив «дни в месяцах» (12 элементов содержащих количество дней в соответствующем месяце). Используя цикл for и этот массив:")
var daysInMonths = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
print("\nВыведите количество дней в каждом месяце")
for a in 0..<daysInMonths.count {
    print("Количество дней в \(a + 1) месяце: \(daysInMonths[a])")
}

print("\nИспользуйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней")
var namesOfMonths = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
for a in 0..<daysInMonths.count {
    print("Количество дней в месяце \(namesOfMonths[a]): \(daysInMonths[a])")
}

print("\nСделайте тоже самое, но используя массив кортежей с параметрами (имя месяца, количество дней)")
var tupleForMonths = [("Январь", 31), ("Февраль", 29), ("Март", 31), ("Апрель", 30), ("Май", 31), ("Июнь", 30), ("Июль", 31), ("Август", 31), ("Сентябрь", 30), ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)]
for a in 0..<tupleForMonths.count {
    print("Количество дней в месяце \(tupleForMonths[a].0): \(tupleForMonths[a].1)")
}

print("\nСделайте тоже самое, только выводите дни в обратном порядке (порядок в исходном массиве не меняется)")
for a in 0..<tupleForMonths.count {
    print("Количество дней в месяце \(tupleForMonths[tupleForMonths.count - a - 1].0): \(tupleForMonths[tupleForMonths.count - a - 1].1)")
}

print("\nДля произвольно выбранной даты (месяц и день) посчитайте количество дней до конца года")
let month = "Февраль"
let day = 14
let monthsUntilEndOfYear = tupleForMonths.drop(while: {$0.0 != month})
monthsUntilEndOfYear
monthsUntilEndOfYear.startIndex
var countDaysUntilEndOfYear = monthsUntilEndOfYear[monthsUntilEndOfYear.startIndex].1
if monthsUntilEndOfYear.startIndex != monthsUntilEndOfYear.endIndex {
    for a in (monthsUntilEndOfYear.startIndex + 1)..<monthsUntilEndOfYear.count {
        countDaysUntilEndOfYear += monthsUntilEndOfYear[a].1
    }
}
print(countDaysUntilEndOfYear)

//3
print("\nЗадание 3\n")

//Создайте словарь, как журнал студентов, где имя и фамилия студента это ключ, а оценка за экзамен — значение.
var students = ["Anton Potapov" : 3]
//Повысьте студенту оценку за экзамен
students["Anton Potapov"] = 4
//Если оценка положительная (4 или 5) или удовлетворительная (3), то выведите сообщение с поздравлением, отрицательная (1, 2) - отправьте на пересдачу
if (students["Anton Potapov"] == 3 || students["Anton Potapov"] == 4 || students["Anton Potapov"] == 5) {
    print("Поздравляем с успешной сдачей экзамена!")
} else if students["Anton Potapov"] == 1 || students["Anton Potapov"] == 2{
    print("Требуется пересдача")
}
//Добавьте еще несколько студентов — это ваши новые одногруппники!
students["Nikolay Alexeev"] = 3
students["Oleg Nikolaev"] = 1
students["Alex Kozlov"] = 5
//Удалите одного студента — он отчислен
students.removeValue(forKey: "Anton Potapov")
//Посчитайте средний балл всей группы по итогам экзамена.
var middleScore = 0.0
for (name, score) in students {
    middleScore += Double(score)
}
middleScore = Double(middleScore) / Double(students.count)
print("Средний балл всей группы по итогам экзамена: \(middleScore)")
