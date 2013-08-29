<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1377277976488" ID="ID_1446237198" MODIFIED="1377278004779" TEXT="Algorithm Paradigms">
<node CREATED="1377278107043" FOLDED="true" ID="ID_994261721" MODIFIED="1377755504351" POSITION="right" TEXT="Randomization">
<node CREATED="1377284423619" ID="ID_509931912" MODIFIED="1377284430883" TEXT="Randomized Quicksort">
<node CREATED="1377284441228" ID="ID_596172413" MODIFIED="1377284449334" TEXT="uses Randomized Partition"/>
</node>
</node>
<node CREATED="1377278102654" FOLDED="true" ID="ID_112423418" MODIFIED="1377517643777" POSITION="right" TEXT="Backtracking">
<node CREATED="1377284011280" FOLDED="true" ID="ID_921984405" MODIFIED="1377284166912" TEXT="usually involves a for-loop">
<node CREATED="1377284088889" ID="ID_274775736" MODIFIED="1377284127077" TEXT="within it, a recursion"/>
<node CREATED="1377284101706" ID="ID_41884762" MODIFIED="1377284125161" TEXT="the loop index forming a start param&#xa;for recursion"/>
<node CREATED="1377284132813" ID="ID_905298003" MODIFIED="1377284165003" TEXT="at the recursion end, a backtrack if reqd"/>
</node>
<node CREATED="1377283225171" FOLDED="true" ID="ID_1756594763" MODIFIED="1377510295045" TEXT="examples">
<node CREATED="1377283320628" FOLDED="true" ID="ID_1607916476" MODIFIED="1377283512207" TEXT="Subsets generation">
<node CREATED="1377283326301" ID="ID_1169634255" MODIFIED="1377283349864" TEXT="Retain all the elements in a set"/>
<node CREATED="1377283350421" ID="ID_1603855398" MODIFIED="1377283369005" TEXT="Backtrack to remove one element">
<node CREATED="1377283477402" ID="ID_1553102238" MODIFIED="1377283509343" TEXT="when the recursion ends&#xa;delete the last added elt"/>
</node>
<node CREATED="1377283373004" ID="ID_923931197" MODIFIED="1377283381414" TEXT="Add another element"/>
</node>
<node CREATED="1377283528548" ID="ID_1340580759" MODIFIED="1377283533787" TEXT="M coloring problem"/>
<node CREATED="1377283233212" FOLDED="true" ID="ID_252672948" MODIFIED="1377283513331" TEXT="N queens problem">
<node CREATED="1377283297324" ID="ID_497539281" MODIFIED="1377283315426" TEXT="don&apos;t try placements all the way from the start"/>
<node CREATED="1377283258991" ID="ID_1826328584" MODIFIED="1377283435612" TEXT="backtrack one row">
<node CREATED="1377283451380" ID="ID_240324002" MODIFIED="1377283460170" TEXT="when the recursion ends, clear the field"/>
</node>
<node CREATED="1377283393283" ID="ID_1093907638" MODIFIED="1377283406006" TEXT="Try a different placement"/>
</node>
</node>
<node CREATED="1377281925686" FOLDED="true" ID="ID_450621346" MODIFIED="1377510296981" TEXT="idea">
<node CREATED="1377281910932" ID="ID_753287724" MODIFIED="1377281919928" TEXT="okay, backtrack and change only that part"/>
<node CREATED="1377281898641" ID="ID_713937953" MODIFIED="1377281908324" TEXT="only a small part changes for the next attempt"/>
<node CREATED="1377281890176" ID="ID_771852412" MODIFIED="1377281897659" TEXT="most part remains the same"/>
<node CREATED="1377281874794" ID="ID_1807910004" MODIFIED="1377281889648" TEXT="don&apos;t start from the first again"/>
</node>
<node CREATED="1377510300729" FOLDED="true" ID="ID_1554807096" MODIFIED="1377517642497" TEXT="algorithms">
<node CREATED="1377510308989" FOLDED="true" ID="ID_199588056" MODIFIED="1377517637407" TEXT="permutations of a string">
<node CREATED="1377511563317" FOLDED="true" ID="ID_474929630" MODIFIED="1377517634565" TEXT="crux">
<node CREATED="1377511567041" ID="ID_1487241547" MODIFIED="1377515677631">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      swap each character with itself and the following unfixed characters.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1377511588838" ID="ID_368609476" MODIFIED="1377511673717" TEXT="invoke the permute method recursively, incrementing fixed-length"/>
<node CREATED="1377511774630" ID="ID_267877918" MODIFIED="1377515798655" TEXT="backtrack the swap (so as to avoid repeats / missing permutations)"/>
<node CREATED="1377511740134" ID="ID_484174177" MODIFIED="1377511753723" TEXT="when fixed length = string length, print and return"/>
<node CREATED="1377515826042" FOLDED="true" ID="ID_1184820354" MODIFIED="1377517630162" TEXT="effect: a.permuted(bc), b.permuted(ac), c.permuted(ba)">
<node CREATED="1377517591595" ID="ID_1003206279" MODIFIED="1377517622573">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      smaller trees are possible
    </p>
    <p>
      with backtracking. if not,
    </p>
    <p>
      everything would have been
    </p>
    <p>
      a long tree
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1377516076475" ID="ID_1313164656" MODIFIED="1377516084844" TEXT="abc">
<node CREATED="1377516084844" ID="ID_1079042308" MODIFIED="1377516087139" TEXT="abc">
<node CREATED="1377516112762" ID="ID_26502255" MODIFIED="1377516114479" TEXT="acb"/>
<node CREATED="1377516087139" ID="ID_1409195052" MODIFIED="1377516090699" TEXT="abc"/>
</node>
<node CREATED="1377517549515" ID="ID_1473206635" MODIFIED="1377517562085" TEXT="bac">
<node CREATED="1377517553513" ID="ID_1100190250" MODIFIED="1377517556979" TEXT="bac"/>
<node CREATED="1377517557681" ID="ID_268339801" MODIFIED="1377517559914" TEXT="bca"/>
</node>
<node CREATED="1377517564380" ID="ID_428286747" MODIFIED="1377517568924" TEXT="cba">
<node CREATED="1377517569798" ID="ID_1803001431" MODIFIED="1377517571484" TEXT="cba"/>
<node CREATED="1377517571906" ID="ID_1477010729" MODIFIED="1377517575325" TEXT="cab"/>
</node>
</node>
</node>
<node CREATED="1377517528436" ID="ID_723091763" MODIFIED="1377517541646" TEXT="short form: swap, permute, swap back"/>
</node>
<node CREATED="1377511975386" FOLDED="true" ID="ID_196567396" MODIFIED="1377516094868" TEXT="why for loop ?">
<node CREATED="1377511979866" ID="ID_840594806" MODIFIED="1377515615940">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      to swap each&#160;unfixed character itself<br />and the following unfixed characters
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1377511834728" FOLDED="true" ID="ID_1705012846" MODIFIED="1377511941982" TEXT="for loop index">
<node CREATED="1377511845462" ID="ID_916138779" MODIFIED="1377511860971" TEXT="starts from the fixed-set-length"/>
<node CREATED="1377511861876" ID="ID_759931978" MODIFIED="1377511905967" TEXT="initially nothing is fixed i=0"/>
<node CREATED="1377511877212" ID="ID_1724876110" MODIFIED="1377511906887" TEXT="then first character is fixed i=1"/>
<node CREATED="1377511892923" ID="ID_1747112281" MODIFIED="1377511908276" TEXT="then first two characters are fixed i=2"/>
<node CREATED="1377511935597" ID="ID_605381318" MODIFIED="1377511938032" TEXT="so on.."/>
</node>
<node CREATED="1377511488017" FOLDED="true" ID="ID_969725469" MODIFIED="1377511499858" TEXT="implementation">
<node CREATED="1377510612875" ID="ID_968336022" MODIFIED="1377510642545" TEXT="method parameter says: till what is permutation fixed"/>
<node CREATED="1377510646105" ID="ID_47163946" MODIFIED="1377510662689" TEXT="abc (fixed till 0)"/>
<node CREATED="1377510668654" FOLDED="true" ID="ID_909647288" MODIFIED="1377511418435" TEXT="swap a with a">
<node CREATED="1377511035452" ID="ID_685294638" MODIFIED="1377511417329" TEXT="permute">
<node CREATED="1377510708630" ID="ID_43417496" MODIFIED="1377510714907" TEXT="a.bc (fixed till a)"/>
<node CREATED="1377510723230" ID="ID_51072940" MODIFIED="1377510727837" TEXT="swap b with b"/>
<node CREATED="1377510733318" ID="ID_1936200259" MODIFIED="1377510740282" TEXT="ab.c fixed till ab"/>
<node CREATED="1377510758662" ID="ID_1047318646" MODIFIED="1377510779961" TEXT="string length is reached with abc. so print and return"/>
<node CREATED="1377510796389" ID="ID_1668748788" MODIFIED="1377510854792" TEXT="backtrack the swap b:b"/>
<node CREATED="1377510860601" ID="ID_1626366297" MODIFIED="1377510864365" TEXT="swap b with c"/>
<node CREATED="1377510874406" ID="ID_1453744793" MODIFIED="1377510897595" TEXT="ac.b fixed till ac"/>
<node CREATED="1377510898126" ID="ID_305590255" MODIFIED="1377510908011" TEXT="string length is reached with acb. print acb"/>
<node CREATED="1377510911072" ID="ID_1420816132" MODIFIED="1377510924751" TEXT="backtrack the swap b:c"/>
</node>
</node>
<node CREATED="1377511092559" ID="ID_141733672" MODIFIED="1377511098415" TEXT="backtrack the swap a:a"/>
<node CREATED="1377511105239" FOLDED="true" ID="ID_1882713583" MODIFIED="1377511412187" TEXT="swap a with b">
<node CREATED="1377511119402" ID="ID_1224901809" MODIFIED="1377511121526" TEXT="permute">
<node CREATED="1377511122681" ID="ID_333898409" MODIFIED="1377511197528" TEXT="b.ac (fixed till b)"/>
<node CREATED="1377511156818" ID="ID_987672937" MODIFIED="1377511202338" TEXT="swap a with a"/>
<node CREATED="1377511170435" ID="ID_1300564507" MODIFIED="1377511193359" TEXT="ba.c fixed till ba"/>
<node CREATED="1377511241643" ID="ID_1986797962" MODIFIED="1377511258211" TEXT="string length is reached with bac. so print and return"/>
<node CREATED="1377511259835" ID="ID_262333138" MODIFIED="1377511273827" TEXT="backtrack the swap a:a"/>
<node CREATED="1377511275794" ID="ID_491052591" MODIFIED="1377511280339" TEXT="swap a with c"/>
<node CREATED="1377511281557" ID="ID_1632291739" MODIFIED="1377511290114" TEXT="bc.a fixed till bc"/>
<node CREATED="1377511290754" ID="ID_1647581714" MODIFIED="1377511300405" TEXT="string length is reached with bca"/>
<node CREATED="1377511300936" ID="ID_1923696805" MODIFIED="1377511306120" TEXT="print and return"/>
<node CREATED="1377511317223" ID="ID_131579049" MODIFIED="1377511341374" TEXT="backtrack the swap a:c"/>
</node>
</node>
<node CREATED="1377511429450" ID="ID_353250989" MODIFIED="1377511435386" TEXT="backtrack swap a:b"/>
<node CREATED="1377511376087" ID="ID_669606930" MODIFIED="1377511385732" TEXT="likewise swap a with c"/>
<node CREATED="1377511437443" ID="ID_55916528" MODIFIED="1377511441712" TEXT="backtrack swap a:c"/>
<node CREATED="1377510958903" ID="ID_372365856" MODIFIED="1377510963478" TEXT="nothing more to go"/>
</node>
</node>
</node>
</node>
<node CREATED="1377278095608" FOLDED="true" ID="ID_378441907" MODIFIED="1377282105801" POSITION="right" TEXT="Dynamic Programming">
<node CREATED="1377281949830" ID="ID_975700659" MODIFIED="1377281951550" TEXT="idea">
<node CREATED="1377281582111" ID="ID_765131214" MODIFIED="1377281602405" TEXT="mostly to find the optimal values">
<node CREATED="1377281627638" ID="ID_549205933" MODIFIED="1377281642954" TEXT="other ones exist too. (eg: fib)"/>
<node CREATED="1377281603593" ID="ID_1951840535" MODIFIED="1377281617775" TEXT="max / min / largest / smallest"/>
<node CREATED="1377281658410" ID="ID_1047968973" MODIFIED="1377281668500" TEXT="a decision / choice is usually involved"/>
</node>
<node CREATED="1377281561074" FOLDED="true" ID="ID_415939969" MODIFIED="1377281856624" TEXT="formulate the recurrance relation">
<node CREATED="1377281702098" ID="ID_1524147303" MODIFIED="1377281713716" TEXT="idea: take an arbitrary position"/>
<node CREATED="1377281720368" ID="ID_980352145" MODIFIED="1377281734155" TEXT="think how you could have got there"/>
<node CREATED="1377281743563" ID="ID_1955902937" MODIFIED="1377281772987" TEXT="maybe there are two or more ways of getting there"/>
<node CREATED="1377281774031" ID="ID_1982457089" MODIFIED="1377281777147" TEXT="write it all"/>
<node CREATED="1377281778232" ID="ID_959196631" MODIFIED="1377281847243" TEXT="now do you need the optimal value ?"/>
<node CREATED="1377281795518" ID="ID_722711069" MODIFIED="1377281806880" TEXT="find the optimal choice">
<node CREATED="1377281807899" ID="ID_615442544" MODIFIED="1377281822903" TEXT="min / max / smallest / largest"/>
</node>
</node>
</node>
</node>
<node CREATED="1377278533875" FOLDED="true" ID="ID_1573063822" MODIFIED="1377761382906" POSITION="right" TEXT="Greedy">
<node CREATED="1377755513788" FOLDED="true" ID="ID_1798464801" MODIFIED="1377761380297" TEXT="algorithms">
<node CREATED="1377282283249" FOLDED="true" ID="ID_643760441" MODIFIED="1377755540959" TEXT="dijkstra&apos;s shortest path">
<node CREATED="1377282360334" ID="ID_1974092216" MODIFIED="1377282419737" TEXT="of the other set, choose the smallest weighted edge"/>
</node>
<node CREATED="1377755545037" ID="ID_753392410" MODIFIED="1377755554411" TEXT="huffman compression"/>
<node CREATED="1377282271330" ID="ID_420658113" MODIFIED="1377282280263" TEXT="minimal spanning tree"/>
<node CREATED="1377281525068" ID="ID_571698601" MODIFIED="1377281536347" TEXT="fractional knapsack problem"/>
<node CREATED="1377281514803" FOLDED="true" ID="ID_222359320" MODIFIED="1377755539803" TEXT="schedule max no of tasks">
<node CREATED="1377282325543" ID="ID_1493338674" MODIFIED="1377282348353" TEXT="choose smallest time consuming task each time"/>
</node>
<node CREATED="1377761374235" ID="ID_1043355707" MODIFIED="1377761378250" TEXT="huffman coding"/>
</node>
<node CREATED="1377281487194" ID="ID_1763415598" MODIFIED="1377281499696" TEXT="its hard to know if it is correct"/>
</node>
<node CREATED="1377282110075" FOLDED="true" ID="ID_419855752" MODIFIED="1377283994505" POSITION="right" TEXT="Plain Recursion">
<node CREATED="1377282177522" ID="ID_1124876420" MODIFIED="1377282217399" TEXT="built a balanced binary tree from&#xa;from an even length array"/>
<node CREATED="1377282172255" ID="ID_195874912" MODIFIED="1377282176760" TEXT="tower of hanoi"/>
<node CREATED="1377282146224" ID="ID_1792885927" MODIFIED="1377282170515" TEXT="many recurrance solutions don&apos;t fall under DP"/>
</node>
<node CREATED="1377278086503" FOLDED="true" ID="ID_1854521682" MODIFIED="1377687179467" POSITION="right" TEXT="Divide and Conquer">
<node CREATED="1377281962523" FOLDED="true" ID="ID_774485682" MODIFIED="1377687178686" TEXT="idea">
<node CREATED="1377281978744" ID="ID_1071955073" MODIFIED="1377282017444" TEXT="the problem set is reduced considerably each time&#xa;that in turn improves the effeciency"/>
<node CREATED="1377280224804" FOLDED="true" ID="ID_1467397402" MODIFIED="1377687177748" TEXT="conquer step doing the work">
<node CREATED="1377280298294" FOLDED="true" ID="ID_1949224132" MODIFIED="1377684366731" TEXT="counting inversions">
<node CREATED="1377684200325" ID="ID_670586832" MODIFIED="1377684209819" TEXT="proceed like in mergesort"/>
<node CREATED="1377684275949" ID="ID_119843064" MODIFIED="1377684289645" TEXT="each mergesort call returns invCount"/>
<node CREATED="1377684293417" ID="ID_556961284" MODIFIED="1377684301728" TEXT="find it for left"/>
<node CREATED="1377684301916" ID="ID_18342792" MODIFIED="1377684305297" TEXT="find it for right"/>
<node CREATED="1377684305516" ID="ID_602087050" MODIFIED="1377684324408" TEXT="find the one for merge, and add all"/>
<node CREATED="1377684327569" FOLDED="true" ID="ID_1792042813" MODIFIED="1377684366120" TEXT="note: all methods return invCount">
<node CREATED="1377684352800" ID="ID_1660015460" MODIFIED="1377684365103" TEXT="though they look like mergesort otherwise"/>
</node>
</node>
<node CREATED="1377280271049" FOLDED="true" ID="ID_1336638294" MODIFIED="1377684129185" TEXT="mergesort">
<node CREATED="1377279993250" ID="ID_676682717" MODIFIED="1377280199674" TEXT="mergesort - works by sorting at smaller range&#xa;and then at bigger range. Again, not too big&#xa;a look-ahead region"/>
</node>
<node CREATED="1377683496510" FOLDED="true" ID="ID_542688773" MODIFIED="1377687175405">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      find the max profit&#160;<br />buy and sell stock
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1377687021118" ID="ID_1066298370" MODIFIED="1377687027820" TEXT="input takes left and right ends"/>
<node CREATED="1377687028164" ID="ID_1143377611" MODIFIED="1377687041583" TEXT="divide at the mid">
<node CREATED="1377687059112" ID="ID_1915423000" MODIFIED="1377687063767" TEXT="like binary search"/>
</node>
<node CREATED="1377687065704" ID="ID_1124434674" MODIFIED="1377687071922" TEXT="if l==r">
<node CREATED="1377687073219" ID="ID_1434131287" MODIFIED="1377687076859" TEXT="return 0"/>
</node>
<node CREATED="1377687078421" ID="ID_1163998854" MODIFIED="1377687141051" TEXT="find MaxProfit(l,m) as m1"/>
<node CREATED="1377687091794" ID="ID_225915602" MODIFIED="1377687144738" TEXT="find MaxProfit(m+1,r) as m2"/>
<node CREATED="1377687100230" ID="ID_691745370" MODIFIED="1377687155642" TEXT="find min(l,,m) and max(m_1..r) as v1 and v2"/>
<node CREATED="1377687123460" ID="ID_147639395" MODIFIED="1377687173921" TEXT="return Max(m1,m2,v2-v1)"/>
</node>
</node>
<node CREATED="1377280219139" FOLDED="true" ID="ID_1905033262" MODIFIED="1377683483466" TEXT="divide step doing the work">
<node CREATED="1377282057075" ID="ID_467103513" MODIFIED="1377284637160" TEXT="binary search">
<node CREATED="1377284672248" ID="ID_301855014" MODIFIED="1377284683114" TEXT="iterative binary search"/>
<node CREATED="1377284722615" ID="ID_203008237" MODIFIED="1377284728968" TEXT="find square root"/>
<node CREATED="1377284641645" ID="ID_251380488" MODIFIED="1377284716759" TEXT="search in row-wise, column-wise sorted array"/>
</node>
<node CREATED="1377280263140" FOLDED="true" ID="ID_1135617728" MODIFIED="1377284630357" TEXT="quicksort">
<node CREATED="1377279957111" ID="ID_182090618" MODIFIED="1377279989215" TEXT="the rearrage-region is shortened considerably&#xa;in quicksort for each call"/>
</node>
</node>
</node>
</node>
</node>
</map>
