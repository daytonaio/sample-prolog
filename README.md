# Sample Prolog

This is an example Prolog project used in Daytona.

2 differents Prolog environments are being installed:

- [GNU Prolog (gprolog)](http://www.gprolog.org/)
- [swi-prolog](https://www.swi-prolog.org/)

---

## 🚀 Getting Started  

### Open Using Daytona  

1. **Install Daytona**: Follow the [Daytona installation guide](https://www.daytona.io/docs/installation/installation/).  
2. **Create the Workspace**:  
   ```bash  
   daytona create https://github.com/daytonaio/sample-prolog
   ```

3. Verify Prolog environment version

```bash
$ gprolog --version
Prolog top-Level (GNU Prolog) x.y.z
```

```bash  
$ swipl --version
SWI-Prolog version x.y.z for x86_64-linux
```

3. Open `main.pro` (in Visual Studio Code change bottom right "Plain Text" to "Prolog")
(this will be required until https://github.com/sazzledazzle/prolog-runner/issues/1 is not fixed)

Look at facts and rules which have been defined.

4. **Start the Application as a script with swipl**:  

Create a new Terminal by pressing on "+"

Cick on "Run Prolog File" to execute this file.

It should run

```
swipl -q -f "/workspaces/sample-prolog/main.pro" -t halt.
```

and display

```
Test grandparent(john, ann): true
Test sibling(ann, pat): true
Test ancestor(john, jim): true
Mary's children: [ann,pat]
```

5. **Start the application as a script with gprolog**:

```bash
$ gprolog
GNU Prolog 1.4.5 (64 bits)
Compiled Feb 23 2020, 20:14:50 with gcc
By Daniel Diaz
Copyright (C) 1999-2020 Daniel Diaz
| ?- [main].
compiling /workspaces/sample-prolog/main.pro for byte code...
/workspaces/sample-prolog/main.pro compiled, 49 lines read - 4240 bytes written, 51 ms
Test grandparent(john, ann): true
Test sibling(ann, pat): true
Test ancestor(john, jim): true
Mary's children: [ann,pat]

(4 ms) yes
```

Use CTRL+D to quit interpreter.

6. Test `gprolog` or `swipl` as REPL (Read–eval–print loop).

---

## ✨ Features  

standardized development environment with devcontainers
