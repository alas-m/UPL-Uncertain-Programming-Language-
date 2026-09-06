# 🕳 Uncertain Programming Language (.uc)

> Интерпретируемый язык, в котором рантайм говорит голосом **Департамента
> неопределённости**. Истина здесь — `Legit`, ложь — `Fake`, ничего — `Nun`,
> ввод — `snitch`, вывод — `say`, а любая ошибка — «нарушение Протоколов
> Неопределённости».

Tree-walking интерпретатор в одном файле `main.cpp`. Лексер → рекурсивный парсер →
AST → исполнитель. Без единой зависимости. Visual Studio 2022.

---

## Первый взгляд

```uc
$ добро пожаловать в Департамент неопределённости
say "Greetings, citizen."
say 1 + 2            $ 3
say Legit            $ true
say Nun              $ None

what fact(n) {                          $ рекурсия
    whenever (n <= 1) { sendback 1 }
    sendback n * fact(n - 1)
}
say fact(10)         $ 3628800

what even(n) { sendback n % 2 == 0 }    $ высшие функции
what add(acc, x) { sendback acc + x }
nums = span(1, 10)
say drop(nums, "even")                  $ [2, 4, 6, 8, 10]
say fold(nums, "add", 0)                $ 55

goforit {                               $ исключения: try / catch
    yeet "boom"                         $ throw
}
nab (e) {
    say "caught: " + e                  $ caught: boom
}
```

---

## Словарь Департамента

| Концепция | Другие языки | `.uc` |
|---|---|---|
| истина / ложь / ничего | `true` / `false` / `null` | `Legit` / `Fake` / `Nun` |
| вывод / ввод | `print` / `readLine` | `say` / `snitch()` |
| функция / возврат | `def` / `return` | `what` / `sendback` |
| `if` / `else if` / `else` | — | `whenever` / `otherwhen` / `otherwise` |
| `while` / `for` / `foreach` | — | `throughout` / `for` / `forevery (x inside …)` |
| `break` / `continue` | — | `crush` / `keepup` |
| `assert` / `exit` | — | `flex (cond)` / `leave(n)` |
| `try` / `catch` / `finally` / `throw` | — | `goforit` / `nab (err)` / `gawwd` / `yeet` |
| длина / тип значения | `len` / `typeof` | `howbig(x)` / `blueprint(x)` |
| `map` / `filter` / `reduce` | — | `apply(xs, "fn")` / `drop(xs, "fn")` / `fold(xs, "fn", init)` |

---

## Возможности

| | |
|---|---|
| 🧬 **Динамические типы** | `INT`, `FLOAT`, `STRING`, `BOOL`, `LIST`, `GROUP`, `NONE` |
| 🏷 **Группы** | объекты со свойствами и методами (`Group Dog { … }`), литералы `{x: 1}` |
| 🎰 **Случайность** | `chaos()` и `roll(lo, hi)` |
| 🧮 **Математика** | `pwr`, `floor`/`roof`/`snap`, `wobble`/`wave`/`slant`, `deeplog`/`deepin`/`blowup`, `fence`, `pie`, `vibe` |
| 🔤 **Строки** | `caps`, `passive`, `divorce` (split), `marry` (join), `swap`, `cutout`, `subword`, `restate`, `overturn`… |
| 📚 **Списки** | `attach`, `yoink` (pop), `wedge`, `snip`, `banish`, `lineup` (sort), `pure` (uniq), `tally`… |
| 🗂 **Группы** | `tags` (keys), `loot` (values), `evict`, `blend` |
| 💥 **Исключения** | `goforit`/`nab`/`yeet`/`gawwd` — ловят и значения, и runtime-ошибки |
| 📁 **Файлы и система** | `inhale`/`stamp`/`glueon` (read/write/append), `ghostcheck`, `boom` (exec), `setting` (env), `rumors` (args) |
| ⏱ **Время** | `chill(ms)`, `rightnow()`, `calendar()`, `system.time()` |
| 🧠 **Высшие функции** | `apply`/`drop`/`fold` — по имени функции (свои, native или методы групп) |
| 🚫 **Ноль зависимостей** | один `main.cpp`, один `sln`, компилируется в MSVC |

---

## Философия

Язык не прячет свой характер. Каждое сообщение об ошибке — строчка из отчёта
Департамента:

```
Runtime Protocol Violation: Division by zero.
Uncaught yeet: boom
flex failed: condition evaluated to Fake.
```

Синтаксис читается как приказ: `crush` — выйти из цикла, `keepup` — продолжить,
`yeet` — выбросить. Присваивание работает по значению (глубокая копия) — без
сюрпризов со ссылками; мутирующие функции вроде `attach(lst, 9)` меняют
переменную напрямую.

---
 
## 📡 Связь с Департаментом
 
Департамент неопределённости ценит обратную связь — от «легит фича» до «полный фейк».
Пиши напрямую, без заявлений и очередей:
 
> **Для большей информации:** [t.me/cnddev](https://t.me/cnddev)
