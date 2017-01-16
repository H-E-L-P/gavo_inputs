<resource schema="galex_gcat">
  <meta name="title">GALEX GCAT catalogues</meta>
  <meta name="creationDate">2016-04-26</meta>
  <meta name="description">
    GALEX All-Sky Source Catalog (GASC) and GALEX Medium Imaging Survey
    Catalog (GMSC).
  </meta>
  <meta name="creator.name">Roehlly, Y.; Buat, V.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>
  <meta name="type">Survey</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">UV</meta>
  </meta>

  <meta name="_longdoc" format="rst">

    This resource contains the GALEX catalogues processed by the DMU14 “GALEX
    data”. They are based on the GALEX GCAT catalogues: the GALEX All-Sky Source
    Catalogue (GASC) and the GALEX Medium Imaging Survey Catalogue (GMSC).

    More information on the GCAT is available on `the Caltech GALEX site`__. In
    particular:

    __ http://www.galex.caltech.edu/wiki/GCAT_Manual

      GALEX has been undertaking a number of surveys covering large areas of sky
      at a variety of depths. However making use of this large data set can be
      difficult because the standard GALEX database contains all of the detected
      sources which include many duplicate observations of the same sources as
      well as numerous spurious low signal-to-noise sources. At the same time,
      the sky footprint associated with GALEX observations has not been well
      defined or presented in an easily useable format. In order to remedy these
      problems, we have constructed two catalogues of GALEX measurements, namely
      the GALEX All-Sky Survey Source Catalog (GASC) and the GALEX Medium
      Imaging Survey Catalog (GMSC). Our intention is that these catalogues will
      provide the primary reference catalog useful for matching GALEX
      measurements with other large surveys of the sky at other wavelengths.
      Covering a total of 26,300 deg2 of sky, the GASC consists of all GALEX
      observations with exposure times below 800 sec and reaches a depth of NUV
      21 (AB mag). The GMSC covers a smaller region of 5000 deg2 with exposure
      times between 800 and 10,000 sec and reaches a depth of NUV 23 mag.
      There are a total of 40 million unique sources in the GASC and 22
      million in the GMSC. Each catalogues accompanied by exposure time,
      coverage and flag maps in FITS and Healpix formats.

      These catalogues do not contain the deepest images available for the GALEX
      deep fields. While the sky covered by these tiles is included, we have
      limited the total exposure time to 10,000 sec. Crowding becomes
      a significant issue for the depths reached in the deep fields and thus
      requires more careful treatment than what is possible using the standard
      GALEX pipeline source detection. Users interested in these regions can
      find the deepest co-adds from the MAST archive and complete their own an
      analysis. Currently these catalogues only include GALEX data up to the GR6
      data release.


    Catalogue processing
    --------------------

    The GCAT catalogues were limited to HELP coverage and a ``field`` column was
    added.  The ``name`` column identify uniquely each source and must be used
    to link back to the original GCAT catalogue.

    We kept only the position and the total NUV and FUV fluxes (and their
    associated errors).  These fluxes are **not corrected for the galactic
    extinction**.

    We also kept only the sources corresponding to a good combination of flags.

    Flag selection
    ~~~~~~~~~~~~~~

    EXTENDED: deblending parameters in the SExtractor program correctly measure
    most galaxies up to one arcminute in diameter. Galaxies larger than this
    will have a larger probability of being shredded into multiple sources by
    the GALEX pipeline. So that users can avoid these shredded galaxies in the
    catalog,  the "EXTENDED" flag is given in the catalog for known optical
    sources with diameters (typically 25th magnitude isophote optical diameters,
    D25) greater than 1.5 arcminute. If a source in the catalogs lies within an
    elliptical aperture with major axis scaled to 1.25*D25, then EXTENDED is
    equal to one and zero otherwise.

    —> We dropped objects with EXTENDED equal to 1

    ARTIFACT_NUV, ARTIFACT_FUV: it is preconised to exclude sources with flags
    2 and 3. It is also safer to exclude measures close to the edge of the field
    (flag=6)

    —> We excluded objects with ARTIFACT=2 or 3 or 6

    MANFLAG: There are additional artefacts due to bright stars lying just off
    of the field-of-view that are not in general flagged by the standard GALEX
    pipeline. These artefacts are in general shaped like horseshoes or long,
    thin cones. The primary regions of both the GASC and GMSC were visually
    inspected and these artefacts are identified. For any source that lies
    within one of these flagged regions, the column MANFLAG will be set to one.
    In addition bright stars  can create thin elliptical sources somewhat
    resembling an edge-on galaxy that lie perpendicular to the edge of the
    field-of-view. The location and shape parameters in the catalogues are used
    to flag such sources. Any source that is likely one of these artefacts will
    have MANFLAG set equal to two.

    —> We kept only sources with MANFLAG=0

    HELP field coverage
    -------------------

    Here is the number of GMSC and GASC sources per HELP field:

           ==================  =============== ===============
                Field            GMSC counts     GASC counts
           ==================  =============== ===============
                    AKARI-NEP            6,092          13,792
                    AKARI-SEP           11,853           7,544
                       Bootes           61,513          19,823
                   CDFS-SWIRE           48,978          34,285
                       COSMOS           39,879          15,556
                          EGS           21,460           6,149
                     ELAIS-N1           60,203          27,820
                     ELAIS-N2           45,940          27,395
                     ELAIS-S1           39,056          26,041
                      GAMA-09          258,264         101,414
                      GAMA-12          217,030          78,899
                      GAMA-15          267,155          95,741
                   HATLAS-NGP          183,429         212,060
                   HATLAS-SGP          261,970         458,930
                        HDF-N            3,042           1,872
           Herschel-Stripe-82        1,300,297         455,718
                Lockman-SWIRE           96,123          26,599
                         SA13                              401
                    SPIRE-NEP                              328
                         SSDF           92,745         223,011
                         xFLS           35,359          15,253
                     XMM-13hr                              166
                      XMM-LSS           71,528          35,551
           ==================  =============== ===============


    History
    -------

    ======== =============================================================
    20170116 Replace by DMU14 product: selection of columns and flag
             selection of sources.
    20170116 Rename NGP to HATLAS-NGP and SGP to HATLAS-SGP.
    20160426 Addition of the GASC catalogue retrieved from STSCI GALEX
             CasJobs.
    20160303 Catalogue retrieved from STSCI GALEX CasJobs and ingested.
    ======== =============================================================

    RAW data
    --------

    You may also `download raw catalogues and MOC coverage`__.

    __ /galex_gcat/q/cone_gmsc/static

  </meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
    ]]> </meta>

  <table id="gmsc" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="name">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />
    <index columns="flux_nuv" />
    <index columns="flux_fuv" />

    <column name="field"
      type="text"
      ucd="meta.id;obs.field"
      tablehead="Field"
      description="Name of the field in the HELP survey."
      verbLevel="30"/>
    <column name="name"
      type="text"
      ucd="meta.id;meta.main"
      tablehead="Name"
      description="Name of the source in the IAU format."
      required="True"/>
    <column name="ra"
      type="double precision"
      unit="deg"
      ucd="pos.eq.ra;meta.main"
      tablehead="RA"
      description="Right Ascension in a J2000 reference frame. This position is
      the NUV source position."
      required="True"/>
    <column name="dec"
      type="double precision"
      unit="deg"
      ucd="pos.eq.dec;meta.main"
      tablehead="Dec"
      description="Declination in a J2000 reference frame. This position is the
      NUV source position." required="True" />
    <column name="flux_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="flux NUV"
      description="Calibrated NUV flux. This is currently always set to the
      SExtractor 'Auto' flux" />
    <column name="fluxerr_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="fluxerr NUV"
      description="The error in flux_NUV flux."/>
    <column name="flux_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="flux FUV"
      description="Calibrated FUV flux measured within the NUV-defined 'AUTO'
      aperture. The value of the flux can be negative for FUV non-detections.
      Users can access the significance of a FUV detection using the
      S2N_FUV column. Sources with either no FUV data or with flux_FUV
      less than -99 are flagged with a value of -99." />
    <column name="fluxerr_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="fluxerr FUV"
      description="The error on flux_FUV" />
  </table>

  <table id="gasc" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="name">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />
    <index columns="flux_nuv" />
    <index columns="flux_fuv" />

    <column name="field"
      type="text"
      ucd="meta.id;obs.field"
      tablehead="Field"
      description="Name of the field in the HELP survey."
      verbLevel="30" />
    <column name="name"
      type="text"
      ucd="meta.id;meta.main"
      tablehead="Name"
      description="Name of the source in the IAU format."
      required="True"/>
    <column name="ra"
      type="double precision"
      unit="deg"
      ucd="pos.eq.ra;meta.main"
      tablehead="RA"
      description="Right Ascension in a J2000 reference frame. This position is
      the NUV source position."
      required="True"/>
    <column name="dec"
      type="double precision"
      unit="deg"
      ucd="pos.eq.dec;meta.main"
      tablehead="Dec"
      description="Declination in a J2000 reference frame. This position is the
      NUV source position." required="True" />
    <column name="flux_nuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.200-300nm"
      tablehead="flux NUV"
      description="Calibrated NUV flux. This is currently always set to the
      SExtractor 'Auto' flux" />
    <column name="fluxerr_nuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.200-300nm"
      tablehead="fluxerr NUV"
      description="The error in flux_NUV flux."/>
    <column name="flux_fuv"
      type="real"
      unit="uJy"
      ucd="phot.flux;em.UV.100-200nm"
      tablehead="flux FUV"
      description="Calibrated FUV flux measured within the NUV-defined 'AUTO'
      aperture. The value of the flux can be negative for FUV non-detections.
      Users can access the significance of a FUV detection using the
      S2N_FUV column. Sources with either no FUV data or with flux_FUV
      less than -99 are flagged with a value of -99." />
    <column name="fluxerr_fuv"
      type="real"
      unit="uJy"
      ucd="stat.error;phot.flux;em.UV.100-200nm"
      tablehead="fluxerr FUV"
      description="The error on flux_FUV" />
  </table>

  <data id="import_gmsc">
    <sources>data/galex_gmsc_help.csv</sources>
    <csvGrammar />
    <make table="gmsc">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          flux_nuv:flux_nuv,
          fluxerr_nuv:fluxerr_nuv,
          flux_fuv:flux_fuv,
          fluxerr_fuv:fluxerr_fuv,
          name:name,
          field:field
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_gasc">
    <sources>data/galex_gasc_help.csv</sources>
    <csvGrammar />
    <make table="gasc">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          flux_nuv:flux_nuv,
          fluxerr_nuv:fluxerr_nuv,
          flux_fuv:flux_fuv,
          fluxerr_fuv:fluxerr_fuv,
          name:name,
          field:field
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone_gmsc" allowed="scs.xml,form,static">
    <meta name="title">GALEX Medium Imaging Survey Catalogue</meta>
    <meta name="shortName">GMSC</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="gmsc">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="flux_nuv" />
      <condDesc buildFrom="flux_fuv" />
      <condDesc buildFrom="field" />
      <condDesc>
        <inputKey original="name" required="False"/>
      </condDesc>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <service id="cone_gasc" allowed="scs.xml,form,static">
    <meta name="title">GALEX All-Sky Survey Source Catalogue</meta>
    <meta name="shortName">GASC</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="gasc">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="flux_nuv" />
      <condDesc buildFrom="flux_fuv" />
      <condDesc buildFrom="field" />
      <condDesc>
        <inputKey original="name" required="False"/>
      </condDesc>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
