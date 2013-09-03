<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1377280354355" ID="ID_810680044" MODIFIED="1377280366038" TEXT="Linear-Algorithms">
<node CREATED="1377280369301" ID="ID_1655478627" MODIFIED="1377280393356" POSITION="right" TEXT="stocks - buy and sell for max profit"/>
<node CREATED="1377683262936" FOLDED="true" ID="ID_1790018655" MODIFIED="1377683452941" POSITION="right" TEXT="dutch partitioning">
<node CREATED="1377683268919" ID="ID_1759126461" MODIFIED="1377683281119" TEXT="it is all about setting the correct invariants"/>
<node CREATED="1377683292351" ID="ID_27830401" MODIFIED="1377683305864" TEXT="0 to smaller-1 : small items end here"/>
<node CREATED="1377683306458" ID="ID_398086735" MODIFIED="1377683335357" TEXT="smaller to equal-1: equal items end here"/>
<node CREATED="1377683337748" ID="ID_132033955" MODIFIED="1377683415418" TEXT="equal to larger-1: unclassified items"/>
<node CREATED="1377683420761" ID="ID_218478400" MODIFIED="1377683431477" TEXT="larger to end : larger items"/>
<node CREATED="1377683435914" ID="ID_1104236771" MODIFIED="1377683451160" TEXT="we use a[equal] to traverse through unclassified items"/>
</node>
<node CREATED="1378104280981" ID="ID_1110288495" MODIFIED="1378106543645" POSITION="right" TEXT="Bit manipulations">
<node CREATED="1378106188223" FOLDED="true" ID="ID_1173428557" MODIFIED="1378106572956" TEXT="About xor">
<node CREATED="1378106197473" ID="ID_1047039025" MODIFIED="1378106210379">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      a xor b =c&#160;
    </p>
    <p>
      c xor a =b
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1378106217066" ID="ID_1110369439" MODIFIED="1378106221019" TEXT="a xor a = 0"/>
</node>
</node>
<node CREATED="1378106553379" FOLDED="true" ID="ID_305806563" MODIFIED="1378109776109" POSITION="right" TEXT="Find the missing and repeated number (seq: 1..n)">
<node CREATED="1378106585705" FOLDED="true" ID="ID_1891807884" MODIFIED="1378106632266" TEXT="use sorting">
<node CREATED="1378106594236" ID="ID_921669493" MODIFIED="1378106597908" TEXT="sort the array"/>
<node CREATED="1378106611032" ID="ID_363960128" MODIFIED="1378106623563" TEXT="scan and find the missing, repeated elt"/>
<node CREATED="1378106623876" ID="ID_1154237697" MODIFIED="1378106630782" TEXT="O(nlogn)"/>
</node>
<node CREATED="1378106644000" FOLDED="true" ID="ID_239785498" MODIFIED="1378106837272" TEXT="use count array">
<node CREATED="1378106648890" ID="ID_596036095" MODIFIED="1378106657077" TEXT="scan and record the count"/>
<node CREATED="1378106657499" ID="ID_1234371088" MODIFIED="1378106683326">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      scan the count array&#160;to see<br />where count is 0 and 2
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1378106838444" FOLDED="true" ID="ID_1021408039" MODIFIED="1378107354671" TEXT="marking as visited">
<node CREATED="1378106842225" ID="ID_851843195" MODIFIED="1378106845100" TEXT="traverse the array"/>
<node CREATED="1378106845475" ID="ID_363367790" MODIFIED="1378106855646" TEXT="use the abs(value) as the index"/>
<node CREATED="1378106855990" ID="ID_1864643766" MODIFIED="1378106862756" TEXT="eg: 1,2,3,3,4,6"/>
<node CREATED="1378106863896" ID="ID_1781514059" MODIFIED="1378106900098">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      becomes: -1,-2,-3,(that index is already with -ve value
    </p>
    <p>
      so that's the repeated element
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1378106910753" ID="ID_1001868722" MODIFIED="1378107205834" TEXT="-1,-2,-3,-4,4,-6"/>
<node CREATED="1378107215037" ID="ID_928244093" MODIFIED="1378107224489" TEXT="scan this array. check for positive value"/>
<node CREATED="1378107224958" ID="ID_650318022" MODIFIED="1378107231833" TEXT="return that index (5)"/>
</node>
<node CREATED="1378107261894" FOLDED="true" ID="ID_1674961915" MODIFIED="1378107567661" TEXT="make two (albebraic) equations">
<node CREATED="1378107280815" ID="ID_1061400754" MODIFIED="1378107321532" TEXT="find sum of all numbers"/>
<node CREATED="1378107321891" ID="ID_490348398" MODIFIED="1378107349234" TEXT="S= n(n+1)/2 -x + y"/>
<node CREATED="1378107355999" ID="ID_1404367950" MODIFIED="1378107360796" TEXT="find prod of all numbers"/>
<node CREATED="1378107361186" ID="ID_1772469804" MODIFIED="1378107540616" TEXT="P= 1*2*3*...n*y/x"/>
<node CREATED="1378107549647" ID="ID_1923620863" MODIFIED="1378107561302" TEXT="Solve these two eqns"/>
</node>
<node CREATED="1378107568521" FOLDED="true" ID="ID_802044954" MODIFIED="1378109775656" TEXT="make two eqns using xor">
<node CREATED="1378109364972" ID="ID_1609375000" MODIFIED="1378109419844" TEXT="a xor b = 1 xor 2 xor 3 xor arr[1] xor arr[2] xor ..."/>
<node CREATED="1378109438031" ID="ID_1336537775" MODIFIED="1378109463998" TEXT="take one of the set bits in a xor b"/>
<node CREATED="1378109466170" ID="ID_1077647242" MODIFIED="1378109517965" TEXT="divide number sequence into two sets"/>
<node CREATED="1378109486700" ID="ID_916696612" MODIFIED="1378109496309" TEXT="seqA: where that bit is set"/>
<node CREATED="1378109496638" ID="ID_367823387" MODIFIED="1378109502450" TEXT="seqB: where that bit is not set"/>
<node CREATED="1378109519527" ID="ID_1099838003" MODIFIED="1378109527683" TEXT="divide input sequnce into two sets"/>
<node CREATED="1378109528027" ID="ID_731523740" MODIFIED="1378109536761" TEXT="seqM: where that bit is set"/>
<node CREATED="1378109537136" ID="ID_1462092402" MODIFIED="1378109542620" TEXT="seqN: where that bit is not set"/>
<node CREATED="1378109543182" ID="ID_512113686" MODIFIED="1378109559041" TEXT="seqA xor seqM gives a number"/>
<node CREATED="1378109559369" ID="ID_258913487" MODIFIED="1378109567822" TEXT="seqB xor seqN gives another"/>
<node CREATED="1378109576134" ID="ID_1343458382" MODIFIED="1378109595555" TEXT="eg: 1,2,3,4,5 and 1,2,3,3,4,5">
<node CREATED="1378109600602" ID="ID_1917652359" MODIFIED="1378109604414" TEXT="xor gives 3"/>
</node>
<node CREATED="1378109605726" ID="ID_479608389" MODIFIED="1378109650068" TEXT="eg: 6,7,9,10 and 6,7,8,9,10 ">
<node CREATED="1378109650849" ID="ID_1100581622" MODIFIED="1378109656521" TEXT="xor gives 8"/>
</node>
<node CREATED="1378109745673" FOLDED="true" ID="ID_387239053" MODIFIED="1378109774813" TEXT="can optimize on space">
<node CREATED="1378109753345" ID="ID_1252336994" MODIFIED="1378109760469" TEXT="no need to store the sets"/>
<node CREATED="1378109760844" ID="ID_18195507" MODIFIED="1378109773203" TEXT="just find the xor while running through"/>
</node>
</node>
</node>
</node>
</map>
