# kind-portal.el

<img src="https://raw.githubusercontent.com/scicloj/graphic-design/live/icons/Kindly.svg" alt="Clay" align="right" width="128"/>
<img src="https://raw.githubusercontent.com/djblue/portal/master/resources/splash.svg" alt="Portal" align="right" width="128"/>
<img src="https://www.gnu.org/savannah-checkouts/gnu/emacs/images/emacs.png" alt="Emacs" align="right" width="128"/>

Emacs bindings for the [kind-portal](https://github.com/scicloj/kind-portal) adapter of Clojure [Kindly](https://scicloj.github.io/kindly/) visualizations to the [Portal](https://github.com/djblue/portal) tool

## Usage

Using [use-package](https://github.com/jwiegley/use-package), you may load the package as follows:

```elisp
(use-package kind-portal
  :straight (kind-portal
             :type git
             :host github
             :repo "scicloj/kind-portal.el"))
```

The package offers the following functions, that you may wish to create keybindings for:
|name|function|
|--|--|
|`kind-portal/open-if-needed`|Open the Portal view if you haven't yet.|
|`kind-portal/send-last-sexp`|Submit the Clojure form in last s-expression to Portal, adapted for Kindly|
|`kind-portal/send-defun-at-point`|Submit the Clojure form at the [defun-at-point](https://www.emacswiki.org/emacs/ThingAtPoint) to Portal, adapted for Kindly|
