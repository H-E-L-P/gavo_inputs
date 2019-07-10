<resource schema="herschelhelp">
  <meta name="title">DESI photometric redshifts</meta>
  <meta name="creationDate">20190708</meta>
  <meta name="description">
    DESI photometric redshifts from DR6 and DR7.
  </meta>
  <meta name="creator.name">Shirley, R.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>

  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains photometric redshifts from DESI Legacy survey DR6 and DR7.
    
    History
    -------

    ======== ============================================
    20190708 First publication
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
      primary="help_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />
    <index columns="desi_id" />
    <index columns="ra" />
    <index columns="dec" />
    <index columns="hp_idx" />

    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey"
      required="True"
      verbLevel="1" />
    <column name="desi_id"
      tablehead="DESI_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="DESI ID = RELEASE*10^12 + BRICKID*10^6 + OBJID"
      required="True"
      verbLevel="1" />
    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="hp_idx"
      tablehead="HP_Idx"
      type="bigint"
      ucd="pos.healpix"
      description="HEALPix index of the source position at order 13 using the nested scheme."
      required="True"
      verbLevel="30" />

    <column name="redshift_err"
      tablehead="Redshift_err"
      type="real"
      ucd="stat.error;src.redshift.phot"
      description="Error on photometric redshift."
      verbLevel="1" />
    <column name="redshift"
      tablehead="Redshift"
      type="real"
      ucd="src.redshift.phot"
      description="Photometric redshift."
      verbLevel="1" />
      
    <column name="zspec"
      tablehead="zSpec"
      type="real"
      ucd="src.redsfhit"
      description="Spectroscopic redshift if available."
      verbLevel="1" />
    <column name="zspec_qual"
      tablehead="zSpec_qual"
      type="smallint"
      ucd="meta.code.qual;src.redshift"
      description="Spectroscopic redshift quality flag. FIXME code meaning."
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>






  </table>

  <data id="import">
    <sources>
      <pattern>data/*.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps></simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">DESI DR6 DR7</meta>
    <meta name="shortName">DESI</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="field" />
      <condDesc buildFrom="desi_id" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->