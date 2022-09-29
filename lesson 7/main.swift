

//№1. Составить программу, которая будет добавлять товары в базу данных товаров магазина. Учесть, что у некоторых товаров может не быть некоторых параметров
//
//Параметры:
//Название
//Производитель
//Вес
//Штрих-код
//Цена
//Скидка (если есть - указываете, если нет - nil)
//Наличие (если есть - указываете, если нет - nil)
//В конце вывести общее количество товаров (какого вида сколько товаров) и общую стоимость товаров магазина




var product: [String] = []
var company: [String] = []
var weight: [Int] = []
var qrcode: [Int] = []
var price: [Int] = []
var discount: [Int] = []
var availability: [String] = []
var quantity : [Int] = []
var sum : [Int] = []
var summ = 0
var count = 0
var nameNew = ""
while nameNew != "готово" {
    print("Введите название или готово для выхода")
    let nameNew = readLine()!
    if nameNew == "готово" {
        break
    }
}
product.append(nameNew)
    print("Производитель")
    let companyNew = readLine()!
    company.append(companyNew)
    print("Вес")
    let weightNew = Int(readLine()!)
    weight.append(weightNew ?? 0)
    print("Штрих код")
    let codeNew = Int(readLine()!)
    qrcode.append(codeNew ?? 0)
    print("Цена")
    let priceNew = Int(readLine()!)
    price.append(priceNew ?? 0)
    print("Скидка")
    let discountNew = Int(readLine()!)
    discount.append(discountNew ?? 0)
    print("Количество")
    let quantityNew = Int(readLine()!)
    quantity.append(quantityNew ?? 0)
    sum.append(quantity[count]*price[count]-quantity[count]*price[count]*discount[count]/100)
    count += 1


for i in 0..<count {
    print("\(qrcode[i]). \(product[i]) / \(company[i]) / \(weight[i]) кг / цена - \(price[i]) / количество - \(quantity[i]) шт / скидка - \(discount[i]) % / сумма - \(sum[i]) сом")
    summ += sum[i]
}
print("Итого - \(summ) сом")


//№2. Составить программу, которая будет сохранять имя пользователя, пароль и секретное слово(может быть, а может быть не указано)
//В конце проверить, если человек использует одинаковые пароли - написать “Пароли на Mail.Ru и Facebook похожи. Рекомендуем изменить пароль”(например)


var username: [String] = []
var password: [String] = []
var secretword: [String] = []
var account: [String] = []
var index = -1
let a = 0

while a == 0 {
    print("Введите название или готово")
    let newAccount = readLine()!
   if newAccount == "готово" {
       break
        
        
    }
    index += 1
        
account.append(newAccount)
    print("Логин")
    let newLogin = readLine()!
    username.append(newLogin)
    print("Пароль")
    var newPassword = readLine()!
for i in 0..<index {
        while newPassword == password[i] {
            print("Ваш пароль похож на пароль от \(account[i]). Введите другой пароль")
            newPassword = readLine()!
        }
    }
    password.append(newPassword)
    print("Секретное слово")
    let newSecretWord = readLine()!
    secretword.append(newSecretWord)

for i in 0...index {
    print(account[i], username[i], password[i], secretword[i])
}
}

