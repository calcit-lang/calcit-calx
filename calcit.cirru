
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |calx)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'calx.test/main!) (:mode :native) (:reload-fn 'calx.test/reload!)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    |calx.core $ %{} 'FileEntry
      :defs $ {}
        |run-vm $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-vm (code args)
              &call-dylib-edn (get-dylib-path |/dylibs/libcalcit_calx) |run_vm code args
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns calx.core $ :require
            calx.$meta :refer $ calcit-dirname
            calx.util :refer $ get-dylib-path
    |calx.test $ %{} 'FileEntry
      :defs $ {}
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () $ run-tests
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! $
          :examples $ []
          :schema $ :: 'Dynamic
        |run-tests $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (println "|%%%% test for lib") (println calcit-filename calcit-dirname)
              println $ run-vm
                cirru-quote $
                  fn main () (const |demo) (echo)
                []
              println $ run-vm
                cirru-quote $
                  fn main
                    ($a f64) ($b f64) -> f64
                    local.get $a
                    echo
                    local.get $b
                    echo
                    const 3.
                [] 1 2
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns calx.test $ :require
            calx.core :refer $ run-vm
            calx.$meta :refer $ calcit-dirname calcit-filename
    |calx.util $ %{} 'FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) |.so (:macos |.dylib) (:windows |.dll)
          :examples $ []
          :schema $ :: 'Dynamic
        |get-dylib-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-dylib-path (p)
              str (or-current-path calcit-dirname) p $ get-dylib-ext
          :examples $ []
          :schema $ :: 'Dynamic
        |or-current-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) |. p
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns calx.util $ :require
            calx.$meta :refer $ calcit-dirname calcit-filename
