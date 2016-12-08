<resource schema="pep">
  <meta name="title">PACS Evolutionary Probe</meta>
  <meta name="creationDate">2016-09-16</meta>
  <meta name="description">
    PACS catalogues from the PACS Evolutionary Probe (PEP) Herschel key
    programme (DR1)
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the PACS catalogues from the first data release (DR1)
    of the PACS Evolutionary Probe (PEP) project. PEP provides several
    catalogues we ingested like this:

    Blind PACS sources (table `pep.blind`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    On several fields, PEP provides blind PACS100 and PACS160 catalogues (plus
    PACS70 on GOODS-South) and a combined catalogue cross-identifying the PACS
    source and MIPS24 sources. The combined catalogues are named `Xid_24um`. We
    used these combined catalogues but added the IAU names and the coverage
    column from the blind single band catalogues. We gathered everything in
    a single table, added a `ra` and `dec` columns containing the mean of the
    positions in each band and adding a `field` column containing the name of
    the HELP field of each source (all the PEP sources fall inside HELP
    coverage).

    We also added an `internal_id` column to uniquely identify each source,
    please use this column as reference in cross-matches.

    PACS fluxes at MIPS24 positions (table `pep.prior24`)
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    PEP also provides catalogues of PACS fluxes extracted at MIPS24 positions.
    We concatenated all the catalogues in a single table and added the `field`
    columns.  The `iau_name` column uniquely identify each source.


    Survey identification
    ---------------------

    +-------------------+---------------------------------------------+
    | Survey            | PACS Evolutionary Probe (PEP)               |
    +-------------------+---------------------------------------------+
    | Telescope         | Herschel                                    |
    +-------------------+---------------------------------------------+
    | Instrument        | PACS                                        |
    +-------------------+---------------------------------------------+
    | Filters           | PACS70, PACS100, PACS160 (MIPS24)           |
    +-------------------+---------------------------------------------+
    | P.I.              | Dieter Lutz                                 |
    +-------------------+---------------------------------------------+
    | Reference         | 2011A&A...532A..90L                         |
    +-------------------+---------------------------------------------+
    | Proposal Id.      | KPGT_dlutz_1                                |
    +-------------------+---------------------------------------------+
    | URL               | http://www.mpe.mpg.de/ir/Research/PEP/index |
    +-------------------+---------------------------------------------+

    History
    -------

    ======== ============================================
    20160916 First ingestion
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /pep/q/cone_blind/static

  ]]> </meta>

  <table id="blind" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <index columns="field" />

    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey"
      required="True"
      verbLevel="1" />
    <column name="internal_id"
      tablehead="Internal_Id"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Unique identifier"
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
    <column name="pacs70_name"
      tablehead="PACS70_Name"
      type="text"
      ucd="meta.id"
      description="IAU name of the PACS 70um source"
      verbLevel="1" />
    <column name="ra_70"
      tablehead="RA_70"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the PACS 70um blind source"
      verbLevel="30" />
    <column name="dec_70"
      tablehead="Dec_70"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the PACS 70um blind source"
      verbLevel="30" />
    <column name="flux_70"
      tablehead="Flux_70"
      type="double precision"
      ucd="phot.flux.density;em.IR.60-100um"
      unit="Jy"
      description="PACS 70um flux density"
      verbLevel="1" />
    <column name="fluxerr_70"
      tablehead="FluxErr_70"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.60-100um"
      unit="Jy"
      description="Uncertainty on PACS 70um flux density"
      verbLevel="1" />
    <column name="coverage_70"
      tablehead="Coverage_70"
      type="double precision"
      ucd="time.expo"
      unit="s/pix"
      description="PACS 70um coverage value"
      verbLevel="30" />
    <column name="pacs100_name"
      tablehead="PACS100_Name"
      type="text"
      ucd="meta.id"
      description="IAU name of the PACS 100um source"
      verbLevel="1" />
    <column name="ra_100"
      tablehead="RA_100"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the PACS 100um blind source"
      verbLevel="30" />
    <column name="dec_100"
      tablehead="Dec_100"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the PACS 100um blind source"
      verbLevel="30" />
    <column name="flux_100"
      tablehead="Flux_100"
      type="double precision"
      ucd="phot.flux.density;em.IR.60-100um"
      unit="Jy"
      description="PACS 100um flux density"
      verbLevel="1" />
    <column name="fluxerr_100"
      tablehead="FluxErr_100"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.60-100um"
      unit="Jy"
      description="Uncertainty on PACS 100um flux density"
      verbLevel="1" />
    <column name="coverage_100"
      tablehead="Coverage_100"
      type="double precision"
      ucd="time.expo"
      unit="s/pix"
      description="PACS 100um coverage value"
      verbLevel="30" />
    <column name="pacs160_name"
      tablehead="PACS160_Name"
      type="text"
      ucd="meta.id"
      description="IAU name of the PACS 160um source"
      verbLevel="1" />
    <column name="ra_160"
      tablehead="RA_160"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the PACS 160um blind source"
      verbLevel="30" />
    <column name="dec_160"
      tablehead="Dec_160"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the PACS 160um blind source"
      verbLevel="30" />
    <column name="flux_160"
      tablehead="Flux_160"
      type="double precision"
      ucd="phot.flux.density;em.IR.1500-3000GHz"
      unit="Jy"
      description="PACS 160um flux density"
      verbLevel="1" />
    <column name="fluxerr_160"
      tablehead="FluxErr_160"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.1500-3000GHz"
      unit="Jy"
      description="Uncertainty on PACS 160um flux density"
      verbLevel="1" />
    <column name="coverage_160"
      tablehead="Coverage_160"
      type="double precision"
      ucd="time.expo"
      unit="s/pix"
      description="PACS 160um coverage value"
      verbLevel="30" />
    <column name="ra_24"
      tablehead="RA_24"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the MIPS 24um source"
      verbLevel="30" />
    <column name="dec_24"
      tablehead="Dec_24"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the MIPS 24um source"
      verbLevel="30" />
    <column name="flux_24"
      tablehead="Flux_24"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="mJy"
      description="MIPS 24um flux density"
      verbLevel="1" />
    <column name="fluxerr_24"
      tablehead="FluxErr_24"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="mJy"
      description="Uncertainty on MIPS 24um flux density"
      verbLevel="1" />
    <column name="area_cov_flag"
      tablehead="Area_Cov_Flag"
      type="text"
      ucd="meta.code"
      description="Area coverage flag"
      verbLevel="30" />
    <column name="clean_index"
      tablehead="clean_index"
      type="integer"
      ucd="meta.code"
      description="Clean index"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>

    <meta name="note" tag="1"><![CDATA[
      The clean index describes the contamination of a PACS source from the
      neighbour sources; a value Clean=0 is a non-contaminated source, and
      sources having Clean≤1 represents a relatively robust sample of clean
      measurements.
      ]]></meta>
  </table>

  <table id="prior24" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="iau_name">
    <stc>
      Position ICRS Epoch J2000.0 "ra_24" "dec_24"
    </stc>

    <index columns="field" />

    <column name="field"
      tablehead="Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in HELP survey"
      required="True"
      verbLevel="1" />
    <column name="iau_name"
      tablehead="IAU_Name"
      type="text"
      ucd="meta.id;meta.main"
      description="Unique source name based on the position"
      required="True"
      verbLevel="1" />
    <column name="ra_24"
      tablehead="RA_24"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="24um Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec_24"
      tablehead="Dec_24"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="24um Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="flux_24"
      tablehead="Flux_24"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS 24um flux density"
      verbLevel="1" />
    <column name="fluxerr_24"
      tablehead="FluxErr_24"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on MIPS 24um flux density"
      verbLevel="1" />
    <column name="flux_70"
      tablehead="Flux_70"
      type="double precision"
      ucd="phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="PACS 70um flux density"
      verbLevel="1" />
    <column name="fluxerr_70"
      tablehead="FluxErr_70"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="Uncertainty on PACS 70um flux density"
      verbLevel="1" />
    <column name="coverage_70"
      tablehead="Coverage_70"
      type="double precision"
      ucd="time.expo"
      unit="s/pix"
      description="PACS 70um coverage value"
      verbLevel="30" />
    <column name="flux_100"
      tablehead="Flux_100"
      type="double precision"
      ucd="phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="PACS 100um flux density"
      verbLevel="1" />
    <column name="fluxerr_100"
      tablehead="FluxErr_100"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="Uncertainty on PACS 100um flux density"
      verbLevel="1" />
    <column name="coverage_100"
      tablehead="Coverage_100"
      type="double precision"
      ucd="time.expo"
      unit="s/pix"
      description="PACS 100um coverage value"
      verbLevel="30" />
    <column name="flux_160"
      tablehead="Flux_160"
      type="double precision"
      ucd="phot.flux.density;em.IR.1500-3000GHz"
      unit="mJy"
      description="PACS 160um flux density"
      verbLevel="1" />
    <column name="fluxerr_160"
      tablehead="FluxErr_160"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.1500-3000GHz"
      unit="mJy"
      description="Uncertainty on PACS 160um flux density"
      verbLevel="1" />
    <column name="coverage_160"
      tablehead="Coverage_160"
      type="double precision"
      ucd="time.expo"
      unit="s/pix"
      description="PACS 160um coverage value"
      verbLevel="30" />
    <column name="clean_index"
      tablehead="clean_index"
      type="integer"
      ucd="meta.code"
      description="Clean index"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="flag_pgh_detection_100"
      tablehead="Flag_PGH_Detection_100"
      type="integer"
      ucd="meta.code"
      description="Flag for 100um PGH detection"
      note="2"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="flag_pgh_detection_160"
      tablehead="Flag_PGH_Detection_160"
      type="integer"
      ucd="meta.code"
      description="Flag for 160um PGH detection"
      note="2"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="flag_pgh_area"
      tablehead="Flag_PGH_Area"
      type="integer"
      ucd="meta.code"
      description="Flag for PGH area"
      note="2"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>

    <meta name="note" tag="1"><![CDATA[
      The clean index describes the contamination of a PACS source from the
      neighbour sources; a value Clean=0 is a non-contaminated source, and
      sources having Clean≤1 represents a relatively robust sample of clean
      measurements.
      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      Detection in the PEP/GOODS/Herschel(PGH) combined catalog, only for
      ecdfs_* files (Extended Chandra Deep Field South region)
      ]]></meta>
  </table>

  <data id="import_blind">
    <sources>data/pep_blind.csv</sources>
    <csvGrammar />
    <make table="blind">
      <rowmaker idmaps="*">
        <simplemaps>
          flux_160:flux_160,
          fluxerr_160:fluxerr_160,
          ra_160:ra_160,
          dec_160:dec_160,
          flux_100:flux_100,
          fluxerr_100:fluxerr_100,
          ra_100:ra_100,
          dec_100:dec_100,
          flux_70:flux_070,
          fluxerr_70:fluxerr_070,
          ra_70:ra_070,
          dec_70:dec_070,
          flux_24:flux_24,
          fluxerr_24:fluxerr_24,
          ra_24:ra_24,
          dec_24:dec_24,
          area_cov_flag:area_cov_flag,
          clean_index:clean_index,
          pacs100_name:pacs100_name,
          coverage_100:coverage_100,
          pacs160_name:pacs160_name,
          coverage_160:coverage_160,
          pacs70_name:pacs70_name,
          coverage_70:coverage_070,
          ra:ra,
          dec:dec,
          field:field,
          internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_prior24">
    <sources>data/pep_prior24.csv</sources>
    <csvGrammar />
    <make table="prior24">
      <rowmaker idmaps="*">
        <simplemaps>
          iau_name:iau_name,
          ra_24:ra_24,
          dec_24:dec_24,
          flux_24:flux_24,
          fluxerr_24:fluxerr_24,
          flux_100:flux_p_100,
          fluxerr_100:fluxerr_p_100,
          coverage_100:coverage_p_100,
          flux_160:flux_p_160,
          fluxerr_160:fluxerr_p_160,
          coverage_160:coverage_p_160,
          clean_index:clean_index,
          flag_pgh_detection_100:flag_p_pgh_detection_100,
          flag_pgh_detection_160:flag_p_pgh_detection_160,
          flag_pgh_area:flag_p_pgh_area,
          flux_70:flux_p_070,
          fluxerr_70:fluxerr_p_070,
          coverage_70:coverage_p_070,
          field:field
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone_blind" allowed="scs.xml,form,static">
    <meta name="title">PEP Blind PACS catalogue</meta>
    <meta name="shortName">PEP Blind</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="blind">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="field" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_prior24" allowed="scs.xml,form,static">
    <meta name="title">PEP MIPS24 prior PACS catalogue</meta>
    <meta name="shortName">PEP Prior24</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="prior24">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="field" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
</resource>

<!--
vim:et:sta:sw=2
-->
