<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1384151542967" ID="ID_1842453903" MODIFIED="1384151549576" TEXT="Security">
<node CREATED="1384153237533" FOLDED="true" ID="ID_1247156223" MODIFIED="1384251602856" POSITION="right" TEXT="authorization">
<node CREATED="1384153281376" ID="ID_1685669406" MODIFIED="1384153288298" TEXT="security roles are to be defined"/>
<node CREATED="1384153432062" ID="ID_934182776" MODIFIED="1384153436171" TEXT="auth-constraint"/>
<node CREATED="1384153492669" ID="ID_87347388" MODIFIED="1384153511841">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      roles in application must be mapped to<br />users and groups
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1384153078488" FOLDED="true" ID="ID_1594661107" MODIFIED="1384153343625" POSITION="right" TEXT="authentication">
<node CREATED="1384153087706" ID="ID_1278486168" MODIFIED="1384153098113" TEXT="you&apos;re indeed what you claim you are"/>
<node CREATED="1384153099316" FOLDED="true" ID="ID_1777026603" MODIFIED="1384153198596" TEXT="username / passwords">
<node CREATED="1384153110347" FOLDED="true" ID="ID_814734188" MODIFIED="1384153197971" TEXT="basic">
<node CREATED="1384153116378" ID="ID_1873855056" MODIFIED="1384153130066" TEXT="server generated username / password prompt"/>
</node>
<node CREATED="1384153111863" FOLDED="true" ID="ID_442446399" MODIFIED="1384153196737" TEXT="form">
<node CREATED="1384153132987" ID="ID_1038038377" MODIFIED="1384153154425" TEXT="programmer designed prompt page"/>
<node CREATED="1384153157800" FOLDED="true" ID="ID_1959474660" MODIFIED="1384153194502" TEXT="username / password could be from any realm">
<node CREATED="1384153174628" ID="ID_383914994" MODIFIED="1384153180987" TEXT="database is common"/>
<node CREATED="1384153181268" ID="ID_1947814973" MODIFIED="1384153183159" TEXT="file"/>
<node CREATED="1384153183502" ID="ID_960093956" MODIFIED="1384153193284" TEXT="in memory ?"/>
<node CREATED="1384153188034" ID="ID_1646150014" MODIFIED="1384153189487" TEXT="ldap"/>
</node>
</node>
</node>
<node CREATED="1384153292157" ID="ID_1914108541" MODIFIED="1384153325813" TEXT="applies to a web-resource-collection">
<node CREATED="1384153336735" ID="ID_1924492744" MODIFIED="1384153342094" TEXT="identified by url pattern"/>
</node>
</node>
<node CREATED="1384153367391" FOLDED="true" ID="ID_1814361397" MODIFIED="1384251600825" POSITION="right" TEXT="transport level">
<node CREATED="1384153927591" FOLDED="true" ID="ID_623205670" MODIFIED="1384163083147" TEXT="https">
<node CREATED="1384153933716" ID="ID_224705277" MODIFIED="1384153947387" TEXT="communication protocol for secure communication"/>
<node CREATED="1384153959653" ID="ID_717387226" MODIFIED="1384153969840" TEXT="it is technically not a protocol by itself"/>
<node CREATED="1384153970137" FOLDED="true" ID="ID_410563275" MODIFIED="1384163082334" TEXT="layering HTTP over SSL/TLS protocol">
<node CREATED="1384161504039" FOLDED="true" ID="ID_1064224915" MODIFIED="1384163081615" TEXT="SSL services">
<node CREATED="1384161508695" FOLDED="true" ID="ID_1731511920" MODIFIED="1384163081037" TEXT="Message Privacy">
<node CREATED="1384162087565" FOLDED="true" ID="ID_495705652" MODIFIED="1384162738776" TEXT="message sender: digital signatures are appended">
<node CREATED="1384162105159" ID="ID_387375033" MODIFIED="1384162734729" TEXT="digital signatures are typically the encrypted hash of the message"/>
<node CREATED="1384162200439" ID="ID_32639608" MODIFIED="1384162210314" TEXT="digital signatures are created using private keys"/>
<node CREATED="1384162690839" ID="ID_206968626" MODIFIED="1384162706636" TEXT="digital signatures might be created from the digest"/>
<node CREATED="1384162707464" ID="ID_1660328282" MODIFIED="1384162716604" TEXT="or they may be created from the whole message"/>
</node>
<node CREATED="1384162653136" ID="ID_404153191" MODIFIED="1384162975096" TEXT="message tampered, digital signature not tampered">
<node CREATED="1384162746619" FOLDED="true" ID="ID_1006757792" MODIFIED="1384162943704" TEXT="receiver applies the correct public key to decrypt the signature">
<node CREATED="1384162803136" ID="ID_301252518" MODIFIED="1384162882843" TEXT="thus hash1 is obtained"/>
<node CREATED="1384162883202" ID="ID_1854473751" MODIFIED="1384162895781" TEXT="receiver also creates the hash from the message (hash2)"/>
<node CREATED="1384162896171" ID="ID_412610931" MODIFIED="1384162908453" TEXT="if hash1 != hash2, message is tampered"/>
</node>
</node>
<node CREATED="1384163001050" FOLDED="true" ID="ID_229006692" MODIFIED="1384163080537" TEXT="message tampered, digital signagure accordinly tampered">
<node CREATED="1384163012551" ID="ID_1056036784" MODIFIED="1384163026161" TEXT="receiver checks who created the digital signature"/>
<node CREATED="1384163028973" ID="ID_1489419271" MODIFIED="1384163039661" TEXT="checks this using the public key (digital certificate)"/>
<node CREATED="1384163040646" ID="ID_192301867" MODIFIED="1384163051521" TEXT="this results in false"/>
<node CREATED="1384163052334" ID="ID_987467333" MODIFIED="1384163071865" TEXT="so this was not digitally signed by that trusted party"/>
<node CREATED="1384163072209" ID="ID_864840232" MODIFIED="1384163077146" TEXT="so tampering has happened"/>
</node>
</node>
<node CREATED="1384161514054" FOLDED="true" ID="ID_1600691044" MODIFIED="1384161703194" TEXT="Authentication">
<node CREATED="1384154052886" FOLDED="true" ID="ID_187261829" MODIFIED="1384159246372" TEXT="for ensuring one is indeed talking to the correct person">
<node CREATED="1384154446221" ID="ID_1781776312" MODIFIED="1384154455705" TEXT="protection against eavesdroppers"/>
<node CREATED="1384154456174" ID="ID_664570961" MODIFIED="1384154464080" TEXT="protection against man-in-the-middle"/>
</node>
<node CREATED="1384159267731" FOLDED="true" ID="ID_674912990" MODIFIED="1384161480570" TEXT="one side / two sides">
<node CREATED="1384159387603" ID="ID_70588458" MODIFIED="1384159389307" TEXT="one side">
<node CREATED="1384154113495" ID="ID_65770928" MODIFIED="1384159370354">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      can give some protection, even if only one side
    </p>
    <p>
      of the communication is authenticated
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1384154186774" ID="ID_361299764" MODIFIED="1384159371276" TEXT="transactions">
<node CREATED="1384154190259" ID="ID_1821208705" MODIFIED="1384154202821" TEXT="only the server side is authenticated"/>
</node>
</node>
<node CREATED="1384159377260" FOLDED="true" ID="ID_1920048209" MODIFIED="1384161480023" TEXT="two sides">
<node CREATED="1384159410134" ID="ID_841104550" MODIFIED="1384159428587" TEXT="billing product, only trusted clients can use this product"/>
<node CREATED="1384159435743" ID="ID_1987708177" MODIFIED="1384159442446" TEXT="so the client too has to verify itself"/>
</node>
<node CREATED="1384154703836" ID="ID_1163403994" MODIFIED="1384159363682" TEXT="how does a web browser know whom to trust ?">
<node CREATED="1384154732400" ID="ID_188542024" MODIFIED="1384154743385" TEXT="browsers have certificate authorities"/>
<node CREATED="1384154751120" ID="ID_1855802088" MODIFIED="1384154768699" TEXT="some certs are preinstalled  (verisign / microsoft)"/>
<node CREATED="1384159305589" ID="ID_1299545781" MODIFIED="1384159316917" TEXT="usually only one side of authentication is done"/>
</node>
</node>
</node>
</node>
<node CREATED="1384161753319" FOLDED="true" ID="ID_528782985" MODIFIED="1384162084456" TEXT="SSL handshake">
<node CREATED="1384161770959" ID="ID_4261134" MODIFIED="1384161778443" TEXT="X.509 certificates are shared"/>
<node CREATED="1384161783787" ID="ID_917038394" MODIFIED="1384161788475" TEXT="one way or two way"/>
<node CREATED="1384161805365" ID="ID_775717112" MODIFIED="1384161810412" TEXT="expiry dates are checked"/>
<node CREATED="1384161826099" ID="ID_1631187427" MODIFIED="1384161843521" TEXT="check for non-tampered signature of trusted third party"/>
<node CREATED="1384161873115" ID="ID_216067062" MODIFIED="1384161877708" TEXT="client generates random key"/>
<node CREATED="1384161878115" ID="ID_1687813741" MODIFIED="1384161886755" TEXT="client also uses server&apos;s public key"/>
<node CREATED="1384161887177" ID="ID_780717241" MODIFIED="1384161907036" TEXT="randomKey+publicKey --&gt; encrypt message --&gt;"/>
<node CREATED="1384161919927" ID="ID_65821610" MODIFIED="1384161927208" TEXT="server decrypts with the private key"/>
<node CREATED="1384161927614" ID="ID_838930312" MODIFIED="1384161959098" TEXT="if all is well, the same generated keys could be used throughout the session"/>
</node>
<node CREATED="1384158604793" FOLDED="true" ID="ID_1840617329" MODIFIED="1384161751053" TEXT="how the encryption works">
<node CREATED="1384158755228" FOLDED="true" ID="ID_1957020407" MODIFIED="1384161560976" TEXT="assymetric cryptography">
<node CREATED="1384158612247" FOLDED="true" ID="ID_1702045423" MODIFIED="1384158948471" TEXT="public key / private key for encryption">
<node CREATED="1384158619325" ID="ID_1571242815" MODIFIED="1384158629137" TEXT="public key is used to encrypt"/>
<node CREATED="1384158629450" ID="ID_1014142205" MODIFIED="1384158635653" TEXT="private key is used to decrypt"/>
<node CREATED="1384158695230" ID="ID_459168602" MODIFIED="1384158707135" TEXT="these two keys are mathematically linked"/>
<node CREATED="1384158638434" ID="ID_1887614679" MODIFIED="1384158656106" TEXT="during ssl handshake, the server gives the cert"/>
<node CREATED="1384158657043" ID="ID_251725438" MODIFIED="1384158661012" TEXT="that&apos;s the key"/>
<node CREATED="1384158661309" ID="ID_498111945" MODIFIED="1384158673621" TEXT="the client encrpyts using the public key"/>
<node CREATED="1384158673918" ID="ID_1068549721" MODIFIED="1384158682293" TEXT="now, only the server can decrypt"/>
<node CREATED="1384158682667" ID="ID_1942034220" MODIFIED="1384158690558" TEXT="since only the server has the private key"/>
</node>
<node CREATED="1384158954674" FOLDED="true" ID="ID_1091503547" MODIFIED="1384161559695" TEXT="message authentication">
<node CREATED="1384158973705" ID="ID_820480500" MODIFIED="1384159094484" TEXT="process the message or typically the hash / digest of the message"/>
<node CREATED="1384158997580" ID="ID_227304562" MODIFIED="1384159109531" TEXT="the result is called the digital signature"/>
<node CREATED="1384159022657" ID="ID_1923152170" MODIFIED="1384159034188" TEXT="this sign can be verified by using the public key"/>
<node CREATED="1384159118374" ID="ID_929281638" MODIFIED="1384159130562" TEXT="verifies that only the owner (of the private key) had signed it"/>
<node CREATED="1384159130952" ID="ID_6218274" MODIFIED="1384159143733" TEXT="verifies that the message has not been modified in transit"/>
</node>
<node CREATED="1384158855646" ID="ID_1049523526" MODIFIED="1384158870052" TEXT="security is achieved by the private key"/>
<node CREATED="1384158886427" ID="ID_1968289645" MODIFIED="1384158904739">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      strength: impossible to determine private key
    </p>
    <p>
      from the public key
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1384154219789" FOLDED="true" ID="ID_957107470" MODIFIED="1384161751647" TEXT="creates a secure channel via an insecure network">
<node CREATED="1384161726647" FOLDED="true" ID="ID_417330595" MODIFIED="1384161746272" TEXT="what&apos;s safe">
<node CREATED="1384154540281" FOLDED="true" ID="ID_1121550484" MODIFIED="1384158600356" TEXT="some of the underlying http stuff can be encrypted">
<node CREATED="1384154560265" ID="ID_1964285517" MODIFIED="1384154562859" TEXT="cookies"/>
<node CREATED="1384154563687" ID="ID_1736616398" MODIFIED="1384154568108" TEXT="request parameters"/>
<node CREATED="1384154588829" ID="ID_52057718" MODIFIED="1384154596376" TEXT="request url"/>
<node CREATED="1384154573718" ID="ID_937144750" MODIFIED="1384154575687" TEXT="headers"/>
<node CREATED="1384154661802" ID="ID_1308224876" MODIFIED="1384154666537" TEXT="content of the communication"/>
<node CREATED="1384154666912" ID="ID_1976135567" MODIFIED="1384154669006" TEXT="internal url"/>
</node>
<node CREATED="1384154615986" FOLDED="true" ID="ID_1188035893" MODIFIED="1384158601762" TEXT="the tcp part cannot be hidden">
<node CREATED="1384154627159" ID="ID_420986456" MODIFIED="1384154630941" TEXT="hostname"/>
<node CREATED="1384154631191" ID="ID_1219401076" MODIFIED="1384154632597" TEXT="port"/>
</node>
</node>
</node>
</node>
<node CREATED="1384161647944" FOLDED="true" ID="ID_1414174215" MODIFIED="1384161697819" TEXT="requires SSL capable server">
<node CREATED="1384161662116" ID="ID_1529372298" MODIFIED="1384161677413" TEXT="most such servers take ssl connections on port 443"/>
</node>
</node>
<node CREATED="1384153930731" ID="ID_122722668" MODIFIED="1384153932497" TEXT="http"/>
</node>
<node CREATED="1384251605497" ID="ID_1450473572" MODIFIED="1384251607809" POSITION="right" TEXT="JEE">
<node CREATED="1384251610746" ID="ID_1019426094" MODIFIED="1384251617496" TEXT="Security terms">
<node CREATED="1384251618199" ID="ID_735622014" MODIFIED="1384251640620" TEXT="Principal (person / login / company) referring to an identity"/>
<node CREATED="1384251856281" ID="ID_1095161477" MODIFIED="1384251860671" TEXT="User"/>
<node CREATED="1384251876092" ID="ID_672323459" MODIFIED="1384251880248" TEXT="UserGroup"/>
<node CREATED="1384251861030" ID="ID_34500355" MODIFIED="1384251864015" TEXT="Role"/>
<node CREATED="1384251864327" ID="ID_1071904524" MODIFIED="1384251866889" TEXT="Permission"/>
<node CREATED="1384251894857" ID="ID_604044710" MODIFIED="1384251897107" TEXT="Realm"/>
<node CREATED="1384251642292" FOLDED="true" ID="ID_1477740147" MODIFIED="1384251693352" TEXT="Subject">
<node CREATED="1384251645776" ID="ID_1230375805" MODIFIED="1384251656760" TEXT="3 Principals may all refer to the same person"/>
<node CREATED="1384251666697" ID="ID_1144392516" MODIFIED="1384251676743" TEXT="eg: licenseNo"/>
<node CREATED="1384251677087" ID="ID_1012581694" MODIFIED="1384251684961" TEXT="empId"/>
<node CREATED="1384251685352" ID="ID_1132650343" MODIFIED="1384251690867" TEXT="username"/>
</node>
<node CREATED="1384251694430" FOLDED="true" ID="ID_1081110118" MODIFIED="1384251793862" TEXT="SecurityContext">
<node CREATED="1384251701476" ID="ID_512089675" MODIFIED="1384251790456" TEXT="that encapsulated object which is passed along"/>
<node CREATED="1384251711038" ID="ID_226940759" MODIFIED="1384251784925" TEXT="at different calls"/>
</node>
<node CREATED="1384251918184" ID="ID_538990394" MODIFIED="1384251921246" TEXT="Propogation">
<node CREATED="1384251956072" ID="ID_676904108" MODIFIED="1384251967025" TEXT="web layer to ejb layer"/>
<node CREATED="1384251968259" ID="ID_638245972" MODIFIED="1384251986446" TEXT="ejb to another ejb"/>
</node>
</node>
</node>
</node>
</map>
