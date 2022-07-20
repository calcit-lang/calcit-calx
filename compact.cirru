
{} (:package |calx)
  :configs $ {} (:init-fn |calx.test/main!) (:reload-fn |calx.test/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |calx.core $ {}
      :defs $ {}
        |run-vm $ quote
          defn run-vm (code args)
            &call-dylib-edn (get-dylib-path "\"/dylibs/libcalcit_calx") "\"run_vm" code args
      :ns $ quote
        ns calx.core $ :require
          calx.$meta :refer $ calcit-dirname
          calx.util :refer $ get-dylib-path
    |calx.test $ {}
      :defs $ {}
        |main! $ quote
          defn main! () $ run-tests
        |reload! $ quote
          defn reload! $
        |run-tests $ quote
          defn run-tests () (println "\"%%%% test for lib") (println calcit-filename calcit-dirname)
            println $ run-vm
              cirru-quote $ 
                fn main () (const |demo) (echo)
              []
            println $ run-vm
              cirru-quote $ 
                fn main
                    $a f64
                    $b f64
                    , -> f64
                  local.get $a
                  echo
                  local.get $b
                  echo
                  const 3.
              [] 1 2
      :ns $ quote
        ns calx.test $ :require
          calx.core :refer $ run-vm
          calx.$meta :refer $ calcit-dirname calcit-filename
    |calx.util $ {}
      :defs $ {}
        |get-dylib-ext $ quote
          defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |get-dylib-path $ quote
          defn get-dylib-path (p)
            str (or-current-path calcit-dirname) p $ get-dylib-ext
        |or-current-path $ quote
          defn or-current-path (p)
            if (blank? p) "\"." p
      :ns $ quote
        ns calx.util $ :require
          calx.$meta :refer $ calcit-dirname calcit-filename
