<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1377278066712" ID="ID_1366658628" MODIFIED="1377278071457" TEXT="Core Algorithms">
<node CREATED="1377278392862" ID="ID_261645893" MODIFIED="1377281442311" POSITION="right" TEXT="find kth element"/>
<node CREATED="1377278387772" ID="ID_1502850913" MODIFIED="1377281432589" POSITION="right" TEXT="partition"/>
<node CREATED="1377279035711" ID="ID_296837475" MODIFIED="1377279046108" POSITION="right" TEXT="dfs, bfs, topological sort"/>
<node CREATED="1377279120046" ID="ID_877440416" MODIFIED="1377279124229" POSITION="right" TEXT="data compression">
<node CREATED="1377284503608" ID="ID_1719672789" MODIFIED="1377284508518" TEXT="huffman encoding"/>
</node>
<node CREATED="1377279113819" ID="ID_1516872873" MODIFIED="1377279119491" POSITION="right" TEXT="regular expressions"/>
<node CREATED="1377279051346" FOLDED="true" ID="ID_635229934" MODIFIED="1377284501271" POSITION="right" TEXT="substring search">
<node CREATED="1377279065785" ID="ID_906920403" MODIFIED="1377284499327" TEXT="kmp"/>
<node CREATED="1377279061522" ID="ID_1823870824" MODIFIED="1377279079994" TEXT="rabin karp"/>
<node CREATED="1377279071427" ID="ID_785091884" MODIFIED="1377284495463" TEXT="boyer moore"/>
</node>
<node CREATED="1377284688426" ID="ID_904075170" MODIFIED="1377284692132" POSITION="right" TEXT="binary search">
<node CREATED="1377284693404" ID="ID_1550190190" MODIFIED="1377284695526" TEXT="iterative"/>
<node CREATED="1377284695892" ID="ID_44554275" MODIFIED="1377284699156" TEXT="recursive"/>
</node>
<node CREATED="1377278137148" FOLDED="true" ID="ID_1368470942" MODIFIED="1377284572701" POSITION="right" TEXT="sort">
<node COLOR="#338800" CREATED="1377278224524" ID="ID_1876784634" MODIFIED="1377278334428" TEXT="Heap sort"/>
<node COLOR="#338800" CREATED="1377278221211" ID="ID_1657673400" MODIFIED="1377284524428" TEXT="Merge sort">
<node CREATED="1377284550553" ID="ID_678038380" MODIFIED="1377284554641" TEXT="for linked lists"/>
<node CREATED="1377284526540" ID="ID_1841648592" MODIFIED="1377284544579" TEXT="for huge files in external storage"/>
<node CREATED="1377280490935" FOLDED="true" ID="ID_659650408" MODIFIED="1377281400405" TEXT="Implementation">
<node CREATED="1377280496060" ID="ID_960691317" MODIFIED="1377280505991" TEXT="Have the left section mergesorted"/>
<node CREATED="1377280506527" ID="ID_1199982781" MODIFIED="1377280513201" TEXT="Have the right section mergesorted"/>
<node CREATED="1377280514280" ID="ID_1519754430" MODIFIED="1377280524693" TEXT="Now merge these two sorted sections"/>
<node CREATED="1377280941973" ID="ID_1663396012" MODIFIED="1377280963983" TEXT="Base case:  high &lt;= low"/>
<node CREATED="1377280569161" ID="ID_1584070025" MODIFIED="1377280572151" TEXT="More">
<node CREATED="1377280573313" ID="ID_1856707027" MODIFIED="1377280585822" TEXT="create a copy of the original array (aux)"/>
<node CREATED="1377280586727" ID="ID_1688107099" MODIFIED="1377280603233" TEXT="pass this aux for each recursive call"/>
<node CREATED="1377280632540" ID="ID_626460316" MODIFIED="1377280977614" TEXT="use this aux array in merge step">
<node CREATED="1377280667421" ID="ID_1493893181" MODIFIED="1377280709800" TEXT="the traversing pointers&#xa;(leftSide and rightSide) stay&#xa;in this aux array"/>
<node CREATED="1377280651492" ID="ID_243670103" MODIFIED="1377280666415" TEXT="the filling pointers remain in&#xa;the original array"/>
<node CREATED="1377280888466" ID="ID_650345778" MODIFIED="1377280904280" TEXT="the aux array is never modified"/>
</node>
</node>
</node>
</node>
<node COLOR="#338800" CREATED="1377278215529" FOLDED="true" ID="ID_151276631" MODIFIED="1377281087015" TEXT="Quick sort">
<node CREATED="1377279762648" FOLDED="true" ID="ID_1545819228" MODIFIED="1377279940022" TEXT="Implementation">
<node CREATED="1377279514584" ID="ID_1032836601" MODIFIED="1377279541767" TEXT="take the last element as pivot (simple version)"/>
<node CREATED="1377279524098" ID="ID_155435606" MODIFIED="1377279577148" TEXT="call the partition algorithm"/>
<node CREATED="1377279544796" ID="ID_278584400" MODIFIED="1377279574238" TEXT="place all smaller elements to left&#xa;and bigger elements to right"/>
<node CREATED="1377279589552" ID="ID_867182601" MODIFIED="1377279617939" TEXT="that chosen pivot element&apos;s position&#xa;has changed after the partition"/>
<node CREATED="1377279679451" ID="ID_186226517" MODIFIED="1377279700715" TEXT="at least this element is now in&#xa;it&apos;s final place"/>
<node CREATED="1377279618957" ID="ID_1110452218" MODIFIED="1377279677869" TEXT="return this new position"/>
<node CREATED="1377279639667" ID="ID_1695520330" MODIFIED="1377279716863" TEXT="call quicksort to the left of this position"/>
<node CREATED="1377279667440" ID="ID_575002164" MODIFIED="1377279676218" TEXT="call quicksort to the right of the position"/>
<node CREATED="1377279923275" ID="ID_822109953" MODIFIED="1377279937404" TEXT="base case: one element ? return it"/>
</node>
<node CREATED="1377279827447" ID="ID_13952595" MODIFIED="1377281067733" TEXT="Base idea">
<node CREATED="1377279851245" ID="ID_667141853" MODIFIED="1377279865021" TEXT="each time, the pivot goes to its final place"/>
<node CREATED="1377279878473" ID="ID_457817274" MODIFIED="1377279908781" TEXT="the rearrage region is shortened considerably"/>
</node>
<node CREATED="1377278406670" ID="ID_1040871632" MODIFIED="1377279791771" TEXT="Randomized version gives the benefit"/>
<node CREATED="1377279792837" ID="ID_382675775" MODIFIED="1377281066214" TEXT="Normal version is quadratic"/>
</node>
<node CREATED="1377278240619" ID="ID_1698142078" MODIFIED="1377278372234" TEXT="Indirect sort">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1377278247468" ID="ID_212975373" MODIFIED="1377278253072" TEXT="Count sort"/>
<node CREATED="1377278264817" ID="ID_1092120063" MODIFIED="1377278268125" TEXT="Radix sort"/>
<node CREATED="1377278292570" ID="ID_1634614396" MODIFIED="1377278299672" TEXT="Bubble sort"/>
<node CREATED="1377278300433" ID="ID_1365465588" MODIFIED="1377278304320" TEXT="Selection sort"/>
<node CREATED="1377278305647" ID="ID_364379525" MODIFIED="1377278308795" TEXT="Insertion sort"/>
</node>
</node>
</map>
