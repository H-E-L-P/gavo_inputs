<resource schema="cosmos_vla">
  <meta name="title">COSMOS VLA Catalogue</meta>
  <meta name="creationDate">2016-01-21T16:32:51+0100</meta>
  <meta name="description">
    VLA 1.4 GHz and 324 MHz catalogue on COSMOS field.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Astrometry</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Radio</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    The COSMOS-VLA catalogue was adapted from the catalogue provided by work
    package 2.

    Within HELP, this catalogue is the astrometric reference for the COSMOS
    field.

    COSMOS VLA 1.4 GHz
    ------------------

    "The Cosmic Evolution Survey (COSMOS) is an HST Treasury Project to survey
    a 2 square degree equatorial field, centred on RA=10:00:28.6 and
    DEC=+02:12:21.0, using the ACS camera. The project also incorporates major
    commitments from other observatories around the world, including the
    National Radio Astronomy Observatory's (NRAO) Very Large Array (VLA) radio
    telescope.

    These VLA data represent the additional 62 hrs of 1.4 GHz (20cm)
    observations of the central 7 pointings already imaged by the large project
    in A-configuration in February/March 2006. The observations have been
    combined with the large project in which the 2 square degree COSMOS field
    with the position given above as the centre of the field was surveyed for
    275 hours.  The observations of the large project were performed at 1.4 GHz
    (20 cm), using the VLA in its A- and C-configuration between September 2004
    and September 2005. The final combined survey has reached a sensitivity of 
    an rms of uJy/beam in the central 30' at a resolution of 2.5"x2.5".

    The key characteristics of these data:

     Configuration:          VLA A-array & C-array
     Dates of observations:  September, 2004 - January, 2005   (A-array)
                             August, 2005    - September, 2005 (C-array)
                             February/March, 2006 (A-array: central 7 pointings)
     Observing time:         250 hours (A-array)
                             25 hours (C-array)
                             62 hours (A-array: central 7 pointings)
     Frequency:              1.4 GHz ( = L band, 20cm)
     Bandwidth:              75 MHz (Multi-channel continuum mode)
     Pointings:              23 (hexagonal pattern)
     Area:                   2 sq degs (box used for source extraction)
     Resolution:             2.5" x 2.5"
     Sensitivity:            10-40 uJy/beam (inner to outermost regions)

    The data products available here include:

     (1) a source catalog, with their position, fluxes, and sizes
         This is the joint catalog derived from this 2.5" image
         and the revised catalog (v2.0) of the VLA-COSMOS large project
     (2) a flux calibrated, astrometrically correct image,
         in SIN projection [ "_sin.fits" file in
         http://irsa.ipac.caltech.edu/data/COSMOS_INT/images/vla ]

    Further details can be found in Schinnerer et al. 2010, ApJS, 384, Bondi et
    al. 2008, ApJ, 681, 1129 & Schinnerer et al. 2007, ApJS, 172, 46

    COSMOS VLA 324 MHz
    ------------------

    "The Cosmic Evolution Survey (COSMOS) is an HST Treasury Project to survey
    a 2 square degree equatorial field, centered on RA=10:00:28.6 and
    DEC=+02:12:21.0, using the ACS camera. The project also incorporates major
    commitments from other observatories around the world, including the
    National Radio Astronomy Observatory's (NRAO) Very Large Array (VLA) radio
    telescope.

    These VLA data represent 7.3 hrs of 327 MHz (P band, 90cm) observations of
    the field in A-configuration taken in November 2008. The survey has reached
    a sensitivity of 0.56 rms mJy/beam over the central 2 square degrees.

    The key characteristics of these data:

     Configuration:                VLA A-array
     Dates of observations:        November, 2008
     Observing time:               7.3h
     Frequency:                    326 MHz ( P band, 90cm)
     Bandwidth:                    75 MHz (Multi-channel continuum mode)
     Pointings:                    1
     Area:                         3.1 square degrees
     Resolution:                   6.3"
     Sensitivity:                  0.56 mJy/beam

    Any paper using these data should includ: Vernesa Smolcic
    <vs@astro.uni-bonn.de> Send any questions to: Vernesa Smolcic
    (vs@astro.uni-bonn.de).

    The data products available here include:

     (1) a source catalog to 5.5 sigma.
     (2) a flux calibrated, astrometrically correct image,
         in SIN projection

    Further details can be found in Smolcic et al. 2014, MNRAS, 443, 2590.

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`.

    __ /cosmos_vla/q/cone/static
  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_idx">
    <stc>
      Position ICRS Epoch J2000.0 "RA" "Dec"
    </stc>

    <index columns="Name_VLA1400" />

    <column name="RA" type="double precision" ucd="pos.eq.ra;meta.main"
      unit="deg" description="Right Ascension (J2000)" required="True"/>
    <column name="Dec" type="double precision" ucd="pos.eq.dec;meta.main"
      unit="deg" description="Declination (J2000)" required="True"/>
    <column name="Name_VLA1400" type="text" ucd="meta.id"
      description="Source name (JHHMMSS.ss+DDMMSS.s)" />
    <column name="COSMOSVLA" type="text" ucd="meta.id"
      description="Former name in VLA_COSMOS Large project catalogue if exists" />
    <column name="RA_VLA1400" type="double precision" ucd="pos.eq.ra" unit="deg"
      description="1.4 GHz source position RA (J2000)" />
    <column name="Dec_VLA1400" type="double precision" ucd="pos.eq.dec" unit="deg"
      description="1.4 GHz source position Dec (J2000)" />
    <column name="Sp_VLA1400" type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="Peak 1.4GHz flux density" />
    <column name="eSp_VLA1400" type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="RMS uncertainty on peak 1.4 GHz flux density" />
    <column name="Spc_VLA1400" type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="Peak surface brightness corrected for bandwidth smearing" />
    <column name="Si_VLA1400" type="real"
      ucd="phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="Integrated 1.4 GHz flux density" />
    <column name="eSi_VLA1400" type="real"
      ucd="stat.error;phot.flux.density;em.radio.750-1500MHz" unit="mJy"
      description="RMS uncertainty in integrated 1.4 GHz flux density" />
    <column name="bg_RMS_VLA1400" type="real" ucd="stat.error;em.radio.750-1500MHz"
      unit="mJy" description="Measured local RMS at radio source position" />
    <column name="Bmaj_VLA1400" type="real" ucd="phys.angSize" unit="arcsec"
      description="Deconvolved source major axis size in arcsec" />
    <column name="Bmin_VLA1400" type="real" ucd="phys.angSize" unit="arcsec"
      description="Deconvolved source minor axis size in arcsec" />
    <column name="PA_VLA1400" type="real" ucd="pos.posAng" unit="deg"
      description="Position angle in deg" />
    <column name="Rflag_VLA1400" type="smallint" ucd="meta.code" note="1"
      description="Resolved source flag">
      <values nullLiteral="-9999" />
    </column>
    <column name="Mflag_VLA1400" type="smallint" ucd="meta.code" note="2"
      description="Multicomponent source flag">
      <values nullLiteral="-9999" />
    </column>
    <column name="Cflag_VLA1400" type="smallint" ucd="meta.code" note="3"
      description="Catalog membership flag">
      <values nullLiteral="-9999" />
    </column>
    <column name="Dflag_VLA1400" type="smallint" ucd="meta.code" note="4"
      description="Flag indicating the resolution at which a source detected at
      S/N>=5">
      <values nullLiteral="-9999" />
    </column>
    <column name="Name_VLA324" type="text" ucd="meta.id"
      description="Source name at 324 MHz" />
    <column name="RA_VLA324" type="real" ucd="pos.eq.ra" unit="deg"
      description="324 MHz source position right ascension (J2000)" />
    <column name="Dec_VLA324" type="real" ucd="pos.eq.dec" unit="deg"
      description="324 MHz source position declination (J2000)" />
    <column name="e_RA_VLA324" type="real" ucd="stat.error;pos.eq.ra"
      unit="arcsec" description="Uncertainty on RA_VLA324" />
    <column name="e_Dec_VLA324" type="real" ucd="stat.error;pos.eq.dec"
      unit="arcsec" description="Uncertainty on Dec_VLA324" />
    <column name="Sp_VLA324" type="real" ucd="phot.flux.density;em.radio.200-400MHz"
      unit="mJy" description="Peak 324 MHz surface brightness of source" />
    <column name="eSp_VLA324" type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz" unit="mJy"
      description="RMS uncertainty on 324 MHz peak flux density" />
    <column name="Si_VLA324" type="real"
      ucd="phot.flux.density;em.radio.200-400MHz" unit="mJy"
      description="Integrated 324 MHz source flux density" />
    <column name="eSi_VLA324" type="real"
      ucd="stat.error;phot.flux.density;em.radio.200-400MHz" unit="mJy"
      description="RMS uncertainty on integrated 324 MHz flux density" />
    <column name="bg_RMS_VLA324" type="real"
      ucd="stat.error;em.radio.200-400MHz" unit="mJy"
      description="Measured local RMS at the radio source position" />
    <column name="Bmaj_VLA324" type="real" ucd="phys.angSize" unit="arcsec"
      description="Deconvolved source size - major axis (0.0 for unresolved
      source) in arcsec" />
    <column name="Bmin_VLA324" type="real" ucd="phys.angSize" unit="arcsec"
      description="Deconvolved source size - minor axis (0.0 for unresolved
      source) in arcsec" />
    <column name="PA_VLA324" type="real" ucd="pos.posAng" unit="deg"
      description="Position angle (-99 for multi-component source; 0.0 for
      unresolved source)" />
    <column name="Rflag_VLA324" type="integer" ucd="meta.code" note="5"
      description="Flag for resolved source">
      <values nullLiteral="-9999" />
    </column>
    <column name="Mflag_VLA324" type="integer" ucd="meta.code" note="6"
      description="Flag for multi-component source">
      <values nullLiteral="-9999" />
    </column>
    <column name="internal_idx" type="bigint" ucd="meta.id;meta.main"
      description="Internal unique identifier" required="True" />
    <meta name="note" tag="1"><![CDATA[
      Rflag_VLA1400 (Resolved source flag at 1.4 GHz) column:

      == ===============================================================
      -2 classified as unresolved only in VLA-COSMOS Deep image
      -1 classified as resolved only in VLA-COSMOS Large image
       0 classified as unresolved in both VLA-COSMOS Large & Deep images
       1 classified as resolved in both VLA-COSMOS Large & Deep images
       2 classified as resolved source only in VLA-Deep
      == ===============================================================
    ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      Mflag_VLA1400 (Multicomponent source flag at 1.4 GHz) column:

      = ===========================================================
      0 no multi-component source
      1 multi-component source identified in VLA-COSMOS Large image
      2 multi-component source identified in VLA-COSMOS Deep image
      = ===========================================================
    ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      Cflag_VLA1400 (Catalog membership flag at 1.4 GHz) column:

      == ==================================================
      -1 only detected in the VLA-COSMOS Large image
       0 detected in both the VLA-COSMOS Large & Deep image
       1 only detected in the VLA-COSMOS Deep image
      == ==================================================
    ]]></meta>
    <meta name="note" tag="4"><![CDATA[
      Dflag_VLA1400 (Flag indicating the resolution at which a source detected
      at S/N>=5 at 1.4 GHz) column:

      === ======================================================================
       -1 S/N≥5 is only satisfied at a resolution of 1.5"
        0 S/N≥5 is only satisfied at both 1.5" & 2.5" resolution
        1 S/N≥5 is only satisfied at a resolution of 2.5", but in both the large
          and small scale (105" and 17.5" box size, respectively) rms map
        2 at a resolution of 2.5", S/N≥5 is only satisfied in the small scale
          (17.5" box size) rms map
      -99 multi-component source.
      === ======================================================================
    ]]></meta>
    <meta name="note" tag="5"><![CDATA[
      Rflag_VLA324 (Flag for resolved source at 324 MHz) column:

      = ========================
      0 classified as unresolved
      1 classified as resolved
      = ========================
    ]]></meta>
    <meta name="note" tag="6"><![CDATA[
      Mflag_VLA324 (Multicomponent source flag at 324 MHz) column:

      = =========================
      0 no multi-component source
      1 multi-component sources
      = =========================
    ]]></meta>
  </table>
  <data id="import">
    <sources>data/COSMOS_VLA.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          RA:RA,
          Dec:Dec,
          Name_VLA1400:NAME_VLA_1400,
          COSMOSVLA:COSMOSVLA,
          RA_VLA1400:RA_14,
          Dec_VLA1400:Dec_14,
          Sp_VLA1400:Fmjypeak_VLA_1400,
          eSp_VLA1400:Ferrmjypeak_VLA_1400,
          Spc_VLA1400:Fpeakcorrmjy_VLA_1400,
          Si_VLA1400:Fmjy_VLA_1400,
          eSi_VLA1400:Ferrmjy_VLA_1400,
          bg_RMS_VLA1400:RMSBG,
          Bmaj_VLA1400:BMAJ_14,
          Bmin_VLA1400:BMIN_14,
          PA_VLA1400:PA_14,
          Rflag_VLA1400:R,
          Mflag_VLA1400:M,
          Cflag_VLA1400:CAT,
          Dflag_VLA1400:DET,
          Name_VLA324:NAME_VLA_324,
          RA_VLA324:RAJ2000_324,
          Dec_VLA324:DEJ2000_324,
          e_RA_VLA324:ER_RA,
          e_Dec_VLA324:ER_DEC,
          Sp_VLA324:FP,
          eSp_VLA324:FPERR,
          Si_VLA324:Fmjy_VLA_324,
          eSi_VLA324:Ferrmjy_VLA_324,
          bg_RMS_VLA324:RMS_BG,
          Bmaj_VLA324:BMAJ_324,
          Bmin_VLA324:BMIN_324,
          PA_VLA324:PA_324,
          Rflag_VLA324:RES,
          Mflag_VLA324:MULT,
          internal_idx:internal_idx
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">COSMOS VLA</meta>
    <meta name="shortName">COSMOS-VLA</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="Name_VLA1400" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
