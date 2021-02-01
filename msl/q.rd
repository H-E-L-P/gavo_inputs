<resource schema="msl">
  <meta name="title">MSL</meta>
  <meta name="creationDate">20210201</meta>
  <meta name="description">
    MSL.
  </meta>
  <meta name="creator.name">Giles, P., Shirley, R. etc</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">X-ray</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains X ray counts flux.
    
    History
    -------
    
    ======== ============================================
    20210201 Prototype
    ======== ============================================
   
    

  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="XCSNAME">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "DEC"
    </stc>

<index columns="XCSNAME" />
<index columns="XMM_OBSID" />
<index columns="RA" />
<index columns="DEC" />
<index columns="SOFTCOUNTS" />
<index columns="SOFTCR" />
<index columns="SOFTFX" />
<index columns="HARDCOUNTS" />
<index columns="HARDCR" />
<index columns="HARDNESSRATIO" />
<index columns="SOFTSIG" />
<index columns="HARDSIG" />
<index columns="SOFTPPOINT" />
<index columns="CLASS" />
<index columns="MASTERID" />
<index columns="PSFFLAG" />
<index columns="POINTCONFLAG" />
<index columns="R1CONFLAG" />
<index columns="TARGETFLAG" />
<index columns="CLSOBSFLAG" />
<index columns="SNROBSFLAG" />





 <column name="XCSNAME"
      tablehead="XCSNAME"
      type="text"
      ucd="meta.id;meta.main"
      description="XCSNAME"
      required="True"
      verbLevel="1" />
<column name="XMM_OBSID"
      tablehead="XMM_OBSID"
      type="bigint"
      ucd="meta.id;obs.field"
      description="XMM_OBSID"
      required="True"
      verbLevel="1" />
<column name="RA"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="RA"
      required="True"
      verbLevel="1" />
<column name="DEC"
      tablehead="DEC"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="DEC"
      required="True"
      verbLevel="1" />
<column name="SOFTCOUNTS"
      tablehead="SOFTCOUNTS"
      type="double precision"
      ucd="phot.count"
      description="SOFTCOUNTS"
      required="True"
      verbLevel="1" />
<column name="SOFTCR"
      tablehead="SOFTCR"
      type="double precision"
      ucd="phot.count"
      description="SOFTCR"
      required="True"
      verbLevel="1" />
<column name="SOFTFX"
      tablehead="SOFTFX"
      type="double precision"
      ucd="phot.count"
      description="SOFTFX"
      required="True"
      verbLevel="1" />
<column name="HARDCOUNTS"
      tablehead="HARDCOUNTS"
      type="text"
      ucd="phot.count"
      description="HARDCOUNTS"
      required="True"
      verbLevel="1" />
<column name="HARDCR"
      tablehead="HARDCR"
      type="text"
      ucd="phot.count"
      description="HARDCR"
      required="True"
      verbLevel="1" />
<column name="HARDNESSRATIO"
      tablehead="HARDNESSRATIO"
      type="text"
      ucd="phot.count"
      description="HARDNESSRATIO"
      required="True"
      verbLevel="1" />
<column name="SOFTSIG"
      tablehead="SOFTSIG"
      type="text"
      ucd="phot.count"
      description="SOFTSIG"
      required="True"
      verbLevel="1" />
<column name="HARDSIG"
      tablehead="HARDSIG"
      type="text"
      ucd="phot.count"
      description="HARDSIG"
      required="True"
      verbLevel="1" />
<column name="SOFTPPOINT"
      tablehead="SOFTPPOINT"
      type="double precision"
      ucd="phot.count"
      description="SOFTPPOINT"
      required="True"
      verbLevel="1" />
<column name="CLASS"
      tablehead="CLASS"
      type="text"
      ucd="meta.code.qual"
      description="CLASS"
      required="True"
      verbLevel="1" />
<column name="MASTERID"
      tablehead="MASTERID"
      type="bigint"
      ucd="meta.id;obs.field"
      description="MASTERID"
      required="True"
      verbLevel="1" />
<column name="PSFFLAG"
      tablehead="PSFFLAG"
      type="text"
      ucd="meta.code.qual"
      description="PSFFLAG"
      required="True"
      verbLevel="1" />
<column name="POINTCONFLAG"
      tablehead="POINTCONFLAG"
      type="text"
      ucd="meta.code.qual"
      description="POINTCONFLAG"
      required="True"
      verbLevel="1" />
<column name="R1CONFLAG"
      tablehead="R1CONFLAG"
      type="text"
      ucd="meta.code.qual"
      description="R1CONFLAG"
      required="True"
      verbLevel="1" />
<column name="TARGETFLAG"
      tablehead="TARGETFLAG"
      type="text"
      ucd="meta.code.qual"
      description="TARGETFLAG"
      required="True"
      verbLevel="1" />
<column name="CLSOBSFLAG"
      tablehead="CLSOBSFLAG"
      type="text"
      ucd="meta.code.qual"
      description="CLSOBSFLAG"
      required="True"
      verbLevel="1" />
<column name="SNROBSFLAG"
      tablehead="SNROBSFLAG"
      type="text"
      ucd="meta.code.qual"
      description="SNROBSFLAG"
      required="True"
      verbLevel="1" />


  </table>

  <data id="import">
    <sources>
      <pattern>data/main/*.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps></simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">MSL</meta>
    <meta name="shortName">MSL</meta>
    <meta name="testQuery">
      <meta name="RA">64.7</meta>
      <meta name="DEC">55.4</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="XMM_OBSID" />
      <condDesc buildFrom="XCSNAME" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->