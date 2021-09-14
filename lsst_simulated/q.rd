<resource schema="lsst_simulated">
  <meta name="title">Simulated LSST fluxes</meta>
  <meta name="creationDate">20210914</meta>
  <meta name="description">
    Catalogue of simulated LSST fluxes .
  </meta>
  <meta name="creator.name">Riccio, G; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the simulated LSST fluxes presented in Riccio et al.
    
    History
    -------
    
    ======== ============================================
    20210914 First release
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
      primary="id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="id" />
    <index columns="ra" />
    <index columns="dec" />
    <index columns="redshift" />
    <index columns="LSST_u" />
    <index columns="LSST_u_err" />
    <index columns="LSST_g" />
    <index columns="LSST_g_err" />
    <index columns="LSST_r" />
    <index columns="LSST_r_err" />
    <index columns="LSST_i" />
    <index columns="LSST_i_err" />
    <index columns="LSST_z" />
    <index columns="LSST_z_err" />
    <index columns="LSST_y" />
    <index columns="LSST_y_err" />

    <column name="id"
      tablehead="id"
      type="text"
      ucd="meta.id;meta.main"
      description="HELP style identifier, based on J2000 position"
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
    <column name="redshift"
      tablehead="Redshift"
      type="real"
      ucd="src.redshift.phot"
      description="Photometric redshift obtained with EAZY."
      verbLevel="1" />
      
      
 <column name="LSST_u"
      tablehead="LSST_u"
      type="double precision"
      ucd="phot.flux;em.opt.U"
      unit="uJy"
      description="Predicted total flux density in the LSST u band measurement."
      verbLevel="1" />
    <column name="LSST_u_err"
      tablehead="LSST_u_err"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="Uncertainty on LSST_u."
      verbLevel="1" />
      
 <column name="LSST_g"
      tablehead="LSST_g"
      type="double precision"
      ucd="phot.flux;em.opt.G"
      unit="uJy"
      description="Predicted total flux density in the LSST g band measurement."
      verbLevel="1" />
    <column name="LSST_g_err"
      tablehead="LSST_g_err"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.G"
      unit="uJy"
      description="Uncertainty on LSST_g."
      verbLevel="1" />
      
 <column name="LSST_r"
      tablehead="LSST_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Predicted total flux density in the LSST r band measurement."
      verbLevel="1" />
    <column name="LSST_r_err"
      tablehead="LSST_r_err"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on LSST_r."
      verbLevel="1" />
      
 <column name="LSST_i"
      tablehead="LSST_i"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Predicted total flux density in the LSST i band measurement."
      verbLevel="1" />
    <column name="LSST_i_err"
      tablehead="LSST_i_err"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on LSST_i."
      verbLevel="1" />
      
 <column name="LSST_z"
      tablehead="LSST_z"
      type="double precision"
      ucd="phot.flux;em.opt.Z"
      unit="uJy"
      description="Predicted total flux density in the LSST z band measurement."
      verbLevel="1" />
    <column name="LSST_z_err"
      tablehead="LSST_z_err"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.Z"
      unit="uJy"
      description="Uncertainty on LSST_z."
      verbLevel="1" />
      
 <column name="LSST_y"
      tablehead="LSST_y"
      type="double precision"
      ucd="phot.flux;em.opt.Y"
      unit="uJy"
      description="Predicted total flux density in the LSST y band measurement."
      verbLevel="1" />
    <column name="LSST_y_err"
      tablehead="LSST_y_err"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.Y"
      unit="uJy"
      description="Uncertainty on LSST_y."
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
    <meta name="title">Main catalogue</meta>
    <meta name="shortName">Main</meta>
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
      <condDesc buildFrom="id" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->