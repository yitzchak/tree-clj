(asdf:defsystem #:tree-clj
  :description "A Common Lisp Jupyter interface to ipytree."
  :author "Tarn W. Burton"
  :license "MIT"
  :depends-on
    (:common-lisp-jupyter)
  :components
    ((:module lisp
      :serial t
      :components
        ((:file "packages")
         (:file "version")
         (:file "tree"))))
  . #+asdf3
      (:version "0.1"
       :homepage "https://github.com/yitzchak/tree-clj/"
       :bug-tracker "https://github.com/yitzchak/tree-clj/issues")
    #-asdf3 ())


#+asdf3.1
  (asdf:register-system-packages "tree-clj"
                                 '(:tree))


