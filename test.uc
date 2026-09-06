$ ============================================================================
$  Uncertain Programming Language — полная демонстрация
$  Каждый раздел показывает группу возможностей в действии.
$  Запуск:  Uncertain Programming Language.exe test.uc
$ ============================================================================

say "=============================="
say " 1. HELLO, ДЕПАРТАМЕНТ"
say "=============================="
say "Hello from the Department of Uncertainty!"
say 1 + 2
say "Текст с \nпереводом строки и \tтабуляцией"

$ ---------------------------------------------------------------------------
$  2. ПЕРЕМЕННЫЕ И ТИПЫ
$ ---------------------------------------------------------------------------
say ""
say "=== 2. Типы данных ==="
i = 42
f = 3.14
s = "строка"
b = Legit
lst = [1, "two", 3.5, Fake]
grp = {name: "Ada", year: 1815}
nun = Nun
say i
say f
say s
say b
say lst
say grp
say nun
say blueprint(i) + " " + blueprint(f) + " " + blueprint(s)
say blueprint(b) + " " + blueprint(lst) + " " + blueprint(grp) + " " + blueprint(nun)
say howbig(lst)
say "hex: " + 0xFF + ", " + 0x10
say -7

$ ---------------------------------------------------------------------------
$  3. АРИФМЕТИКА, БИТЫ, ЛОГИКА, СРАВНЕНИЯ
$ ---------------------------------------------------------------------------
say ""
say "=== 3. Операторы ==="
say 2 + 3 * 4
say (2 + 3) * 4
say 5 / 2
say 7 % 3
say 12 & 5
say 12 | 3
say 1 && 0
say 1 || 0
say !Legit
x = 10
say -x
say -(x + 1)
say 10 == 10.0
say "abc" == "abc"
say "abc" != "abd"
say 5 > 3
say 2 <= 2
say 7 >= 8
say [1, 2] == [1, 2]
say 2 * 3 & 1
say 1 + 2 & 3
say "кон" + "катенация"
say "число " + 42
say 2 inside [1, 2, 3]
say "ell" inside "hello"
say "name" inside {name: "x"}
say 9 inside [1, 2, 3]

$ ---------------------------------------------------------------------------
$  4. ПРИСВАИВАНИЯ (простые и составные)
$ ---------------------------------------------------------------------------
say ""
say "=== 4. Присваивания ==="
a = 100
a += 5
say a
a -= 3
say a
a *= 2
say a
a /= 4
say a
b2 = 6
b2 |= 1
say b2
c = 12
c &= 5
say c
grid = [[1, 2], [3, 4]]
grid[1][0] = 99
say grid
str = "cat"
str[0] = "h"
say str
g2 = {count: 1}
g2.count += 10
say g2

$ ---------------------------------------------------------------------------
$  5. ВЕТВЛЕНИЕ
$ ---------------------------------------------------------------------------
say ""
say "=== 5. whenever / otherwhen / otherwise ==="
score = 85
whenever (score >= 90) { say "A" }
otherwhen (score >= 80) { say "B" }
otherwhen (score >= 70) { say "C" }
otherwise { say "F" }

n2 = 0
whenever (n2 > 0) { say "positive" }
otherwhen (n2 < 0) { say "negative" }
otherwise { say "zero" }

whenever (choice("") == Fake) { say "пустая строка — Fake" }

$ ---------------------------------------------------------------------------
$  6. ЦИКЛЫ: throughout / for / forevery, crush / keepup
$ ---------------------------------------------------------------------------
say ""
say "=== 6. Циклы ==="
i2 = 1
total = 0
throughout (i2 <= 5) {
    total += i2
    i2 += 1
}
say "throughout sum: " + total

say "for 0..9 нечётные:"
for (k = 0; k < 10; k += 1) {
    whenever (k % 2 == 0) { keepup }
    say k
}

say "crush на 3:"
for (k = 0; k < 100; k += 1) {
    whenever (k == 3) { crush }
    say k
}

say "forevery по списку:"
names = ["ada", "grace", "alan"]
forevery (nm inside names) {
    say caps(nm)
}

say "forevery по строке:"
forevery (ch inside "uc") {
    say ch
}

$ ---------------------------------------------------------------------------
$  7. ФУНКЦИИ: what / sendback, рекурсия
$ ---------------------------------------------------------------------------
say ""
say "=== 7. Функции ==="
say "вызов до определения: " + twice(21)

what twice(x) { sendback x * 2 }

