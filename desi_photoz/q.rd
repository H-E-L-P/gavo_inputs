<resource schema="desi_photoz">
  <meta name="title">DESI photometric redshifts</meta>
  <meta name="creationDate">20190710</meta>
  <meta name="description">
    DESI photometric redshifts from DR6 and DR7. Info at http://batc.bao.ac.cn/~zouhu/online-data/desi_photoz/
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
    20190710 First publication
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
      primary="ID">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "DEC"
    </stc>

    <index columns="field" />
    <index columns="ID" />
    <index columns="RA" />
    <index columns="DEC" />
    <index columns="hp_idx" />

    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey"
      required="True"
      verbLevel="1" />
    <column name="ID"
      tablehead="ID"
      type="text"
      ucd="meta.id;meta.main"
      description="DESI ID = RELEASE*10^12 + BRICKID*10^6 + OBJID"
      required="True"
      verbLevel="1" />
    <column name="RA"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="DEC"
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
      description="HEALPix index of the source position at order 13 using 
      the nested scheme."
      required="True"
      verbLevel="30" />
      
      
    <!-- We are currently ignoring ucds for bulk of columns due to laziness
    It is possble to get GAVO to suggest these. What about units? -->
    <column name="MAG_G"
            tablehead="MAG_G"
            type="double precision"
            unit="mag"
            description="g-band magnitude"
            verbLevel="1" /> 
    <column name="MAG_R"
            tablehead="MAG_R"
            type="double precision"
            unit="mag"
            description="r-band magnitude"
            verbLevel="1" /> 
    <column name="MAG_Z"
            tablehead="MAG_Z"
            type="double precision"
            unit="mag"
            description="z-band mangitude"
            verbLevel="1" /> 
    <column name="MAG_W1"
            tablehead="MAG_W1"
            type="double precision"
            unit="mag"
            description="w1-band magnitdue"
            verbLevel="1" /> 
    <column name="MAG_W2"
            tablehead="MAG_W2"
            type="double precision"
            unit="mag"
            description="w2-band magnitude"
            verbLevel="1" /> 
    <column name="MAGERR_G"
            tablehead="MAGERR_G"
            type="double precision"
            unit="mag"
            description="g-band magnitude error"
            verbLevel="1" /> 
    <column name="MAGERR_R"
            tablehead="MAGERR_R"
            type="double precision"
            unit="mag"
            description="r-band magnitude error"
            verbLevel="1" /> 
    <column name="MAGERR_Z"
            tablehead="MAGERR_Z"
            unit="mag"
            type="double precision"
            description="z-band magnitude error"
            verbLevel="1" /> 
    <column name="MAGERR_W1"
            tablehead="MAGERR_W1"
            type="double precision"
            description="w1-band magnitude error"
            verbLevel="1" /> 
    <column name="MAGERR_W2"
            tablehead="MAGERR_W2"
            unit="mag"
            type="double precision"
            description="w2-band magnitude error"
            verbLevel="1" /> 
    <column name="GALDEPTH_G"
            tablehead="GALDEPTH_G"
            type="double precision"
            description="galaxy depth in g band"
            verbLevel="1" /> 
    <column name="GALDEPTH_R"
            tablehead="GALDEPTH_R"
            type="double precision"
            description="galaxy depth in r band"
            verbLevel="1" /> 
    <column name="GALDEPTH_Z"
            tablehead="GALDEPTH_Z"
            type="double precision"
            description="galaxy depth in z band"
            verbLevel="1" /> 
    <column name="TYPE"
            tablehead="TYPE"
            type="text"
            description="Tractor Type"
            verbLevel="1" />  
    <column name="FRACFLUX_G"
            tablehead="FRACFLUX_G"
            type="double precision"
            description="Profile-weighted fraction of the flux from other sources in g (typically [0, 1])"
            verbLevel="1" /> 
    <column name="FRACFLUX_R"
            tablehead="FRACFLUX_R"
            type="double precision"
            description="Profile-weighted fraction of the flux from other sources in r (typically [0, 1]) "
            verbLevel="1" /> 
    <column name="FRACFLUX_Z"
            tablehead="FRACFLUX_Z"
            type="double precision"
            description="Profile-weighted fraction of the flux from other sources in z (typically [0, 1]) "
            verbLevel="1" /> 
    <column name="FRACFLUX_W1"
            tablehead="FRACFLUX_W1"
            type="double precision"
            description="Profile-weighted fraction of the flux from other sources in W1 (typically [0, 1])"
            verbLevel="1" /> 
    <column name="FRACFLUX_W2"
            tablehead="FRACFLUX_W2"
            type="double precision"
            description="Profile-weighted fraction of the flux from other sources in W2 (typically [0, 1])"
            verbLevel="1" /> 
    <column name="FRACMASKED_G"
            tablehead="FRACMASKED_G"
            type="double precision"
            description="Profile-weighted fraction of pixels masked in g, strictly between [0,1]"
            verbLevel="1" /> 
    <column name="FRACMASKED_R"
            tablehead="FRACMASKED_R"
            type="double precision"
            description="Profile-weighted fraction of pixels masked in r, strictly between [0,1]"
            verbLevel="1" /> 
    <column name="FRACMASKED_Z"
            tablehead="FRACMASKED_Z"
            type="double precision"
            description="Profile-weighted fraction of pixels masked in z, strictly between [0,1]"
            verbLevel="1" /> 
    <column name="FRACIN_G"
            tablehead="FRACIN_G"
            type="double precision"
            description="Fraction of a source's flux within the blob in g, near unity for real sources"
            verbLevel="1" /> 
    <column name="FRACIN_R"
            tablehead="FRACIN_R"
            type="double precision"
            description="Fraction of a source's flux within the blob in r, near unity for real sources"
            verbLevel="1" /> 
    <column name="FRACIN_Z"
            tablehead="FRACIN_Z"
            type="double precision"
            description="Fraction of a source's flux within the blob in z, near unity for real sources"
            verbLevel="1" /> 
    <column name="ANYMASK_G"
            tablehead="ANYMASK_G"
            type="bigint"
            description="Bitwise mask set if the central pixel from any image satisfies each condition in g"
            verbLevel="1" >
        <values nullLiteral="-1" />
    </column>
    <column name="ANYMASK_R"
            tablehead="ANYMASK_R"
            type="bigint"
            description="Bitwise mask set if the central pixel from any image satisfies each condition in r"
            verbLevel="1" >
        <values nullLiteral="-1" />
    </column>
    <column name="ANYMASK_Z"
            tablehead="ANYMASK_Z"
            type="bigint"
            description="Bitwise mask set if the central pixel from any image satisfies each condition in z"
            verbLevel="1" >
        <values nullLiteral="-1" />
    </column> 

    <column name="n_neighbour"
            tablehead="n_neighbour"
            type="bigint"
            description="number of neighbours"
            verbLevel="1" >
        <values nullLiteral="-1" />
    </column> 
    <column name="n_filter"
            tablehead="n_filter"
            type="bigint"
            description="number of filters having colors in color cuts"
            verbLevel="1" >
        <values nullLiteral="-1" />
    </column>
    <column name="photo_z"
            tablehead="photo_z"
            type="double precision"
            description="estimated photo-z value"
            verbLevel="1" /> 
    <column name="photo_zerr"
            tablehead="photo_zerr"
            type="double precision"
            description="estimated photo-z error"
            verbLevel="1" /> 
    <column name="spec_z"
            tablehead="spec_z"
            type="double precision"
            description="sepctroscopic redshift if available "
            verbLevel="1" /> 
    <column name="mean_z"
            tablehead="mean_z"
            type="double precision"
            description="mean redshift of neigbours"
            verbLevel="1" /> 
    <column name="nearest_z"
            tablehead="nearest_z"
            type="double precision"
            description="nearest redshift of neighbours"
            verbLevel="1" /> 
    <column name="mean_dis"
            tablehead="mean_dis"
            type="double precision"
            description="mean Ecludean distance in the color space of neighbours"
            verbLevel="1" /> 
    <column name="CHI_BEST"
            tablehead="CHI_BEST"
            type="double precision"
            description="Chi2 of the best fitting "
            verbLevel="1" /> 
    <column name="MOD_BEST"
            tablehead="MOD_BEST"
            type="bigint"
            description="ID of BC03 model spectra"
            verbLevel="1" >
        <values nullLiteral="-1" />
    </column>
    <column name="EBV_BEST"
            tablehead="EBV_BEST"
            type="double precision"
            description="Best fitted intrinsic extinction in E(B-V), three values: 0, 0.5, 1.0"
            verbLevel="1" /> 
    <column name="SCALE_BEST"
            tablehead="SCALE_BEST"
            type="double precision"
            description="Scale factor between observed SED and model SED"
            verbLevel="1" /> 
    <column name="MAG_ABS_G"
            tablehead="MAG_ABS_G"
            type="double precision"
            unit="mag"
            description="Absolute magnitude in g band"
            verbLevel="1" /> 
    <column name="MAG_ABS_R"
            tablehead="MAG_ABS_R"
            type="double precision"
            unit="mag"
            description="Absolute magnitude in r band"
            verbLevel="1" /> 
    <column name="MAG_ABS_Z"
            tablehead="MAG_ABS_Z"
            type="double precision"
            unit="mag"
            description="Absolute magnitude in z band"
            verbLevel="1" /> 
    <column name="MAG_ABS_W1"
            tablehead="MAG_ABS_W1"
            type="double precision"
            unit="mag"
            description="Absolute magnitude in w1 band"
            verbLevel="1" /> 
    <column name="MAG_ABS_W2"
            tablehead="MAG_ABS_W2"
            type="double precision"
            unit="mag"
            description="Absolute magnitude in w2 band"
            verbLevel="1" /> 
    <column name="AGE_BEST"
            tablehead="AGE_BEST"
            type="double precision"
            unit="yr"
            description="Best fitted age in yr"
            verbLevel="1" /> 
    <column name="AGE_INF"
            tablehead="AGE_INF"
            type="double precision"
            unit="yr"
            description="Lower 68% age uncertainty "
            verbLevel="1" /> 
    <column name="AGE_MED"
            tablehead="AGE_MED"
            type="double precision"
            unit="yr"
            description="Median age "
            verbLevel="1" /> 
    <column name="AGE_SUP"
            tablehead="AGE_SUP"
            type="double precision"
            unit="yr"
            description="Upper 68% age uncertainty"
            verbLevel="1" /> 
    <column name="MASS_BEST"
            tablehead="MASS_BEST"
            type="double precision"
            description="Best estimated stellar mass in log(M_sun)"
            verbLevel="1" /> 
    <column name="MASS_INF"
            tablehead="MASS_INF"
            type="double precision"
            description="Lower 68% mass uncertainty "
            verbLevel="1" /> 
    <column name="MASS_MED"
            tablehead="MASS_MED"
            type="double precision"
            description="Median mass "
            verbLevel="1" /> 
    <column name="MASS_SUP"
            tablehead="MASS_SUP"
            type="double precision"
            description="Upper 68% mass uncertainty"
            verbLevel="1" /> 
    <column name="SFR_BEST"
            tablehead="SFR_BEST"
            type="double precision"
            description="Best estimated SFR in M_sun/yr"
            verbLevel="1" /> 
    <column name="SFR_INF"
            tablehead="SFR_INF"
            type="double precision"
            description="Lower 68% SFR uncertainty "
            verbLevel="1" /> 
    <column name="SFR_MED"
            tablehead="SFR_MED"
            type="double precision"
            description="Median SFR "
            verbLevel="1" /> 
    <column name="SFR_SUP"
            tablehead="SFR_SUP"
            type="double precision"
            description="Upper 68% SFR uncertainty"
            verbLevel="1" /> 
    <column name="SSFR_BEST"
            tablehead="SSFR_BEST"
            type="double precision"
            description="Best estimated SSFR, in yr^-1"
            verbLevel="1" /> 
    <column name="SSFR_INF"
            tablehead="SSFR_INF"
            type="double precision"
            description="Lower 68% SSFR uncertainty "
            verbLevel="1" /> 
    <column name="SSFR_MED"
            tablehead="SSFR_MED"
            type="double precision"
            description="Median SSFR "
            verbLevel="1" /> 
    <column name="SSFR_SUP"
            tablehead="SSFR_SUP"
            type="double precision"
            description="Upper 68% SSFR uncertainty"
            verbLevel="1" /> 
    <column name="LUM_NUV_BEST"
            tablehead="LUM_NUV_BEST"
            type="double precision"
            description="Best fitting NUV luminosity in log(L_sun)"
            verbLevel="1" /> 
    <column name="LUM_R_BEST"
            tablehead="LUM_R_BEST"
            type="double precision"
            description="Best fitting R-band luminosity"
            verbLevel="1" />  
    <column name="LUM_K_BEST"
            tablehead="LUM_K_BEST"
            type="double precision"
            description="Best fitting K-band luminosity"
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
    <meta name="title">DESI DR6 DR7</meta>
    <meta name="shortName">DESI</meta>
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
      <condDesc buildFrom="ID" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->