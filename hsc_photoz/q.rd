<resource schema="hsc_photoz">
  <meta name="title">HSC PDR2 photometric redshifts</meta>
  <meta name="creationDate">20190710</meta>
  <meta name="description">
    HSC Bayesian photometric redshifts from PDR2. Info at https://hsc-release.mtk.nao.ac.jp/doc/index.php/photometric-redshifts-pdr2/
  </meta>
  <meta name="creator.name">Shirley, R.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>

  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains photometric redshifts from HSC PDR2.
    
    History
    -------

    ======== ============================================
    20200309 First publication
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
      primary="object_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />
    <index columns="object_id" />
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
    <column name="object_id"
      tablehead="object_id"
      type="text"
      ucd="meta.id;meta.main"
      description="Unique ID in 64bit integer. Be careful not to have it converted to a 32bit integer or 64bit floating point."
      required="True"
      verbLevel="1" />
    <column name="ra"
      tablehead="ra"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="dec"
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
      description="HEALPix index of the source position at order 13 using 
      the nested scheme."
      required="True"
      verbLevel="30" />
      
      
    <!-- We are currently ignoring ucds for bulk of columns due to laziness
    It is possble to get GAVO to suggest these. What about units? -->
    <column name="g_cmodel_mag"
            tablehead="g_cmodel_mag"
            type="double precision"
            unit="mag"
            description="g-band magnitude from the final cmodel fit"
            verbLevel="1" /> 
    <column name="g_cmodel_magsigma"
            tablehead="g_cmodel_magsigma"
            type="double precision"
            unit="mag"
            description="g-band magnitude uncertainty from the final cmodel fit"
            verbLevel="1" /> 
    <column name="r_cmodel_mag"
            tablehead="r_cmodel_mag"
            type="double precision"
            unit="mag"
            description="r-band magnitude from the final cmodel fit"
            verbLevel="1" /> 
    <column name="r_cmodel_magsigma"
            tablehead="r_cmodel_magsigma"
            type="double precision"
            unit="mag"
            description="r-band magnitude uncertainty from the final cmodel fit"
            verbLevel="1" /> 
    <column name="i_cmodel_mag"
            tablehead="i_cmodel_mag"
            type="double precision"
            unit="mag"
            description="i-band magnitude from the final cmodel fit"
            verbLevel="1" /> 
    <column name="i_cmodel_magsigma"
            tablehead="i_cmodel_magsigma"
            type="double precision"
            unit="mag"
            description="i-band magnitude uncertainty from the final cmodel fit"
            verbLevel="1" /> 
    <column name="z_cmodel_mag"
            tablehead="z_cmodel_mag"
            type="double precision"
            unit="mag"
            description="z-band magnitude from the final cmodel fit"
            verbLevel="1" /> 
    <column name="z_cmodel_magsigma"
            tablehead="z_cmodel_magsigma"
            type="double precision"
            unit="mag"
            description="z-band magnitude uncertainty from the final cmodel fit"
            verbLevel="1" /> 
    <column name="y_cmodel_mag"
            tablehead="y_cmodel_mag"
            type="double precision"
            unit="mag"
            description="y-band magnitude from the final cmodel fit"
            verbLevel="1" /> 
    <column name="y_cmodel_magsigma"
            tablehead="y_cmodel_magsigma"
            type="double precision"
            unit="mag"
            description="y-band magnitude uncertainty from the final cmodel fit"
            verbLevel="1" /> 

    <column name="photoz_best"
            tablehead="photoz_best"
            type="double precision"
            description="Redshift chosen so that the risk would be minimal (See photoz_risk_best, not included in VOX yet.)"
            verbLevel="1" /> 
    <column name="photoz_std_best"
            tablehead="photoz_std_best"
            type="double precision"
            description="Standard deviation around photoz_best"
            verbLevel="1" /> 
    <column name="stellar_mass"
            tablehead="stellar_mass"
            type="double precision"
            unit="Msun"
            description="Median stellar mass [Msun]"
            verbLevel="1" />     
    <column name="stellar_mass_err68_min"
            tablehead="stellar_mass_err68_min"
            type="double precision"
            unit="Msun"
            description="Lower bound of the 68% confidence interval of stellar_mass [Msun]"
            verbLevel="1" />     
    <column name="stellar_mass_err68_max"
            tablehead="stellar_mass_err68_max"
            type="double precision"
            unit="Msun"
            description="Upper bound of the 68% confidence interval of stellar_mass [Msun]"
            verbLevel="1" />     
    <column name="sfr"
            tablehead="sfr"
            type="double precision"
            unit="Msun/yr"
            description="Median star formation rate [Msun/yr]"
            verbLevel="1" />     
    <column name="sfr_err68_min"
            tablehead="sfr_err68_min"
            type="double precision"
            unit="Msun/yr"
            description="Lower bound of the 68% confidence interval of sfr [Msun/yr]"
            verbLevel="1" />     
    <column name="sfr_err68_max"
            tablehead="sfr_err68_max"
            type="double precision"
            unit="Msun/yr"
            description="Upper bound of the 68% confidence interval of sfr [Msun/yr]"
            verbLevel="1" />     

 

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
    <meta name="title">HSC PDR2 photoz</meta>
    <meta name="shortName">HSC</meta>
    <meta name="testQuery">
      <meta name="RA">150.1</meta>
      <meta name="DEC">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="field" />
      <condDesc buildFrom="object_id" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
