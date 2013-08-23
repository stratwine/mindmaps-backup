<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1377277976488" ID="ID_1446237198" MODIFIED="1377278004779" TEXT="Algorithm Paradigms">
<node CREATED="1377278107043" ID="ID_994261721" MODIFIED="1377278111961" POSITION="right" TEXT="Randomization"/>
<node CREATED="1377278102654" FOLDED="true" ID="ID_112423418" MODIFIED="1377284180676" POSITION="right" TEXT="Backtracking">
<node CREATED="1377284011280" FOLDED="true" ID="ID_921984405" MODIFIED="1377284166912" TEXT="usually involves a for-loop">
<node CREATED="1377284088889" ID="ID_274775736" MODIFIED="1377284127077" TEXT="within it, a recursion"/>
<node CREATED="1377284101706" ID="ID_41884762" MODIFIED="1377284125161" TEXT="the loop index forming a start param&#xa;for recursion"/>
<node CREATED="1377284132813" ID="ID_905298003" MODIFIED="1377284165003" TEXT="at the recursion end, a backtrack if reqd"/>
</node>
<node CREATED="1377283225171" ID="ID_1756594763" MODIFIED="1377283228784" TEXT="examples">
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
<node CREATED="1377281925686" ID="ID_450621346" MODIFIED="1377284173358" TEXT="idea">
<node CREATED="1377281910932" ID="ID_753287724" MODIFIED="1377281919928" TEXT="okay, backtrack and change only that part"/>
<node CREATED="1377281898641" ID="ID_713937953" MODIFIED="1377281908324" TEXT="only a small part changes for the next attempt"/>
<node CREATED="1377281890176" ID="ID_771852412" MODIFIED="1377281897659" TEXT="most part remains the same"/>
<node CREATED="1377281874794" ID="ID_1807910004" MODIFIED="1377281889648" TEXT="don&apos;t start from the first again"/>
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
<node CREATED="1377278533875" FOLDED="true" ID="ID_1573063822" MODIFIED="1377282426839" POSITION="right" TEXT="Greedy">
<node CREATED="1377281514803" ID="ID_222359320" MODIFIED="1377282322361" TEXT="schedule max no of tasks">
<node CREATED="1377282325543" ID="ID_1493338674" MODIFIED="1377282348353" TEXT="choose smallest time consuming task each time"/>
</node>
<node CREATED="1377281525068" ID="ID_571698601" MODIFIED="1377281536347" TEXT="fractional knapsack problem"/>
<node CREATED="1377282283249" ID="ID_643760441" MODIFIED="1377282294890" TEXT="dijkstra&apos;s shortest path">
<node CREATED="1377282360334" ID="ID_1974092216" MODIFIED="1377282419737" TEXT="of the other set, choose the smallest weighted edge"/>
</node>
<node CREATED="1377282271330" ID="ID_420658113" MODIFIED="1377282280263" TEXT="minimal spanning tree"/>
<node CREATED="1377281487194" ID="ID_1763415598" MODIFIED="1377281499696" TEXT="its hard to know if it is correct"/>
</node>
<node CREATED="1377282110075" FOLDED="true" ID="ID_419855752" MODIFIED="1377283994505" POSITION="right" TEXT="Plain Recursion">
<node CREATED="1377282177522" ID="ID_1124876420" MODIFIED="1377282217399" TEXT="built a balanced binary tree from&#xa;from an even length array"/>
<node CREATED="1377282172255" ID="ID_195874912" MODIFIED="1377282176760" TEXT="tower of hanoi"/>
<node CREATED="1377282146224" ID="ID_1792885927" MODIFIED="1377282170515" TEXT="many recurrance solutions don&apos;t fall under DP"/>
</node>
<node CREATED="1377278086503" FOLDED="true" ID="ID_1854521682" MODIFIED="1377282104210" POSITION="right" TEXT="Divide and Conquer">
<node CREATED="1377281962523" ID="ID_774485682" MODIFIED="1377281964281" TEXT="idea">
<node CREATED="1377281978744" ID="ID_1071955073" MODIFIED="1377282017444" TEXT="the problem set is reduced considerably each time&#xa;that in turn improves the effeciency"/>
<node CREATED="1377280224804" FOLDED="true" ID="ID_1467397402" MODIFIED="1377282054248" TEXT="conquer step doing the work">
<node CREATED="1377280298294" ID="ID_1949224132" MODIFIED="1377280304384" TEXT="counting inversions"/>
<node CREATED="1377280271049" ID="ID_1336638294" MODIFIED="1377280273504" TEXT="mergesort">
<node CREATED="1377279993250" ID="ID_676682717" MODIFIED="1377280199674" TEXT="mergesort - works by sorting at smaller range&#xa;and then at bigger range. Again, not too big&#xa;a look-ahead region"/>
</node>
</node>
<node CREATED="1377280219139" ID="ID_1905033262" MODIFIED="1377282055044" TEXT="divide step doing the work">
<node CREATED="1377282057075" ID="ID_467103513" MODIFIED="1377282066480" TEXT="search in bst"/>
<node CREATED="1377280263140" ID="ID_1135617728" MODIFIED="1377280284545" TEXT="quicksort">
<node CREATED="1377279957111" ID="ID_182090618" MODIFIED="1377279989215" TEXT="the rearrage-region is shortened considerably&#xa;in quicksort for each call"/>
</node>
</node>
</node>
</node>
</node>
</map>
