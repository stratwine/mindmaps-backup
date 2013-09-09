<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1378741479548" ID="ID_1382970284" MODIFIED="1378741489188" TEXT="Multithreading">
<node CREATED="1378745237667" ID="ID_635468105" MODIFIED="1378745244162" POSITION="right" TEXT="sharing objects">
<node CREATED="1378745264463" ID="ID_1742072574" MODIFIED="1378745278643" TEXT="Idea: synchronize and share"/>
<node CREATED="1378745084254" FOLDED="true" ID="ID_1020567726" MODIFIED="1378745167488" TEXT="Non thread safe mutable integer">
<node CREATED="1378745110691" ID="ID_1065371598" MODIFIED="1378745122246" TEXT="when  a class has an integer instance variable"/>
<node CREATED="1378745122647" ID="ID_1779465201" MODIFIED="1378745134828" TEXT="and provides getters and setters"/>
</node>
<node CREATED="1378745189529" ID="ID_477516257" MODIFIED="1378745196595" TEXT="sharing variables without synch"/>
<node CREATED="1378745143481" FOLDED="true" ID="ID_1813642461" MODIFIED="1378745167137" TEXT="Thread safe mutable integer">
<node CREATED="1378745150502" ID="ID_1141633529" MODIFIED="1378745166207" TEXT="if those getters and setters are intialized"/>
</node>
<node CREATED="1378745323806" FOLDED="true" ID="ID_648801736" MODIFIED="1378746311990" TEXT="volatile fields for simple flags">
<node CREATED="1378745332215" ID="ID_1641174737" MODIFIED="1378745339440" TEXT="perfect for simple flags"/>
<node CREATED="1378745346616" ID="ID_1588959855" MODIFIED="1378745357508" TEXT="while(!flag){count some sheep}"/>
<node CREATED="1378745359213" ID="ID_1231871443" MODIFIED="1378745374012" TEXT="while(!cancelled){do some work}"/>
</node>
<node CREATED="1378745758154" FOLDED="true" ID="ID_1409404373" MODIFIED="1378745841284" TEXT="making an instance public">
<node CREATED="1378745778996" ID="ID_984358241" MODIFIED="1378745785953" TEXT="just about anyone could update it"/>
<node CREATED="1378745786309" ID="ID_1867073625" MODIFIED="1378745815360" TEXT="impossible to ensure thread-safety"/>
</node>
<node CREATED="1378745842352" FOLDED="true" ID="ID_821632054" MODIFIED="1378745940280" TEXT="allowing internal mutable state to escape">
<node CREATED="1378745872453" ID="ID_1728796338" MODIFIED="1378745884673" TEXT="a class has a private states[]"/>
<node CREATED="1378745886323" ID="ID_1933205784" MODIFIED="1378745898623" TEXT="gives a public getStates() method"/>
<node CREATED="1378745898908" ID="ID_1059333017" MODIFIED="1378745914206" TEXT="no setter that can chage the state array"/>
<node CREATED="1378745914722" ID="ID_720604618" MODIFIED="1378745929103" TEXT="but with the states reference,"/>
<node CREATED="1378745930198" ID="ID_314315114" MODIFIED="1378745936857" TEXT="the internal objects could be changed !!"/>
</node>
<node CREATED="1378746078149" ID="ID_785014533" MODIFIED="1378746267892" TEXT="implicitly allowing the this reference to escape">
<node CREATED="1378746230264" ID="ID_1544098160" MODIFIED="1378746349445" TEXT="Returning this from a non-private, overridable method  that is invoked from &#xa;the constructor of a class whose object is being constructed."/>
<node CREATED="1378746374503" ID="ID_1895369267" MODIFIED="1378746435604" TEXT="Returning this from a nonprivate method of a mutable class, which allows the &#xa;caller to manipulate the object&apos;s state indirectly. This commonly occurs in&#xa; method-chaining implementations"/>
<node CREATED="1378746452000" ID="ID_340156149" MODIFIED="1378746462155" TEXT="Passing this as an argument to an alien method invoked from the &#xa;constructor of a class whose object is being constructed."/>
<node CREATED="1378746472696" ID="ID_1509722707" MODIFIED="1378746480642" TEXT="Using inner classes. An inner class implicitly holds a reference &#xa;to the instance of its outer class unless the inner class is declared static"/>
<node CREATED="1378746496750" ID="ID_217874020" MODIFIED="1378746504093" TEXT="Publishing by assigning this to a public static variable&#xa; from the constructor of a class whose object is being constructed."/>
<node CREATED="1378746518600" ID="ID_315581479" MODIFIED="1378746526913" TEXT="Throwing an exception from a constructor. Doing so may cause code to be &#xa;vulnerable to a finalizer attack"/>
<node CREATED="1378746553912" ID="ID_504941885" MODIFIED="1378746572263" TEXT="Passing internal object state to an alien method. &#xa;This enables the method to retrieve the this reference&#xa; of the internal member object."/>
</node>
</node>
<node CREATED="1378745205185" FOLDED="true" ID="ID_395641659" MODIFIED="1378745235171" POSITION="right" TEXT="thread safety">
<node CREATED="1378743296928" FOLDED="true" ID="ID_465356666" MODIFIED="1378743641524" TEXT="avoiding instance variables (stateless) for thread safety">
<node CREATED="1378743318999" ID="ID_1979760092" MODIFIED="1378743324405" TEXT="stateless servlet"/>
</node>
<node CREATED="1378743213791" FOLDED="true" ID="ID_1065152911" MODIFIED="1378743658398" TEXT="Synchronizing to avoid race-conditions">
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
<node CREATED="1378743516866" FOLDED="true" ID="ID_1119978324" MODIFIED="1378743593106" TEXT="Using Atomic variables to do simple operations">
<node CREATED="1378743532876" ID="ID_1187478288" MODIFIED="1378743568154" TEXT="Use AtomicLong count = new AtomicLong(0)"/>
<node CREATED="1378743568576" ID="ID_566043156" MODIFIED="1378743584070" TEXT="count.incrementAndGet()"/>
</node>
<node CREATED="1378744272749" FOLDED="true" ID="ID_366820428" MODIFIED="1378744404888" TEXT="Inadequte atomicity">
<node CREATED="1378744329024" ID="ID_377494840" MODIFIED="1378744343791" TEXT="A servlet has two AtomicReference instance variables"/>
<node CREATED="1378744345350" ID="ID_1916958776" MODIFIED="1378744361138" TEXT="in a method call, sets them both to new values"/>
<node CREATED="1378744361871" ID="ID_708923322" MODIFIED="1378744375313" TEXT="this doesn&apos;t guarantee thread safety"/>
<node CREATED="1378744375641" ID="ID_762161011" MODIFIED="1378744390631" TEXT="each operation is atomic"/>
<node CREATED="1378744391032" ID="ID_991675191" MODIFIED="1378744402557" TEXT="but the two operations as a whole is not"/>
</node>
<node CREATED="1378744451769" FOLDED="true" ID="ID_512416954" MODIFIED="1378744811399" TEXT="Synchronizing correctly but withholding locks throughout the method">
<node CREATED="1378744494156" ID="ID_316763558" MODIFIED="1378744801962" TEXT="performance is affected"/>
<node CREATED="1378744501754" ID="ID_1127567520" MODIFIED="1378744530270" TEXT="use synch block and synch on small section"/>
<node CREATED="1378744530805" ID="ID_1534459" MODIFIED="1378744551001" TEXT="or refactor the synch reqd part to a separate small method"/>
<node CREATED="1378744553569" ID="ID_1754053645" MODIFIED="1378744557865" TEXT="and synch it"/>
</node>
<node CREATED="1378743268220" FOLDED="true" ID="ID_253234915" MODIFIED="1378743637214" TEXT="locking with correct order to avoid deadlocks">
<node CREATED="1378741634516" FOLDED="true" ID="ID_486361820" MODIFIED="1378743636650" TEXT="Eg: AccountService">
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
</node>
</node>
</map>
