<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1378741479548" ID="ID_1382970284" MODIFIED="1378804389370" TEXT="Multithreading">
<node CREATED="1378745237667" FOLDED="true" ID="ID_635468105" MODIFIED="1378804388902" POSITION="right" TEXT="sharing objects">
<node CREATED="1378796033539" FOLDED="true" ID="ID_1196614517" MODIFIED="1378804137340" TEXT="unsafe publishing">
<node CREATED="1378745084254" FOLDED="true" ID="ID_1020567726" MODIFIED="1378796913515" TEXT="mutable, and without snychronization">
<node CREATED="1378745110691" ID="ID_1065371598" MODIFIED="1378745122246" TEXT="when  a class has an integer instance variable"/>
<node CREATED="1378745122647" ID="ID_1779465201" MODIFIED="1378745134828" TEXT="and provides getters and setters"/>
<node CREATED="1378796093990" ID="ID_448046145" MODIFIED="1378796104849" TEXT="you could change the value then"/>
</node>
<node CREATED="1378745758154" FOLDED="true" ID="ID_1409404373" MODIFIED="1378796916733" TEXT="making an instance public">
<node CREATED="1378745778996" ID="ID_984358241" MODIFIED="1378745785953" TEXT="just about anyone could update it"/>
<node CREATED="1378745786309" ID="ID_1867073625" MODIFIED="1378745815360" TEXT="impossible to ensure thread-safety"/>
</node>
<node CREATED="1378745842352" FOLDED="true" ID="ID_821632054" MODIFIED="1378796924358" TEXT="allowing internal mutable state to escape">
<node CREATED="1378745872453" ID="ID_1728796338" MODIFIED="1378745884673" TEXT="a class has a private states[]"/>
<node CREATED="1378745886323" ID="ID_1933205784" MODIFIED="1378745898623" TEXT="gives a public getStates() method"/>
<node CREATED="1378745898908" ID="ID_1059333017" MODIFIED="1378745914206" TEXT="no setter that can chage the state array"/>
<node CREATED="1378745914722" ID="ID_720604618" MODIFIED="1378745929103" TEXT="but with the states reference,"/>
<node CREATED="1378745930198" ID="ID_314315114" MODIFIED="1378745936857" TEXT="the internal objects could be changed !!"/>
</node>
<node CREATED="1378747180152" FOLDED="true" ID="ID_1055322036" MODIFIED="1378796934092" TEXT="lack of thread confinement">
<node CREATED="1378747234795" ID="ID_1627443550" MODIFIED="1378747239819" TEXT="for instance variables"/>
<node CREATED="1378747240121" ID="ID_1726465054" MODIFIED="1378747258988" TEXT="for local variables let to escape &#xa;via return value"/>
</node>
<node CREATED="1378746078149" FOLDED="true" ID="ID_785014533" MODIFIED="1378796941217" TEXT="implicitly allowing the this reference to escape">
<icon BUILTIN="help"/>
<node CREATED="1378746230264" ID="ID_1544098160" MODIFIED="1378746349445" TEXT="Returning this from a non-private, overridable method  that is invoked from &#xa;the constructor of a class whose object is being constructed."/>
<node CREATED="1378746374503" ID="ID_1895369267" MODIFIED="1378746435604" TEXT="Returning this from a nonprivate method of a mutable class, which allows the &#xa;caller to manipulate the object&apos;s state indirectly. This commonly occurs in&#xa; method-chaining implementations"/>
<node CREATED="1378746452000" ID="ID_340156149" MODIFIED="1378746462155" TEXT="Passing this as an argument to an alien method invoked from the &#xa;constructor of a class whose object is being constructed."/>
<node CREATED="1378746472696" ID="ID_1509722707" MODIFIED="1378746480642" TEXT="Using inner classes. An inner class implicitly holds a reference &#xa;to the instance of its outer class unless the inner class is declared static"/>
<node CREATED="1378746496750" ID="ID_217874020" MODIFIED="1378746504093" TEXT="Publishing by assigning this to a public static variable&#xa; from the constructor of a class whose object is being constructed."/>
<node CREATED="1378746518600" ID="ID_315581479" MODIFIED="1378746526913" TEXT="Throwing an exception from a constructor. Doing so may cause code to be &#xa;vulnerable to a finalizer attack"/>
<node CREATED="1378746553912" ID="ID_504941885" MODIFIED="1378746572263" TEXT="Passing internal object state to an alien method. &#xa;This enables the method to retrieve the this reference&#xa; of the internal member object."/>
</node>
<node CREATED="1378801464248" ID="ID_1373157799" MODIFIED="1378801485763">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unsafe publishing has the same effect as&#160;<br />unsynchronized code
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1378796119989" FOLDED="true" ID="ID_882954407" MODIFIED="1378804388480" TEXT="safe publishing">
<node CREATED="1378796195332" ID="ID_1133735699" MODIFIED="1378796294841" TEXT="use adequete synchronization before sharing"/>
<node CREATED="1378796203129" ID="ID_1844044311" MODIFIED="1378796208536" TEXT="use immutable objects"/>
<node CREATED="1378796212240" ID="ID_89736601" MODIFIED="1378796222725" TEXT="use threadlocal  (thread confinement)"/>
<node CREATED="1378796226053" ID="ID_1999958651" MODIFIED="1378796241383" TEXT="use volatile property"/>
<node CREATED="1378796241930" ID="ID_1633173367" MODIFIED="1378796249977" TEXT="use volatile, immutable object"/>
<node CREATED="1378796269276" ID="ID_605794627" MODIFIED="1378796897578" TEXT="don&apos;t allow reference to escape"/>
<node CREATED="1378796303748" FOLDED="true" ID="ID_619686805" MODIFIED="1378804387683" TEXT="examples">
<node CREATED="1378745143481" FOLDED="true" ID="ID_1813642461" MODIFIED="1378796485935" TEXT="Thread safe mutable integer">
<node CREATED="1378745150502" ID="ID_1141633529" MODIFIED="1378796481685" TEXT="if those getters and setters are synchronized"/>
</node>
<node CREATED="1378745323806" FOLDED="true" ID="ID_648801736" MODIFIED="1378746311990" TEXT="volatile fields for simple flags">
<node CREATED="1378745332215" ID="ID_1641174737" MODIFIED="1378745339440" TEXT="perfect for simple flags"/>
<node CREATED="1378745346616" ID="ID_1588959855" MODIFIED="1378745357508" TEXT="while(!flag){count some sheep}"/>
<node CREATED="1378745359213" ID="ID_1231871443" MODIFIED="1378745374012" TEXT="while(!cancelled){do some work}"/>
</node>
<node CREATED="1378746962704" ID="ID_303572969" MODIFIED="1378747010076" TEXT="using factory method to prevent the this ref from&#xa; escaping during construction">
<icon BUILTIN="help"/>
</node>
<node CREATED="1378747294993" ID="ID_1783064899" MODIFIED="1378747304011" TEXT="using ThreadLocal for thread confinement"/>
<node CREATED="1378794925334" FOLDED="true" ID="ID_1817141900" MODIFIED="1378802490601" TEXT="creating Immutable objects correctly">
<node CREATED="1378795261703" FOLDED="true" ID="ID_1971620816" MODIFIED="1378795272938" TEXT="jcip guidelines">
<node CREATED="1378794941474" ID="ID_2676624" MODIFIED="1378794971145" TEXT="if the property is Immutable, just set it"/>
<node CREATED="1378794971520" ID="ID_1691078524" MODIFIED="1378794980816" TEXT="no problems if the property is immutable"/>
<node CREATED="1378794982785" ID="ID_1299323170" MODIFIED="1378794989378" TEXT="eg: String, Integer etc"/>
<node CREATED="1378794989753" ID="ID_1533037028" MODIFIED="1378794997269" TEXT="if the property is not Immutable"/>
<node CREATED="1378794998253" ID="ID_99311769" MODIFIED="1378795016002" TEXT="while setting, create a copy of the values"/>
<node CREATED="1378795016377" ID="ID_7177979" MODIFIED="1378795023720" TEXT="set this copy in the fields"/>
<node CREATED="1378795025330" ID="ID_1012354078" MODIFIED="1378795029595" TEXT="also make it final"/>
<node CREATED="1378795031517" ID="ID_1906447870" MODIFIED="1378795062562">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      thus the outside classes don't
    </p>
    <p>
      have access to it via any reference
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1378795063859" ID="ID_730810714" MODIFIED="1378795094998">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      any inner class or method cannot modify<br />reference since it is final
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1378795139590" ID="ID_946160215" MODIFIED="1378795155590">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      still have to make sure internal methods<br />do not modify it's state
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1378795156543" ID="ID_633967305" MODIFIED="1378795168950" TEXT="also for getters, create a copy and give it"/>
<node CREATED="1378795169419" ID="ID_1026219675" MODIFIED="1378795185232">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      the actual values should
    </p>
    <p>
      never ever be exposed
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1378795273829" FOLDED="true" ID="ID_1536505860" MODIFIED="1378795365957" TEXT="oracle guidelines">
<node CREATED="1378795282001" ID="ID_1914625550" MODIFIED="1378795286220" TEXT="don&apos;t provide setters"/>
<node CREATED="1378795286517" ID="ID_1080129138" MODIFIED="1378795297861" TEXT="make all fields final and private"/>
<node CREATED="1378795305736" FOLDED="true" ID="ID_1661385689" MODIFIED="1378795339269" TEXT="don&apos;t allow subclasses to override methods">
<node CREATED="1378795321940" ID="ID_416248029" MODIFIED="1378795325753" TEXT="simplest way"/>
<node CREATED="1378795326050" ID="ID_1756339912" MODIFIED="1378795329081" TEXT="make the class final"/>
<node CREATED="1378795330503" ID="ID_1117172652" MODIFIED="1378795334362" TEXT="so no subclassing at all"/>
<node CREATED="1378795334644" ID="ID_1239250793" MODIFIED="1378795337456" TEXT="eg: String"/>
</node>
</node>
<node CREATED="1378795366911" ID="ID_1995872178" MODIFIED="1378795371786" TEXT="create copies while setting"/>
<node CREATED="1378795372020" ID="ID_1443823807" MODIFIED="1378795381083" TEXT="create copies while sharing"/>
<node CREATED="1378802453649" ID="ID_1387764110" MODIFIED="1378802487039">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      use primitive variables for state<br />and provide only constructors
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1378795974353" FOLDED="true" ID="ID_678398564" MODIFIED="1378796736486" TEXT="volatile immutable object as cache ?">
<node CREATED="1378795991822" ID="ID_1519394840" MODIFIED="1378795996759" TEXT="yeah, that works too !"/>
</node>
</node>
</node>
<node CREATED="1378797455604" ID="ID_1757803932" MODIFIED="1378797466901" TEXT="class at a risk of failure if not properly initialized"/>
</node>
<node CREATED="1378806735710" FOLDED="true" ID="ID_1178600713" MODIFIED="1378812755093" POSITION="right" TEXT="producer-consumer">
<node CREATED="1378806740100" FOLDED="true" ID="ID_1788892362" MODIFIED="1378812691203" TEXT="BlockingQueue is very useful">
<node CREATED="1378806753288" ID="ID_1558937894" MODIFIED="1378806762694" TEXT="eg: FileCrawler, FileIndexer"/>
<node CREATED="1378806763928" ID="ID_1320605180" MODIFIED="1378806796209" TEXT="One FileCrawler is created with a blockingQueue injected into it"/>
<node CREATED="1378806796631" ID="ID_1368146401" MODIFIED="1378806815021" TEXT="it crawls for files and places the file location in the blockingQueue"/>
<node CREATED="1378806815381" ID="ID_1701382724" MODIFIED="1378806824193" TEXT="many FileIndexer threads are created"/>
<node CREATED="1378806824615" ID="ID_1605797741" MODIFIED="1378806862193" TEXT="they look at the blocking queue, and if anything is present"/>
<node CREATED="1378806862630" ID="ID_858499359" MODIFIED="1378806886958" TEXT="they fetch and process it"/>
</node>
<node CREATED="1378812692125" FOLDED="true" ID="ID_183546388" MODIFIED="1378812754765" TEXT="wait notify mechanism">
<node CREATED="1378812700859" ID="ID_1674803893" MODIFIED="1378812711766" TEXT="producer locks and waits if size is full"/>
<node CREATED="1378812718937" ID="ID_109082843" MODIFIED="1378812726500" TEXT="consumer locks and waits if it is empty"/>
<node CREATED="1378812727000" ID="ID_1971076221" MODIFIED="1378812735968" TEXT="producer notifies after adding"/>
<node CREATED="1378812736265" ID="ID_854490407" MODIFIED="1378812742234" TEXT="consumer notifies after consuming"/>
</node>
</node>
<node CREATED="1378803188514" FOLDED="true" ID="ID_1600944630" MODIFIED="1378806734069" POSITION="right" TEXT="delegating thread-safety">
<node CREATED="1378803194577" FOLDED="true" ID="ID_1357197094" MODIFIED="1378806541603" TEXT="delegate thread-safety to concurrent hash map">
<node CREATED="1378803266685" FOLDED="true" ID="ID_394977624" MODIFIED="1378806540869" TEXT="for any modifications use concurrent hash map">
<node CREATED="1378806525431" ID="ID_1011194601" MODIFIED="1378806529728" TEXT="putIfAbsent"/>
<node CREATED="1378806530384" ID="ID_1534058023" MODIFIED="1378806535494" TEXT="remove ( if present)"/>
<node CREATED="1378806535869" ID="ID_421330948" MODIFIED="1378806539916" TEXT="replace (if present)"/>
</node>
<node CREATED="1378803276529" ID="ID_1153651851" MODIFIED="1378803287794" TEXT="for sharing it outside, use a unmodifiable map view"/>
</node>
<node CREATED="1378803362858" FOLDED="true" ID="ID_435980843" MODIFIED="1378803673304" TEXT="delegating thread-safety to multiple underlying states">
<node CREATED="1378803380016" ID="ID_1177032992" MODIFIED="1378803387564" TEXT="use CopyOnWriteArrayList"/>
</node>
<node CREATED="1378804476073" ID="ID_1833444289" MODIFIED="1378804504182" TEXT="race conditions can occur at put()"/>
<node CREATED="1378804504479" ID="ID_37329664" MODIFIED="1378804514619" TEXT="use collections with putIfAbsent() method"/>
<node CREATED="1378804546791" ID="ID_1388930747" MODIFIED="1378804567306" TEXT="ideas: extend vector and add a synchronized putIfAbsent() method"/>
<node CREATED="1378804639009" ID="ID_151158237" MODIFIED="1378804649962" TEXT="use Collections.synchronizedList(list)"/>
<node CREATED="1378804933630" FOLDED="true" ID="ID_1694965039" MODIFIED="1378805279891" TEXT="thread safe vs non-thread safe putIfAbsent()">
<icon BUILTIN="help"/>
<node CREATED="1378805007613" ID="ID_1904040196" MODIFIED="1378805016535" TEXT="don&apos;t lock on &apos;this&apos;"/>
<node CREATED="1378805033191" ID="ID_518219534" MODIFIED="1378805259266" TEXT="get a synchronized list"/>
<node CREATED="1378805259657" ID="ID_1062638790" MODIFIED="1378805268594" TEXT="it only provides single operation synchronization"/>
<node CREATED="1378805017082" ID="ID_654797583" MODIFIED="1378805027113" TEXT="lock on the list object itself"/>
<node CREATED="1378805272251" ID="ID_226037239" MODIFIED="1378805278750" TEXT="implement putIfAbsent()"/>
</node>
</node>
<node CREATED="1378796490123" FOLDED="true" ID="ID_1773442776" MODIFIED="1378804964301" POSITION="right" TEXT="synchronization">
<node CREATED="1378796497404" FOLDED="true" ID="ID_1065321844" MODIFIED="1378802204074" TEXT="if 10 threads read, and 1 thread writes">
<node CREATED="1378796512342" ID="ID_1496567550" MODIFIED="1378796613609" TEXT="should both read and write be synchronized ?"/>
<node CREATED="1378796519702" ID="ID_264109695" MODIFIED="1378796525436" TEXT="Yes !!!"/>
<node CREATED="1378796530749" ID="ID_214647799" MODIFIED="1378796604546" TEXT="the read method does need synchronization"/>
</node>
</node>
<node CREATED="1378797477918" FOLDED="true" ID="ID_178760815" MODIFIED="1378804142871" POSITION="right" TEXT="composing objects">
<node CREATED="1378797613029" FOLDED="true" ID="ID_1358238065" MODIFIED="1378802200808" TEXT="thread safety by using monitor pattern (synchronization)">
<node CREATED="1378797627966" ID="ID_1259438285" MODIFIED="1378797632482" TEXT="exclusive access to threads"/>
<node CREATED="1378797636560" ID="ID_297587637" MODIFIED="1378797648451" TEXT="both read / write are synchronized"/>
</node>
<node CREATED="1378797790467" FOLDED="true" ID="ID_1918527967" MODIFIED="1378802199371" TEXT="thread confinement">
<node CREATED="1378797794686" ID="ID_1277427696" MODIFIED="1378797810545" TEXT="have a hashset that could be updated / read by multiple threads ?"/>
<node CREATED="1378797818076" ID="ID_689582507" MODIFIED="1378797828904" TEXT="create a new class with this hashset as an instance"/>
<node CREATED="1378797829545" ID="ID_1357057836" MODIFIED="1378797842295" TEXT="make this field private final"/>
<node CREATED="1378797842639" ID="ID_398990729" MODIFIED="1378797875622" TEXT="have synchronized methods that add / does a contains-check"/>
</node>
<node CREATED="1378798847581" FOLDED="true" ID="ID_398812819" MODIFIED="1378802196246" TEXT="gurarding a state with a private lock">
<node CREATED="1378801073866" ID="ID_1500505529" MODIFIED="1378801079850" TEXT="create a private instance variable"/>
<node CREATED="1378801080288" ID="ID_1306322556" MODIFIED="1378801098397" TEXT="use a synchronization block with this object"/>
</node>
<node CREATED="1378801626430" FOLDED="true" ID="ID_434666784" MODIFIED="1378802194199" TEXT="monitors for a vehicle tracker">
<node CREATED="1378801644586" ID="ID_106986313" MODIFIED="1378801655242" TEXT="Guard the state by &quot;this&quot;"/>
<node CREATED="1378801659070" ID="ID_1542341943" MODIFIED="1378801678632" TEXT="synchronize all getters and setters"/>
<node CREATED="1378801679069" ID="ID_1517422546" MODIFIED="1378801710444">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      return a deepCopy or an&#160;unmodifiable view<br />from the getters
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1378745205185" FOLDED="true" ID="ID_395641659" MODIFIED="1378804263512" POSITION="right" TEXT="thread safety">
<node CREATED="1378804158934" FOLDED="true" ID="ID_1159457637" MODIFIED="1378804263105" TEXT="wrong">
<node CREATED="1378744272749" FOLDED="true" ID="ID_366820428" MODIFIED="1378804262402" TEXT="Inadequte atomicity">
<node CREATED="1378744329024" ID="ID_377494840" MODIFIED="1378744343791" TEXT="A servlet has two AtomicReference instance variables"/>
<node CREATED="1378744345350" ID="ID_1916958776" MODIFIED="1378744361138" TEXT="in a method call, sets them both to new values"/>
<node CREATED="1378744361871" ID="ID_708923322" MODIFIED="1378744375313" TEXT="this doesn&apos;t guarantee thread safety"/>
<node CREATED="1378744375641" ID="ID_762161011" MODIFIED="1378744390631" TEXT="each operation is atomic"/>
<node CREATED="1378744391032" ID="ID_991675191" MODIFIED="1378744402557" TEXT="but the two operations as a whole is not"/>
<node CREATED="1378804223887" ID="ID_542789561" MODIFIED="1378804243465" TEXT="eg: two atomic integers - lower, higher"/>
<node CREATED="1378804243840" ID="ID_1483539305" MODIFIED="1378804260027" TEXT="maintaining an invariant"/>
</node>
<node CREATED="1378744451769" FOLDED="true" ID="ID_512416954" MODIFIED="1378802185043" TEXT="Synchronizing correctly but withholding locks throughout the method">
<node CREATED="1378744494156" ID="ID_316763558" MODIFIED="1378744801962" TEXT="performance is affected"/>
<node CREATED="1378744501754" ID="ID_1127567520" MODIFIED="1378744530270" TEXT="use synch block and synch on small section"/>
<node CREATED="1378744530805" ID="ID_1534459" MODIFIED="1378744551001" TEXT="or refactor the synch reqd part to a separate small method"/>
<node CREATED="1378744553569" ID="ID_1754053645" MODIFIED="1378744557865" TEXT="and synch it"/>
</node>
</node>
<node CREATED="1378804160996" ID="ID_152805791" MODIFIED="1378804162371" TEXT="correct">
<node CREATED="1378743516866" FOLDED="true" ID="ID_1119978324" MODIFIED="1378804151918" TEXT="Using Atomic variables to do simple operations">
<node CREATED="1378743532876" ID="ID_1187478288" MODIFIED="1378743568154" TEXT="Use AtomicLong count = new AtomicLong(0)"/>
<node CREATED="1378743568576" ID="ID_566043156" MODIFIED="1378743584070" TEXT="count.incrementAndGet()"/>
</node>
<node CREATED="1378743268220" FOLDED="true" ID="ID_253234915" MODIFIED="1378802189730" TEXT="locking with correct order to avoid deadlocks">
<node CREATED="1378741634516" ID="ID_486361820" MODIFIED="1378802188590" TEXT="Eg: AccountService">
<node CREATED="1378741645166" ID="ID_1773206032" MODIFIED="1378741756804" TEXT="debit(Account)"/>
<node CREATED="1378741658802" ID="ID_633615825" MODIFIED="1378741663839" TEXT="credit(Account)"/>
<node CREATED="1378741665328" ID="ID_637688509" MODIFIED="1378741676601" TEXT="transfer(Account,Account)"/>
<node CREATED="1378741763466" FOLDED="true" ID="ID_49166280" MODIFIED="1378743636182" TEXT="how to ensure proper&#xa;transfer ?&#xa;">
<node CREATED="1378741839511" ID="ID_1845828714" MODIFIED="1378741847347" TEXT="lock both the accounts"/>
<node CREATED="1378741848080" ID="ID_1077183956" MODIFIED="1378741858272" TEXT="however: say there are two threads"/>
<node CREATED="1378741858842" ID="ID_516517388" MODIFIED="1378741867710" TEXT="T1: tries transfering from A to B"/>
<node CREATED="1378741868120" ID="ID_1120370798" MODIFIED="1378741874977" TEXT="T2: tries transfering from B to A"/>
<node CREATED="1378741875422" ID="ID_290827201" MODIFIED="1378741882107" TEXT="T1 has acquired lock on A"/>
<node CREATED="1378741882858" ID="ID_421413006" MODIFIED="1378741889009" TEXT="T2 has acquired lock on B"/>
<node CREATED="1378741889394" ID="ID_963104484" MODIFIED="1378741892522" TEXT="Deadlock occurs"/>
<node CREATED="1378741892981" ID="ID_935575049" MODIFIED="1378741905958" TEXT="So: Make Account implement Comparable"/>
<node CREATED="1378741906402" ID="ID_952981870" MODIFIED="1378741916886" TEXT="Always acquire lock in the same order"/>
<node CREATED="1378741917312" ID="ID_1653249454" MODIFIED="1378741935924" TEXT="A,then B (regardless of who transfers to whom)"/>
<node CREATED="1378743618210" ID="ID_1612494067" MODIFIED="1378743624504" TEXT="avoids deadlock possibilities"/>
</node>
</node>
</node>
<node CREATED="1378743213791" FOLDED="true" ID="ID_1065152911" MODIFIED="1378802177793" TEXT="Synchronizing to avoid race-conditions">
<node CREATED="1378743047541" ID="ID_1976999953" MODIFIED="1378743643579" TEXT="Non thread-safe unique sequence generator">
<node CREATED="1378743069548" ID="ID_1412740123" MODIFIED="1378743090699" TEXT="having a plain instance variable"/>
<node CREATED="1378743091110" ID="ID_356681805" MODIFIED="1378743096345" TEXT="multiple threads incrementing it"/>
<node CREATED="1378743097964" ID="ID_1722398538" MODIFIED="1378743119908" TEXT="Race conditions can occur"/>
<node CREATED="1378743120318" ID="ID_787377710" MODIFIED="1378743130710" TEXT="synchronize the method"/>
<node CREATED="1378743131133" ID="ID_450312096" MODIFIED="1378743145106" TEXT="so only one thread accesses at any time"/>
<node CREATED="1378743145587" ID="ID_597976636" MODIFIED="1378743153384" TEXT="and the changes are flushed"/>
<node CREATED="1378743156744" ID="ID_424425588" MODIFIED="1378743164052" TEXT="or use a volatile variable"/>
</node>
<node CREATED="1378743356612" ID="ID_325426334" MODIFIED="1378743365336" TEXT="Non thread-safe counter in a servlet"/>
<node CREATED="1378743423466" FOLDED="true" ID="ID_1941271254" MODIFIED="1378743499987" TEXT="Lazy initialization race condition">
<node CREATED="1378743439744" ID="ID_12156025" MODIFIED="1378743450512" TEXT="a thread inspects that the instance is not present"/>
<node CREATED="1378743451125" ID="ID_74003743" MODIFIED="1378743458759" TEXT="fetches the expensive object"/>
<node CREATED="1378743459596" ID="ID_1975524375" MODIFIED="1378743479659" TEXT="not knowing that the other thread is fetching the expensive object"/>
<node CREATED="1378743480105" ID="ID_1477325647" MODIFIED="1378743484591" TEXT="another thread does the same"/>
<node CREATED="1378743485893" ID="ID_89339665" MODIFIED="1378743496541" TEXT="dual initialization !!"/>
</node>
</node>
<node CREATED="1378743296928" FOLDED="true" ID="ID_465356666" MODIFIED="1378802171559" TEXT="avoiding instance variables (stateless) for thread safety">
<node CREATED="1378743318999" ID="ID_1979760092" MODIFIED="1378743324405" TEXT="stateless servlet"/>
</node>
</node>
</node>
<node CREATED="1378801313379" FOLDED="true" ID="ID_1855890364" MODIFIED="1378806510041" POSITION="right" TEXT="Programming Practises">
<node CREATED="1378801324801" ID="ID_602951081" MODIFIED="1378801340425" TEXT="explicitly state how you are Guarding a state"/>
<node CREATED="1378801340831" ID="ID_104199511" MODIFIED="1378801366643" TEXT="annotate all instance variables with @GuardedBy"/>
</node>
<node CREATED="1378806055905" FOLDED="true" ID="ID_706277515" MODIFIED="1378812857420" POSITION="right" TEXT="Building Blocks">
<node CREATED="1378806152560" FOLDED="true" ID="ID_436071564" MODIFIED="1378806279106">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      compound operations on vector may<br />lead to confusing results
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1378806177216" ID="ID_799370701" MODIFIED="1378806191826" TEXT="you have a class with a vector"/>
<node CREATED="1378806192185" ID="ID_1025573252" MODIFIED="1378806202326" TEXT="you have implemented deleteLast"/>
<node CREATED="1378806203513" ID="ID_1603339817" MODIFIED="1378806211169" TEXT="for which you retrieve the last element"/>
<node CREATED="1378806211435" ID="ID_430795934" MODIFIED="1378806217497" TEXT="and then invoke remove with it"/>
<node CREATED="1378806218325" ID="ID_1855853303" MODIFIED="1378806224825" TEXT="two threads invoking delete"/>
<node CREATED="1378806225154" ID="ID_1360799346" MODIFIED="1378806235419" TEXT="race conditions / confusing results"/>
</node>
<node CREATED="1378806279763" FOLDED="true" ID="ID_1935923755" MODIFIED="1378806321075" TEXT="client side locking for compound actions">
<node CREATED="1378806295309" ID="ID_966123437" MODIFIED="1378806311184" TEXT="synchronize on that vector itself"/>
<node CREATED="1378806311559" ID="ID_1638373781" MODIFIED="1378806317246" TEXT="i.e use that vector as the lock"/>
</node>
<node CREATED="1378806454932" ID="ID_1808609022" MODIFIED="1378806464807" TEXT="iteration hidden with string concatenation">
<icon BUILTIN="help"/>
</node>
<node CREATED="1378812772702" FOLDED="true" ID="ID_1786713871" MODIFIED="1378812857029" TEXT="setting back the interrupt after interruptedException">
<node CREATED="1378812793327" ID="ID_1239385247" MODIFIED="1378812829983" TEXT="usually interrupt status is cleared before throwing interrupt exception"/>
<node CREATED="1378812830452" ID="ID_1028402977" MODIFIED="1378812843670" TEXT="if you are not handling the interrupt "/>
<node CREATED="1378812843951" ID="ID_1725270567" MODIFIED="1378812848639" TEXT="set back the interrupt"/>
<node CREATED="1378812848920" ID="ID_1328023366" MODIFIED="1378812855998" TEXT="Thread.currentThread().interrupt()"/>
</node>
</node>
</node>
</map>
