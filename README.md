# kind-portal.el

[![License GPL 3][badge-license]](http://www.gnu.org/licenses/gpl-3.0.txt)

Emacs bindings for the [kind-portal](https://github.com/scicloj/kind-portal) adapter of Clojure [Kindly](https://scicloj.github.io/kindly/) visualizations to the [Portal](https://github.com/djblue/portal) tool

## Usage

### Installing & loading

Soon, this package will hopefully be in [MELPA](https://melpa.org/). Till then, you may install & load it in the following ways using [use-package](https://github.com/jwiegley/use-package).

Using [straight](https://github.com/radian-software/straight.el), you may load the package as follows:

```elisp
(use-package kind-portal
  :straight (kind-portal
             :type git
             :host github
             :repo "scicloj/kind-portal.el"))
```

Using [vc-use-package](https://github.com/slotThe/vc-use-package), you may load the package as follows:

```elisp
(use-package kind-portal
  :vc (:fetcher github :repo scicloj/kind-portal.el))
```

### API

The package offers the following functions, that you may wish to create keybindings for:
|name|function|
|--|--|
|`kind-portal-open-if-needed`|Open the Portal view if you haven't yet.|
|`kind-portal-send-last-sexp`|Submit the Clojure form in last s-expression to Portal, adapted for Kindly|
|`kind-portal-send-defun-at-point`|Submit the Clojure form at the [defun-at-point](https://www.emacswiki.org/emacs/ThingAtPoint) to Portal, adapted for Kindly|

## License

kind-portal.el is distributed under the GNU General Public License, version 3.

Copyright © 2024 Scicloj

[badge-license]: https://img.shields.io/badge/license-GPL_3-green.svg
