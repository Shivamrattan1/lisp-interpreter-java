# Documentation Placeholder

# Lisp Interpreter in Java

## Project Structure

```
lisp-interpreter-java/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── lisp/
│   │   │       ├── parser/
│   │   │       │   ├── Tokenizer.java
│   │   │       │   └── Parser.java
│   │   │       ├── eval/
│   │   │       │   ├── Evaluator.java
│   │   │       │   ├── Environment.java
│   │   │       │   ├── LispFunction.java
│   │   │       │   └── Macro.java
│   │   │       ├── repl/
│   │   │       │   └── REPL.java
│   │   │       ├── Main.java
│   │   │       └── util/
│   │   │           ├── Symbol.java
│   │   │           └── LispException.java
│   ├── test/
│   │   └── java/
│   │       └── lisp/
│   │           └── InterpreterTest.java
├── examples/
│   ├── example.lisp
│   ├── factorial.lisp
│   ├── conditionals.lisp
│   └── macros.lisp
├── pom.xml
└── DOCUMENTATION.md
```

## How to Build and Run

### Prerequisites
- Java 17+
- Maven 3.8+

### Build the Project
```bash
mvn clean package
```

### Run REPL
```bash
java -cp target/lisp-interpreter-java-1.0-SNAPSHOT.jar lisp.Main
```

### Run Lisp Script
```bash
java -cp target/lisp-interpreter-java-1.0-SNAPSHOT.jar lisp.Main examples/factorial.lisp
```

## Documentation

### Overview
This project implements a Lisp interpreter in Java with support for parsing, evaluation, environments, macros, functions, and REPL.

---

### 📦 Components Explained

#### 1. **Parser Component**
- `Tokenizer.java`: Uses regex to split Lisp input into tokens (numbers, symbols, strings, parens).
- `Parser.java`: Converts tokens into an abstract syntax tree (AST) using recursive descent.

#### 2. **Evaluation Engine**
- `Evaluator.java`: Evaluates parsed Lisp expressions. Handles function calls, special forms, and recursion.
- `Environment.java`: Manages variable scopes and bindings.
- `LispFunction.java`: Interface for functions (both built-in and user-defined).
- `Macro.java`: Supports defining and expanding macros.

#### 3. **REPL and Runtime**
- `REPL.java`: Interactive Read-Eval-Print Loop.
- `Main.java`: Entry point for REPL and script execution.

#### 4. **Utilities**
- `Symbol.java`: Singleton-style representation of symbols.
- `LispException.java`: Enhanced error messages with context.

#### 5. **Testing**
- `InterpreterTest.java`: Unit tests for arithmetic, function calls, and definitions.

### 🧠 Language Features
- **Data types**: integers, floats, strings, symbols, lists
- **Special forms**: `defun`, `if`, `quote`, `lambda`
- **Macros**: define reusable code expansions
- **Scoping**: Lexical scoping with nested environments

### 🔧 Built-in Functions
| Function | Description        |
|---------|--------------------|
| `+` `-` `*` `/` | Arithmetic         |
| `<` `>` `=`     | Comparisons        |
| `if`            | Conditional logic  |
| `defun`         | Define a function  |
| `format`        | String output      |

---

## 📂 Examples

### 1. **example.lisp**
```lisp
(defun square (x) (* x x))
(square 5)
```

### 2. **factorial.lisp**
```lisp
(defun fact (n)
  (if (= n 0)
      1
      (* n (fact (- n 1)))))

(fact 5)
```

### 3. **conditionals.lisp**
```lisp
(defun classify (x)
  (if (< x 0)
      "Negative"
      (if (= x 0)
          "Zero"
          "Positive")))

(classify -5)
(classify 0)
(classify 9)
```

### 4. **macros.lisp**
```lisp
(defmacro when (cond body)
  (list 'if cond body))

(when (= 1 1) (format "It works!"))
```

---

## ✅ Suggested Future Enhancements
- Tail-call optimization
- Closures support
- Garbage collection
- JIT compilation for hot functions
- Module system for scripts
- Step-by-step interactive debugger
