# SysML V.2 - mode for Emacs
## Introduction
This emacs lisp file is useful for modelling in SysML V.2 textual representation to highlight keywords of the standard.

See [SysML V.2](https://github.com/Systems-Modeling/SysML-v2-Release)

## Installation
1. Clone repository
```
git clone https://github.com/felixbruening/sysmlv2-mode.git
```
3. add to .emacs:
```
(load "<path-to>/sysmlv2-mode.el")
(add-to-list 'auto-mode-alist '("\\.sysml\\'" . sysmlv2-mode))
```
## License
GNU GENERAL PUBLIC LICENSE Version 3
