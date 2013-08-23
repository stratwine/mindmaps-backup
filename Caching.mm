<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1376635714916" ID="ID_733395362" MODIFIED="1377241071707" TEXT="Caching">
<node CREATED="1376642323509" FOLDED="true" ID="ID_1635822941" MODIFIED="1376642444408" POSITION="right" TEXT="Multilevel caches">
<node CREATED="1376642384130" ID="ID_936481998" MODIFIED="1376642421300" TEXT="Check first level. Hit ? Proceed. Else Check L2 Cache"/>
<node CREATED="1376642336196" ID="ID_1461071083" MODIFIED="1376642363210">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Larger caches have better hit rates
    </p>
    <p>
      but longer latency
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1376641695346" ID="ID_20713717" MODIFIED="1376642448251" POSITION="right" TEXT="Various caches">
<node CREATED="1376641767060" FOLDED="true" ID="ID_1057186717" MODIFIED="1376642451313" TEXT="Disk Cache">
<node CREATED="1376641797012" ID="ID_1568639886" MODIFIED="1376641823572" TEXT="Eg: Page Cache in Main memory"/>
<node CREATED="1376635733587" ID="ID_256337414" MODIFIED="1376642435846" TEXT="ORM">
<node CREATED="1376635742071" ID="ID_70715947" MODIFIED="1376635745071" TEXT="Hibernate">
<node CREATED="1376635748696" ID="ID_1593082435" MODIFIED="1376635753320" TEXT="First Level Cache">
<node CREATED="1376635759835" ID="ID_579566459" MODIFIED="1376635905029">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Session<br />(Any operation in same session
    </p>
    <p>
      happens with the loaded entities)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1376635753898" ID="ID_1995190808" MODIFIED="1376635758320" TEXT="Second Level Cache">
<node CREATED="1376635765085" ID="ID_960596707" MODIFIED="1376635819019">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      At Session Factory Level<br />Across sessions
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1376635739181" ID="ID_29705485" MODIFIED="1376635741524" TEXT="JPA">
<node CREATED="1376635913310" ID="ID_963053107" MODIFIED="1376635918966" TEXT="First Level Cache">
<node CREATED="1376635926825" ID="ID_1346863312" MODIFIED="1376635930934" TEXT="Persistence Context"/>
</node>
<node CREATED="1376635919482" ID="ID_845325045" MODIFIED="1376635923497" TEXT="Second Level Cache">
<node CREATED="1376635936105" ID="ID_1231292540" MODIFIED="1376635951136" TEXT="Across Persistence Contexts"/>
</node>
</node>
</node>
</node>
<node CREATED="1376641844243" FOLDED="true" ID="ID_690211313" MODIFIED="1376642440642" TEXT="Web Cache">
<node CREATED="1376642002030" ID="ID_1240275770" MODIFIED="1376642013029" TEXT="Reduce bandwidth. Improve responsiveness"/>
<node CREATED="1376641922566" ID="ID_1436591909" MODIFIED="1376641941705" TEXT="P2P cache when important files are stored in ISP cache"/>
<node CREATED="1376641892255" ID="ID_685819484" MODIFIED="1376641902020" TEXT="ISP servers might employ caching proxy servers"/>
<node CREATED="1376641869132" ID="ID_1541005187" MODIFIED="1376641879538" TEXT="Web Proxies employ cache"/>
<node CREATED="1376641854711" ID="ID_1818829498" MODIFIED="1376641861789" TEXT="Web browsers employ cache"/>
</node>
<node CREATED="1376641700752" FOLDED="true" ID="ID_247133098" MODIFIED="1376642440017" TEXT="CPU Cache">
<node CREATED="1376641705580" ID="ID_1918524643" MODIFIED="1376641713376" TEXT="From the hardware"/>
<node CREATED="1376641714923" ID="ID_1985274693" MODIFIED="1376641728016" TEXT="Eg: Instruction cache, Data Cache"/>
<node CREATED="1376641729141" ID="ID_1525623523" MODIFIED="1376641752514" TEXT="Can be better than a bigger RAM"/>
</node>
</node>
<node CREATED="1376636135671" FOLDED="true" ID="ID_1655782679" MODIFIED="1376642445595" POSITION="right" TEXT="General Concepts">
<node CREATED="1376637069861" ID="ID_414845853" MODIFIED="1376637074673" TEXT="Design Considerations">
<node CREATED="1376636291067" ID="ID_1446802706" MODIFIED="1376636299457" TEXT="Problems: Stale Data"/>
<node CREATED="1376636352673" ID="ID_1429107409" MODIFIED="1376636371859" TEXT="Cost: To save cost, cache memory is generally small"/>
<node CREATED="1376636233633" ID="ID_484556931" MODIFIED="1376636266662" TEXT="When to use: On data that is queried frequently but modified rarely"/>
</node>
<node CREATED="1376637089750" ID="ID_268974870" MODIFIED="1376637111749" TEXT="Locality Of Reference">
<node CREATED="1376637155090" ID="ID_644429151" MODIFIED="1376637159074" TEXT="Spatial Locality">
<node CREATED="1376637204587" ID="ID_1432152450" MODIFIED="1376637212930" TEXT="Physically Close "/>
</node>
<node CREATED="1376637141591" ID="ID_1302426607" MODIFIED="1376637146044" TEXT="Temporal Locality">
<node CREATED="1376637177339" ID="ID_558268686" MODIFIED="1376637194103" TEXT="Recently Accessed Priority"/>
</node>
</node>
<node CREATED="1376637027989" ID="ID_358115017" MODIFIED="1376637850139" TEXT="Basic Terms">
<node CREATED="1376636173840" ID="ID_420491468" MODIFIED="1376636213588">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Cache Hit.&#160;
    </p>
    <p>
      When the entry is found in cache
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1376636142045" ID="ID_887284958" MODIFIED="1376636171075">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Cache Miss.
    </p>
    <p>
      When the entry is not found.
    </p>
    <p>
      Go and fetch from real store
    </p>
  </body>
