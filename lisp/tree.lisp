(in-package :tree)


(defclass node (jupyter-widgets:widget)
  ((name
     :accessor name
     :initarg :name
     :initform "Node"
     :trait :string)
   (opened
     :accessor opened
     :initarg :opened
     :initform t
     :trait :boolean)
   (disabled
     :accessor disabled
     :initarg :disabled
     :initform nil
     :trait :boolean)
   (selected
     :accessor selected
     :initarg :selected
     :initform nil
     :trait :boolean)
   (show-icon
     :accessor show-icon
     :initarg :show-icon
     :initform nil
     :trait :boolean)
   (open-icon
     :accessor open-icon
     :initarg :open-icon
     :initform "plus"
     :trait :string)
   (open-icon-style
     :accessor open-icon-style
     :initarg :open-icon-style
     :initform "default"
     :trait :string)
   (close-icon
     :accessor close-icon
     :initarg :close-icon
     :initform "minus"
     :trait :string)
   (close-icon-style
     :accessor close-icon-style
     :initarg :close-icon-style
     :initform "default"
     :trait :string)
   (nodes
     :accessor nodes
     :initarg :nodes
     :initform nil
     :trait :widget-list)
   (%id
     :accessor id
     :initarg :id
     :initform (jupyter:make-uuid)
     :trait :string))
  (:metaclass jupyter-widgets:trait-metaclass)
  (:default-initargs
    :%model-name "NodeModel"
    :%model-module +module-name+
    :%model-module-version +module-version+
    :%view-name "NodeView"
    :%view-module +module-name+
    :%view-module-version +module-version+))


(defclass tree (jupyter-widgets:dom-widget)
  ((nodes
     :accessor nodes
     :initarg :nodes
     :initform nil
     :trait :widget-list)
   (multiple-selection
     :accessor multiple-selection
     :initarg :multiple-selection
     :initform t
     :trait :boolean)
   (animation
     :accessor animation
     :initarg :animation
     :initform 200
     :trait :int)
   (selected-nodes
     :accessor selected-nodes
     :initarg :selected-nodes
     :initform nil
     :trait :widget-list)
   (%id
     :accessor id
     :initarg :id
     :initform "#"
     :trait :string))
  (:metaclass jupyter-widgets:trait-metaclass)
  (:default-initargs
    :%model-name "TreeModel"
    :%model-module +module-name+
    :%model-module-version +module-version+
    :%view-name "TreeView"
    :%view-module +module-name+
    :%view-module-version +module-version+))