what fact(n) {
    whenever (n <= 1) { sendback 1 }
    sendback n * fact(n - 1)
}

what fib(n) {
    whenever (n < 2) { sendback n }
    sendback fib(n - 1) + fib(n - 2)
}

what greet(name, times) {
    out = ""
    i3 = 0
    throughout (i3 < times) {
        out = out + "hi " + name + "; "
        i3 += 1
    }
    sendback out
}

say "twice(21) = " + twice(21)
say "fact(10) = " + fact(10)
say "fib(10) = " + fib(10)
say greet("CND", 3)

$ ---------------------------------------------------------------------------
$  8. ГРУППЫ: Group, методы, литералы
$ ---------------------------------------------------------------------------
say ""
say "=== 8. Группы ==="
Group Dog {
name = "Rex"
age = 3
what birthday() {
    Dog.age += 1
    sendback Dog.age
}
what describe() {
    sendback Dog.name + ", возраст " + Dog.age
}
}
say Dog.describe()
say "день рождения -> " + Dog.birthday()
Dog.age = 9
say Dog.describe()

point = {x: 10, y: 20}
say "point.x + point.y = " + (point.x + point.y)
point.z = 30
say point
m = {grid: [[1, 2], [3, 4]], total: 0}
m.grid[0][1] = 22
m.total += 5
say m

$ ---------------------------------------------------------------------------
$  9. СТРОКОВЫЕ ФУНКЦИИ
$ ---------------------------------------------------------------------------
say ""
say "=== 9. Строки ==="
say caps("hello world")
say passive("HeLLo WoRLd")
say "[" + cutout("   padded   ") + "]"
say subword("department", 2, 5)
say divorce("a,b,c", ",")
say divorce("abc", "")
say marry(["one", "two", "three"], " | ")
say marry(["no", "sep"])
say swap("banana", "na", "NA")
say lookfor("department", "part")
say lookfor("department", "xyz")
say commencesWith("uncertain", "un")
say commencesWith("uncertain", "tain")
say finitesWith("uncertain", "tain")
say restate("ab", 4)
say overturn("stressed")
say charAt("hello", 4)
say layout("{} + {} = {}", 2, 2, 4)
say layout("{}: {}", "key", 123)

$ ---------------------------------------------------------------------------
$  10. СПИСКОВЫЕ ФУНКЦИИ (включая мутации переменной)
$ ---------------------------------------------------------------------------
say ""
say "=== 10. Списки ==="
todo = ["buy milk"]
attach(todo, "write code")
attach(todo, "sleep")
say todo
last = yoink(todo)
say "yoink вернул: " + last
say todo
wedge(todo, 1, "walk dog")
say todo
snip(todo, 0)
say todo
banish(todo, "write code")
say todo
say whereis(todo, "walk dog")
say whereis(todo, "nope")
nums = [5, 3, 8, 1, 3]
lineup(nums)
say "sorted: " + word(nums)
pure(nums)
say "pure: " + word(nums)
overturn(nums)
say "overturn: " + word(nums)
say "tally: " + tally([1, 2, 3, 4])
say "tally float: " + tally([1.5, 2.5])
say "bottom/peak: " + bottom(3, 7) + " / " + peak(3, 7)
say "bottom list: " + bottom([4, 9, 2]) + ", peak list: " + peak([4, 9, 2])
say "chunk: " + word(chunk([1, 2, 3, 4, 5], 1, 4))
say "chunk str: " + chunk("hello world", 0, 5)
say "span: " + word(span(3, 7))

$ ---------------------------------------------------------------------------
$  11. ГРУППОВЫЕ ФУНКЦИИ
$ ---------------------------------------------------------------------------
say ""
say "=== 11. tags / loot / evict / blend ==="
rec = {name: "Ada", age: 36, city: "London"}
say tags(rec)
say loot(rec)
say loadedwith("age", rec)
evict(rec, "city")
say rec
a1 = {x: 1, y: 2}
b1 = {y: 9, z: 3}
say blend(a1, b1)
say "после blend a1 не изменился: " + word(a1)

$ ---------------------------------------------------------------------------
$  12. КОНВЕРСИИ
$ ---------------------------------------------------------------------------
say ""
say "=== 12. num / word / choice / float / blueprint ==="
say num("42")
say num(3.9)
say num(Legit)
say word(123)
say word(3.14)
say word([1, 2])
say choice("")
say choice("hi")
say choice([])
say choice([0])
say choice(0)
say choice(42)
say float(7)
say float(Legit)

