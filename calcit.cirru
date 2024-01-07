
{} (:package |calx)
  :configs $ {} (:init-fn |calx.test/main!) (:port 6001) (:reload-fn |calx.test/reload!) (:version |0.0.2)
    :modules $ []
  :entries $ {}
  :files $ {}
    |calx.core $ %{} :FileEntry
      :defs $ {}
        |run-vm $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630219258753) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1630219258753) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1658130520711) (:by |u0) (:text |run-vm)
              |r $ %{} :Expr (:at 1630219268038) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1658297676958) (:by |u0) (:text |code)
                  |b $ %{} :Leaf (:at 1658297668962) (:by |u0) (:text |args)
              |v $ %{} :Expr (:at 1630219268038) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1633253263271) (:by |u0) (:text |&call-dylib-edn)
                  |b $ %{} :Expr (:at 1634804189975) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1634804196083) (:by |u0) (:text |get-dylib-path)
                      |j $ %{} :Leaf (:at 1658130708933) (:by |u0) (:text "|\"/dylibs/libcalcit_calx")
                  |r $ %{} :Leaf (:at 1658130551820) (:by |u0) (:text "|\"run_vm")
                  |v $ %{} :Leaf (:at 1658297679976) (:by |u0) (:text |code)
                  |w $ %{} :Leaf (:at 1658297671278) (:by |u0) (:text |args)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1630171366222) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1630171366222) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1630171366222) (:by |u0) (:text |calx.core)
            |r $ %{} :Expr (:at 1630175118985) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1630175119637) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1630175120856) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634703660055) (:by |u0) (:text |calx.$meta)
                    |j $ %{} :Leaf (:at 1630175127717) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1630175128076) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630175130627) (:by |u0) (:text |calcit-dirname)
                |r $ %{} :Expr (:at 1633181140100) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634703662332) (:by |u0) (:text |calx.util)
                    |j $ %{} :Leaf (:at 1633181140100) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1633181140100) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1634804181370) (:by |u0) (:text |get-dylib-path)
    |calx.test $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633149996242) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1633149996242) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633149996242) (:by |u0) (:text |main!)
              |r $ %{} :Expr (:at 1633149996242) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1633150002066) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1633150004371) (:by |u0) (:text |run-tests)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633149998862) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1633149998862) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633149998862) (:by |u0) (:text |reload!)
              |r $ %{} :Expr (:at 1633149998862) (:by |u0)
                :data $ {}
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633150008092) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1633150011172) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633150008092) (:by |u0) (:text |run-tests)
              |r $ %{} :Expr (:at 1633150008092) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1634703837934) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1634703847178) (:by |u0) (:text "|\"%%%% test for lib")
              |x $ %{} :Expr (:at 1634703837934) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |calcit-filename)
                  |r $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |calcit-dirname)
              |y $ %{} :Expr (:at 1634703837934) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |println)
                  |j $ %{} :Expr (:at 1634703837934) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1658130647939) (:by |u0) (:text |run-vm)
                      |j $ %{} :Expr (:at 1658135469379) (:by |u0)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1658162589498) (:by |u0) (:text |cirru-quote)
                          |T $ %{} :Expr (:at 1658130657997) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1658130655824) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1658136479264) (:by |u0) (:text |fn)
                                  |X $ %{} :Leaf (:at 1658134981962) (:by |u0) (:text |main)
                                  |b $ %{} :Expr (:at 1658134982665) (:by |u0)
                                    :data $ {}
                                  |h $ %{} :Expr (:at 1658134983788) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1658134988714) (:by |u0) (:text |const)
                                      |b $ %{} :Leaf (:at 1658163409536) (:by |u0) (:text ||demo)
                                  |l $ %{} :Expr (:at 1658134991676) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1658134992385) (:by |u0) (:text |echo)
                      |n $ %{} :Expr (:at 1658297653494) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1658297654656) (:by |u0) (:text |[])
              |z $ %{} :Expr (:at 1634703837934) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |println)
                  |j $ %{} :Expr (:at 1634703837934) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1658130647939) (:by |u0) (:text |run-vm)
                      |j $ %{} :Expr (:at 1658135469379) (:by |u0)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1658162589498) (:by |u0) (:text |cirru-quote)
                          |T $ %{} :Expr (:at 1658130657997) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1658130655824) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1658136479264) (:by |u0) (:text |fn)
                                  |X $ %{} :Leaf (:at 1658134981962) (:by |u0) (:text |main)
                                  |b $ %{} :Expr (:at 1658134982665) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1658297712222) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1658297710755) (:by |u0) (:text |$a)
                                          |b $ %{} :Leaf (:at 1658297717314) (:by |u0) (:text |f64)
                                      |b $ %{} :Expr (:at 1658297718468) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1658297720214) (:by |u0) (:text |$b)
                                          |b $ %{} :Leaf (:at 1658297722180) (:by |u0) (:text |f64)
                                      |h $ %{} :Leaf (:at 1658297725928) (:by |u0) (:text |->)
                                      |l $ %{} :Leaf (:at 1658297730931) (:by |u0) (:text |f64)
                                  |g $ %{} :Expr (:at 1658297763005) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1658297767220) (:by |u0) (:text |local.get)
                                      |h $ %{} :Leaf (:at 1658297772666) (:by |u0) (:text |$a)
                                  |h $ %{} :Expr (:at 1658297806796) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1658297806796) (:by |u0) (:text |echo)
                                  |i $ %{} :Expr (:at 1658297763005) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1658297767220) (:by |u0) (:text |local.get)
                                      |h $ %{} :Leaf (:at 1658297775428) (:by |u0) (:text |$b)
                                  |o $ %{} :Expr (:at 1658297736706) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1658297737392) (:by |u0) (:text |echo)
                                  |q $ %{} :Expr (:at 1658297741358) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1658297741952) (:by |u0) (:text |const)
                                      |b $ %{} :Leaf (:at 1658297747544) (:by |u0) (:text |3.)
                      |n $ %{} :Expr (:at 1658297653494) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1658297654656) (:by |u0) (:text |[])
                          |b $ %{} :Leaf (:at 1658297707792) (:by |u0) (:text |1)
                          |h $ %{} :Leaf (:at 1658297708212) (:by |u0) (:text |2)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1633149625774) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1633149625774) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1633149625774) (:by |u0) (:text |calx.test)
            |r $ %{} :Expr (:at 1633149974572) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1633149975596) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1634703855566) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634703858564) (:by |u0) (:text |calx.core)
                    |j $ %{} :Leaf (:at 1634703859915) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1634703860100) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1658130644746) (:by |u0) (:text |run-vm)
                |r $ %{} :Expr (:at 1634703941759) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634703941759) (:by |u0) (:text |calx.$meta)
                    |j $ %{} :Leaf (:at 1634703941759) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1634703941759) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1634703941759) (:by |u0) (:text |calcit-dirname)
                        |j $ %{} :Leaf (:at 1634703953240) (:by |u0) (:text |calcit-filename)
    |calx.util $ %{} :FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630231398718) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1630231418304) (:by |u0) (:text |defmacro)
              |j $ %{} :Leaf (:at 1633181058353) (:by |u0) (:text |get-dylib-ext)
              |r $ %{} :Expr (:at 1630231398718) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1630231403270) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630231423910) (:by |u0) (:text |case-default)
                  |b $ %{} :Expr (:at 1630231429893) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630231433951) (:by |u0) (:text |&get-os)
                  |j $ %{} :Leaf (:at 1630231427453) (:by |u0) (:text "|\".so")
                  |r $ %{} :Expr (:at 1630231437150) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630231439152) (:by |u0) (:text |:macos)
                      |j $ %{} :Leaf (:at 1630231447585) (:by |u0) (:text "|\".dylib")
                  |v $ %{} :Expr (:at 1630231448478) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630231449901) (:by |u0) (:text |:windows)
                      |j $ %{} :Leaf (:at 1630231461388) (:by |u0) (:text "|\".dll")
        |get-dylib-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1634804142034) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1634804142034) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1634804142034) (:by |u0) (:text |get-dylib-path)
              |n $ %{} :Expr (:at 1634804146574) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634804230294) (:by |u0) (:text |p)
              |r $ %{} :Expr (:at 1634804145483) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634804145483) (:by |u0) (:text |str)
                  |j $ %{} :Expr (:at 1634804145483) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1634804145483) (:by |u0) (:text |or-current-path)
                      |j $ %{} :Leaf (:at 1634804145483) (:by |u0) (:text |calcit-dirname)
                  |r $ %{} :Leaf (:at 1634804157377) (:by |u0) (:text |p)
                  |v $ %{} :Expr (:at 1634804145483) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1634804145483) (:by |u0) (:text |get-dylib-ext)
        |or-current-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630245582276) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1630245583936) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633181131099) (:by |u0) (:text |or-current-path)
              |r $ %{} :Expr (:at 1630245582276) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630245585364) (:by |u0) (:text |p)
              |v $ %{} :Expr (:at 1630245585942) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630245586336) (:by |u0) (:text |if)
                  |j $ %{} :Expr (:at 1630245586894) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630245614560) (:by |u0) (:text |blank?)
                      |j $ %{} :Leaf (:at 1630245615061) (:by |u0) (:text |p)
                  |r $ %{} :Leaf (:at 1630245616843) (:by |u0) (:text "|\".")
                  |v $ %{} :Leaf (:at 1630245618366) (:by |u0) (:text |p)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1633181044360) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1633181044360) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1633181044360) (:by |u0) (:text |calx.util)
            |r $ %{} :Expr (:at 1634804160546) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1634804161330) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1634804162771) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634804167270) (:by |u0) (:text |calx.$meta)
                    |j $ %{} :Leaf (:at 1634804168120) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1634804168421) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1634804171748) (:by |u0) (:text |calcit-dirname)
                        |j $ %{} :Leaf (:at 1634804175462) (:by |u0) (:text |calcit-filename)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