</html></richcontent>
<node CREATED="1376637410480" ID="ID_1830808709" MODIFIED="1376637420714" TEXT="Replacement Policy"/>
<node CREATED="1376637422167" ID="ID_1032108807" MODIFIED="1376637450821">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The missed entry is fetched
    </p>
    <p>
      Some other entry might be evicted
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1376637460789" ID="ID_1682470854" MODIFIED="1376637463742" TEXT="LRU">
<node CREATED="1376637493240" ID="ID_1617139858" MODIFIED="1376637498537" TEXT="Implementation Ideas">
<node CREATED="1376637500271" ID="ID_1260346775" MODIFIED="1376637504614" TEXT="Use MinHeap">
<node CREATED="1376637896183" ID="ID_75805697" MODIFIED="1376637902136" TEXT="Deleting in MinHeap">
<node CREATED="1376637957007" ID="ID_303474321" MODIFIED="1376637980537" TEXT="Invoke sink operation from first element"/>
<node CREATED="1376637949727" ID="ID_923556719" MODIFIED="1376637956336" TEXT="Decrease the size by 1"/>
<node CREATED="1376637904604" ID="ID_1605446620" MODIFIED="1376637940212" TEXT="Swap the first element with the last"/>
</node>
<node CREATED="1376637512489" ID="ID_271659872" MODIFIED="1376637522707" TEXT="Discard lowest priority element"/>
</node>
<node CREATED="1376637989724" ID="ID_582916459" MODIFIED="1376637999723" TEXT="Double Sized Array">
<node CREATED="1376638000755" ID="ID_1159381971" MODIFIED="1376638844326" TEXT="Find median / partition"/>
</node>
</node>
</node>
</node>
<node CREATED="1376637397637" ID="ID_74708842" MODIFIED="1376637407808" TEXT="Replacement Policy"/>
</node>
</node>
<node CREATED="1376642543823" ID="ID_670301099" MODIFIED="1376642547479" POSITION="left" TEXT="Memoization"/>
<node CREATED="1377241073566" ID="ID_1674638802" MODIFIED="1377241075097" POSITION="left" TEXT="test"/>
</node>
</map>