$ ---------------------------------------------------------------------------
$  13. МАТЕМАТИКА
$ ---------------------------------------------------------------------------
say ""
say "=== 13. Математика ==="
say floor(3.7)
say floor(-3.7)
say roof(3.2)
say roof(-3.2)
say snap(2.5)
say snap(2.4)
say pwr(2, 10)
say pwr(9, 0.5)
say mathlib.sqroot(144)
say mathlib.powered(3, 3)
say mathlib.absolute(-42)
say deeplog(1000)
say deepin(1)
say blowup(0)
say fence(5, 1, 10)
say fence(-5, 1, 10)
say fence(50, 1, 10)
say pie()
say vibe(-10)
say vibe(0)
say vibe(10)
say wobble(0)
say wave(0)

$ ---------------------------------------------------------------------------
$  14. СЛУЧАЙНОСТЬ
$ ---------------------------------------------------------------------------
say ""
say "=== 14. chaos / roll ==="
r = chaos()
say "chaos в [0,1): " + (r >= 0 && r < 1)
dice = roll(1, 6)
say "roll(1,6) в диапазоне: " + (dice >= 1 && dice <= 6)

$ ---------------------------------------------------------------------------
$  15. ВРЕМЯ
$ ---------------------------------------------------------------------------
say ""
say "=== 15. Время ==="
t0 = rightnow()
chill(30)
t1 = rightnow()
say "прошло >= 30 мс: " + (t1 - t0 >= 30)
say "calendar() — строка: " + blueprint(calendar())
say "calendar длиной 19: " + (howbig(calendar()) == 19)
say "system.time() > 0: " + (system.time() > 0)

$ ---------------------------------------------------------------------------
$  16. ВЫСШИЕ ФУНКЦИИ: apply / drop / fold
$ ---------------------------------------------------------------------------
say ""
say "=== 16. apply / drop / fold ==="
what double(v) { sendback v * 2 }
what isEven(v) { sendback v % 2 == 0 }
what addNums(acc, v) { sendback acc + v }

data = span(1, 10)
say "apply double: " + word(apply(data, "double"))
say "drop isEven:  " + word(drop(data, "isEven"))
say "fold sum:     " + fold(data, "addNums", 0)
say "apply native: " + word(apply(["a", "b", "c"], "caps"))

Group Check {
what isOdd(v) { sendback v % 2 == 1 }
}
say "drop методом группы: " + word(drop(data, "Check.isOdd"))

$ ---------------------------------------------------------------------------
$  17. ИСКЛЮЧЕНИЯ, ПРОВЕРКИ, ВЫХОД
$ ---------------------------------------------------------------------------
say ""
say "=== 17. goforit / nab / yeet / gawwd, flex ==="
flex (1 < 2)
say "flex прошёл"

goforit {
    yeet "ошибка-значение"
}
nab (e) {
    say "поймано значение: " + e
}
gawwd {
    say "gawwd выполняется всегда"
}

goforit {
    say 1 / 0
}
nab (e2) {
    say "поймана runtime-ошибка: " + e2
}

goforit {
    x3 = 1
    what boom_deep() {
        yeet 42
    }
    boom_deep()
    say "не будет напечатано"
}
nab (e3) {
    say "размотано из функции: " + e3
}

$ leave(0) — завершило бы программу здесь; раскомментируй, чтобы проверить

$ ---------------------------------------------------------------------------
$  18. ФАЙЛЫ (временная папка, автоочистка)
$ ---------------------------------------------------------------------------
say ""
say "=== 18. inhale / stamp / glueon / ghostcheck ==="
path = setting("TEMP") + "\\uc_showcase.txt"
boom("del /q \"" + path + "\" >nul 2>&1")
say "до записи: " + ghostcheck(path)
stamp(path, "строка 1\nстрока 2")
say "после stamp: " + ghostcheck(path)
say inhale(path)
glueon(path, "\nстрока 3")
say inhale(path)
boom("del /q \"" + path + "\" >nul 2>&1")
say "после очистки: " + ghostcheck(path)

$ ---------------------------------------------------------------------------
$  19. ОКРУЖЕНИЕ И АРГУМЕНТЫ
$ ---------------------------------------------------------------------------
say ""
say "=== 19. setting / rumors ==="
say "TEMP задан: " + (howbig(setting("TEMP")) > 0)
say "rumors(): " + word(rumors())
say "USERNAME: " + setting("USERNAME")

say ""
say "=============================="
say " Демонстрация завершена. Департамент доволен."
say "=============================="
