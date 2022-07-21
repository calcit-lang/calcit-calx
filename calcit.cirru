
{}
  :configs $ {} (:init-fn |calx.test/main!) (:port 6001) (:reload-fn |calx.test/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :ir $ {} (:package |calx)
    :files $ {}
      |calx.core $ {}
        :configs $ {}
        :defs $ {}
          |run-vm $ {} (:at 1630219258753) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1630219258753) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1658130520711) (:by |u0) (:text |run-vm) (:type :leaf)
              |r $ {} (:at 1630219268038) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1658297676958) (:by |u0) (:text |code) (:type :leaf)
                  |b $ {} (:at 1658297668962) (:by |u0) (:text |args) (:type :leaf)
              |v $ {} (:at 1630219268038) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1633253263271) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |b $ {} (:at 1634804189975) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634804196083) (:by |u0) (:text |get-dylib-path) (:type :leaf)
                      |j $ {} (:at 1658130708933) (:by |u0) (:text "|\"/dylibs/libcalcit_calx") (:type :leaf)
                  |r $ {} (:at 1658130551820) (:by |u0) (:text "|\"run_vm") (:type :leaf)
                  |v $ {} (:at 1658297679976) (:by |u0) (:text |code) (:type :leaf)
                  |w $ {} (:at 1658297671278) (:by |u0) (:text |args) (:type :leaf)
        :ns $ {} (:at 1630171366222) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1630171366222) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1630171366222) (:by |u0) (:text |calx.core) (:type :leaf)
            |r $ {} (:at 1630175118985) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1630175119637) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1630175120856) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634703660055) (:by |u0) (:text |calx.$meta) (:type :leaf)
                    |j $ {} (:at 1630175127717) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1630175128076) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1630175130627) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                |r $ {} (:at 1633181140100) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634703662332) (:by |u0) (:text |calx.util) (:type :leaf)
                    |j $ {} (:at 1633181140100) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1633181140100) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634804181370) (:by |u0) (:text |get-dylib-path) (:type :leaf)
        :proc $ {} (:at 1630171366222) (:by |u0) (:type :expr)
          :data $ {}
      |calx.test $ {}
        :configs $ {}
        :defs $ {}
          |main! $ {} (:at 1633149996242) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1633149996242) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633149996242) (:by |u0) (:text |main!) (:type :leaf)
              |r $ {} (:at 1633149996242) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1633150002066) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1633150004371) (:by |u0) (:text |run-tests) (:type :leaf)
          |reload! $ {} (:at 1633149998862) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1633149998862) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633149998862) (:by |u0) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1633149998862) (:by |u0) (:type :expr)
                :data $ {}
          |run-tests $ {} (:at 1633150008092) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1633150011172) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633150008092) (:by |u0) (:text |run-tests) (:type :leaf)
              |r $ {} (:at 1633150008092) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634703837934) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634703847178) (:by |u0) (:text "|\"%%%% test for lib") (:type :leaf)
              |x $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634703837934) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634703837934) (:by |u0) (:text |calcit-filename) (:type :leaf)
                  |r $ {} (:at 1634703837934) (:by |u0) (:text |calcit-dirname) (:type :leaf)
              |y $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634703837934) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1658130647939) (:by |u0) (:text |run-vm) (:type :leaf)
                      |j $ {} (:at 1658135469379) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1658162589498) (:by |u0) (:text |cirru-quote) (:type :leaf)
                          |T $ {} (:at 1658130657997) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1658130655824) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1658136479264) (:by |u0) (:text |fn) (:type :leaf)
                                  |X $ {} (:at 1658134981962) (:by |u0) (:text |main) (:type :leaf)
                                  |b $ {} (:at 1658134982665) (:by |u0) (:type :expr)
                                    :data $ {}
                                  |h $ {} (:at 1658134983788) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1658134988714) (:by |u0) (:text |const) (:type :leaf)
                                      |b $ {} (:at 1658163409536) (:by |u0) (:text ||demo) (:type :leaf)
                                  |l $ {} (:at 1658134991676) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1658134992385) (:by |u0) (:text |echo) (:type :leaf)
                      |n $ {} (:at 1658297653494) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1658297654656) (:by |u0) (:text |[]) (:type :leaf)
              |z $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634703837934) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634703837934) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1658130647939) (:by |u0) (:text |run-vm) (:type :leaf)
                      |j $ {} (:at 1658135469379) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1658162589498) (:by |u0) (:text |cirru-quote) (:type :leaf)
                          |T $ {} (:at 1658130657997) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1658130655824) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1658136479264) (:by |u0) (:text |fn) (:type :leaf)
                                  |X $ {} (:at 1658134981962) (:by |u0) (:text |main) (:type :leaf)
                                  |b $ {} (:at 1658134982665) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1658297712222) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1658297710755) (:by |u0) (:text |$a) (:type :leaf)
                                          |b $ {} (:at 1658297717314) (:by |u0) (:text |f64) (:type :leaf)
                                      |b $ {} (:at 1658297718468) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1658297720214) (:by |u0) (:text |$b) (:type :leaf)
                                          |b $ {} (:at 1658297722180) (:by |u0) (:text |f64) (:type :leaf)
                                      |h $ {} (:at 1658297725928) (:by |u0) (:text |->) (:type :leaf)
                                      |l $ {} (:at 1658297730931) (:by |u0) (:text |f64) (:type :leaf)
                                  |g $ {} (:at 1658297763005) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1658297767220) (:by |u0) (:text |local.get) (:type :leaf)
                                      |h $ {} (:at 1658297772666) (:by |u0) (:text |$a) (:type :leaf)
                                  |h $ {} (:at 1658297806796) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1658297806796) (:by |u0) (:text |echo) (:type :leaf)
                                  |i $ {} (:at 1658297763005) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1658297767220) (:by |u0) (:text |local.get) (:type :leaf)
                                      |h $ {} (:at 1658297775428) (:by |u0) (:text |$b) (:type :leaf)
                                  |o $ {} (:at 1658297736706) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1658297737392) (:by |u0) (:text |echo) (:type :leaf)
                                  |q $ {} (:at 1658297741358) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1658297741952) (:by |u0) (:text |const) (:type :leaf)
                                      |b $ {} (:at 1658297747544) (:by |u0) (:text |3.) (:type :leaf)
                      |n $ {} (:at 1658297653494) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1658297654656) (:by |u0) (:text |[]) (:type :leaf)
                          |b $ {} (:at 1658297707792) (:by |u0) (:text |1) (:type :leaf)
                          |h $ {} (:at 1658297708212) (:by |u0) (:text |2) (:type :leaf)
        :ns $ {} (:at 1633149625774) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1633149625774) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1633149625774) (:by |u0) (:text |calx.test) (:type :leaf)
            |r $ {} (:at 1633149974572) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1633149975596) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1634703855566) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634703858564) (:by |u0) (:text |calx.core) (:type :leaf)
                    |j $ {} (:at 1634703859915) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634703860100) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1658130644746) (:by |u0) (:text |run-vm) (:type :leaf)
                |r $ {} (:at 1634703941759) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634703941759) (:by |u0) (:text |calx.$meta) (:type :leaf)
                    |j $ {} (:at 1634703941759) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634703941759) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634703941759) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                        |j $ {} (:at 1634703953240) (:by |u0) (:text |calcit-filename) (:type :leaf)
        :proc $ {} (:at 1633149625774) (:by |u0) (:type :expr)
          :data $ {}
      |calx.util $ {}
        :configs $ {}
        :defs $ {}
          |get-dylib-ext $ {} (:at 1630231398718) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1630231418304) (:by |u0) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1633181058353) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
              |r $ {} (:at 1630231398718) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1630231403270) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1630231423910) (:by |u0) (:text |case-default) (:type :leaf)
                  |b $ {} (:at 1630231429893) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1630231433951) (:by |u0) (:text |&get-os) (:type :leaf)
                  |j $ {} (:at 1630231427453) (:by |u0) (:text "|\".so") (:type :leaf)
                  |r $ {} (:at 1630231437150) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1630231439152) (:by |u0) (:text |:macos) (:type :leaf)
                      |j $ {} (:at 1630231447585) (:by |u0) (:text "|\".dylib") (:type :leaf)
                  |v $ {} (:at 1630231448478) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1630231449901) (:by |u0) (:text |:windows) (:type :leaf)
                      |j $ {} (:at 1630231461388) (:by |u0) (:text "|\".dll") (:type :leaf)
          |get-dylib-path $ {} (:at 1634804142034) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634804142034) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634804142034) (:by |u0) (:text |get-dylib-path) (:type :leaf)
              |n $ {} (:at 1634804146574) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634804230294) (:by |u0) (:text |p) (:type :leaf)
              |r $ {} (:at 1634804145483) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634804145483) (:by |u0) (:text |str) (:type :leaf)
                  |j $ {} (:at 1634804145483) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634804145483) (:by |u0) (:text |or-current-path) (:type :leaf)
                      |j $ {} (:at 1634804145483) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                  |r $ {} (:at 1634804157377) (:by |u0) (:text |p) (:type :leaf)
                  |v $ {} (:at 1634804145483) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634804145483) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
          |or-current-path $ {} (:at 1630245582276) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1630245583936) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633181131099) (:by |u0) (:text |or-current-path) (:type :leaf)
              |r $ {} (:at 1630245582276) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1630245585364) (:by |u0) (:text |p) (:type :leaf)
              |v $ {} (:at 1630245585942) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1630245586336) (:by |u0) (:text |if) (:type :leaf)
                  |j $ {} (:at 1630245586894) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1630245614560) (:by |u0) (:text |blank?) (:type :leaf)
                      |j $ {} (:at 1630245615061) (:by |u0) (:text |p) (:type :leaf)
                  |r $ {} (:at 1630245616843) (:by |u0) (:text "|\".") (:type :leaf)
                  |v $ {} (:at 1630245618366) (:by |u0) (:text |p) (:type :leaf)
        :ns $ {} (:at 1633181044360) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1633181044360) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1633181044360) (:by |u0) (:text |calx.util) (:type :leaf)
            |r $ {} (:at 1634804160546) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1634804161330) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1634804162771) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634804167270) (:by |u0) (:text |calx.$meta) (:type :leaf)
                    |j $ {} (:at 1634804168120) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634804168421) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634804171748) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                        |j $ {} (:at 1634804175462) (:by |u0) (:text |calcit-filename) (:type :leaf)
        :proc $ {} (:at 1633181044360) (:by |u0) (:type :expr)
          :data $ {}
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
