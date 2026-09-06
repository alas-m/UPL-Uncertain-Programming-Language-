# 🕳 Uncertain Programming Language (.uc)

> An interpreted language whose runtime speaks in the voice of the **Department
> of Uncertainty**. Truth here is `Legit`, falsehood is `Fake`, nothingness is
> `Nun`, input is `snitch`, output is `say`, and every error is a "violation of
> the Uncertain Protocols".

A tree-walking interpreter in a single `main.cpp`. Lexer → recursive-descent
parser → AST → executor. Zero dependencies. Visual Studio 2022.

---

## First look

```uc
$ welcome to the Department of Uncertainty
say "Greetings, citizen."
say 1 + 2            $ 3
say Legit            $ true
say Nun              $ None

what fact(n) {                          $ recursion
    whenever (n <= 1) { sendback 1 }
    sendback n * fact(n - 1)
}
say fact(10)         $ 3628800

what even(n) { sendback n % 2 == 0 }    $ higher-order builtins
what add(acc, x) { sendback acc + x }
nums = span(1, 10)
say drop(nums, "even")                  $ [2, 4, 6, 8, 10]
say fold(nums, "add", 0)                $ 55

goforit {                               $ exceptions: try / catch
    yeet "boom"                         $ throw
}
nab (e) {
    say "caught: " + e                  $ caught: boom
}
```

---

## Department vocabulary

| Concept | Other languages | `.uc` |
|---|---|---|
| truth / falsehood / nothing | `true` / `false` / `null` | `Legit` / `Fake` / `Nun` |
| output / input | `print` / `readLine` | `say` / `snitch()` |
| function / return | `def` / `return` | `what` / `sendback` |
| `if` / `else if` / `else` | — | `whenever` / `otherwhen` / `otherwise` |
| `while` / `for` / `foreach` | — | `throughout` / `for` / `forevery (x inside …)` |
| `break` / `continue` | — | `crush` / `keepup` |
| `assert` / `exit` | — | `flex (cond)` / `leave(n)` |
| `try` / `catch` / `finally` / `throw` | — | `goforit` / `nab (err)` / `gawwd` / `yeet` |
| length / type of value | `len` / `typeof` | `howbig(x)` / `blueprint(x)` |
| `map` / `filter` / `reduce` | — | `apply(xs, "fn")` / `drop(xs, "fn")` / `fold(xs, "fn", init)` |

---

## Features

| | |
|---|---|
| 🧬 **Dynamic types** | `INT`, `FLOAT`, `STRING`, `BOOL`, `LIST`, `GROUP`, `NONE` |
| 🏷 **Groups** | objects with properties and methods (`Group Dog { … }`), literals `{x: 1}` |
| 🎰 **Randomness** | `chaos()` and `roll(lo, hi)` |
| 🧮 **Math** | `pwr`, `floor`/`roof`/`snap`, `wobble`/`wave`/`slant`, `deeplog`/`deepin`/`blowup`, `fence`, `pie`, `vibe` |
| 🔤 **Strings** | `caps`, `passive`, `divorce` (split), `marry` (join), `swap`, `cutout`, `subword`, `restate`, `overturn`… |
| 📚 **Lists** | `attach`, `yoink` (pop), `wedge`, `snip`, `banish`, `lineup` (sort), `pure` (uniq), `tally`… |
| 🗂 **Groups** | `tags` (keys), `loot` (values), `evict`, `blend` |
| 💥 **Exceptions** | `goforit`/`nab`/`yeet`/`gawwd` — catch both thrown values and runtime errors |
| 📁 **Files & system** | `inhale`/`stamp`/`glueon` (read/write/append), `ghostcheck`, `boom` (exec), `setting` (env), `rumors` (args) |
| ⏱ **Time** | `chill(ms)`, `rightnow()`, `calendar()`, `system.time()` |
| 🧠 **Higher-order** | `apply`/`drop`/`fold` — by function name (user, native, or group methods) |
| 🚫 **Zero dependencies** | one `main.cpp`, one `.sln`, builds with MSVC |

---

## Philosophy

The language does not hide its personality. Every error message is a line from a
Department report:

```
Runtime Protocol Violation: Division by zero.
Uncaught yeet: boom
flex failed: condition evaluated to Fake.
```

The syntax reads like an order: `crush` — leave the loop, `keepup` — carry on,
`yeet` — throw. Assignment is by value (deep copy) — no reference surprises;
mutating functions such as `attach(lst, 9)` rewrite the variable in place.

---

## 📡 Get in touch
 
The Department of Uncertainty welcomes feedback — from "legit feature" to "total fake".
No forms, no queues, just a direct line:
 
> **For more info:** [t.me/cnddev](https://t.me/cnddev)

📖 Full documentation: [`README.md`](README.md) (RU) · [`README.en.md`](README.en.md) (EN) —
lexical structure, operators, precedence, EBNF grammar, all built-ins.
