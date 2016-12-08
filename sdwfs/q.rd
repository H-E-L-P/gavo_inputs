<resource schema="sdwfs">
  <meta name="title">SDWFS</meta>
  <meta name="creationDate">2016-05-31T16:49:29+02:00</meta>
  <meta name="description">
    Spitzer Deep, Wide-Field Survey (SDWFS). Updated First Data Release (DR1.1)
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the IRAC catalogues from the Spitzer Deep,
    Wide-Field Survey (SDWFS) downloaded from IRSA. It's the updated first data
    release (DR1.1).

      SDWFS is a four-epoch survey of roughly 10 square degrees of the NOAO
      Deep, Wide-Field Survey field in Bo?tes. The first visit to the field
      occurred very early in the Spitzer mission, in 2004 January, as part of
      the IRAC Shallow Survey (Eisenhardt et al. 2004). Subsequent visits to the
      field as part of the SDWFS program reimaged the same area to the same
      depth.

    The full documentation is available at
    http://irsa.ipac.caltech.edu/data/SPITZER/SDWFS/documentation/sdwfs_DR1.1.html

    There are 4 catalogues corresponding to sources selected in each IRAC
    channel. Each catalogue contains the magnitudes in all IRAC bands.

    - `sdwfs.i1`: 3.6µm-selected sources;
    - `sdwfs.i2`: 4.5µm-selected sources;
    - `sdwfs.i3`: 5.8µm-selected sources;
    - `sdwfs.i4`: 8.0µm-selected sources.

    We ingested the only “total coadd” catalogues, not the individual epoch
    ones.

    These catalogues cover the Böotes field. We did not limit them to HELP
    (SPIRE based) coverage as only a few parts of the IRAC coverage is not on
    the SPIRE one.

    We added a column `internal_id` identifying uniquely each source. Please,
    use it when crossmatching the catalogue.

    Survey identification
    ---------------------

    +-------------------+--------------------------------------------------+
    | Survey            | Spitzer Deep, Wide-Field Survey (SDWFS)          |
    +-------------------+--------------------------------------------------+
    | Telescope         | Spitzer                                          |
    +-------------------+--------------------------------------------------+
    | Instrument        | IRAC                                             |
    +-------------------+--------------------------------------------------+
    | Filters           | IRAC1 (3.6µm), IRAC2 (4.5µm), IRAC3 (5.8µm),     |
    |                   | IRAC4 (8.0µm)                                    |
    +-------------------+--------------------------------------------------+
    | P.I.              | Daniel Stern, JPL/Caltech                        |
    +-------------------+--------------------------------------------------+
    | Reference         | Ashby et al., 2009 (`2009ApJ...701..428A`__)     |
    +-------------------+--------------------------------------------------+
    | Observation dates | 01/2004, 08/2007, 02/2008, 03/2008               |
    +-------------------+--------------------------------------------------+
    | URL               | http://irsa.ipac.caltech.edu/data/SPITZER/SDWFS/ |
    +-------------------+--------------------------------------------------+

    __ http://adsabs.harvard.edu/abs/2009ApJ...701..428A

    History
    -------

    ======== ============================================
    20160531 Catalogues downloaded from IRSA and ingested
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /sdwfs/q/cone_i1/static

  ]]> </meta>

  <table id="i1" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

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
    <column name="ch1_4"
      tablehead="ch1_4"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="3.4µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch2_4"
      tablehead="ch2_4"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4.5µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch3_4"
      tablehead="ch3_4"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="5.8µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch4_4"
      tablehead="ch4_4"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="8.0µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err1_4"
      tablehead="err1_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty on 3.4µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err2_4"
      tablehead="err2_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 4.5µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err3_4"
      tablehead="err3_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 5.8µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err4_4"
      tablehead="err4_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty on 8.0µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch1_6"
      tablehead="ch1_6"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="3.4µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch2_6"
      tablehead="ch2_6"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4.5µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch3_6"
      tablehead="ch3_6"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="5.8µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch4_6"
      tablehead="ch4_6"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="8.0µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err1_6"
      tablehead="err1_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty on 3.4µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err2_6"
      tablehead="err2_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 4.5µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err3_6"
      tablehead="err3_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 5.8µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err4_6"
      tablehead="err4_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty on 8.0µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch1_ma"
      tablehead="ch1_ma"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="MAG_AUTO 3.4µm magnitude"
      verbLevel="1" />
    <column name="ch2_ma"
      tablehead="ch2_ma"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="MAG_AUTO 4.5µm magnitude"
      verbLevel="1" />
    <column name="ch3_ma"
      tablehead="ch3_ma"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="MAG_AUTO 5.8µm magnitude"
      verbLevel="1" />
    <column name="ch4_ma"
      tablehead="ch4_ma"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="MAG_AUTO 8.0µm magnitude"
      verbLevel="1" />
    <column name="err1_ma"
      tablehead="err1_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty MAG_AUTO 3.4µm magnitude"
      verbLevel="1" />
    <column name="err2_ma"
      tablehead="err2_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty MAG_AUTO 4.5µm magnitude"
      verbLevel="1" />
    <column name="err3_ma"
      tablehead="err3_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty MAG_AUTO 5.8µm magnitude"
      verbLevel="1" />
    <column name="err4_ma"
      tablehead="err4_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty MAG_AUTO 8.0µm magnitude"
      verbLevel="1" />
    <column name="flag"
      tablehead="Flag"
      type="integer"
      ucd="meta.code"
      description="SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <meta name="note" tag="1"><![CDATA[
      SExtractor flags:

      === ===================================================================
        1 The object has neighbours, bright and close enough to significantly
          bias the MAG_AUTO photometry, or bad pixels (more than 10% of the
          integrated area affected),
        2 The object was originally blended with another one,
        4 At least one pixel of the object is saturated (or very close to),
        8 The object is truncated (too close to an image boundary),
       16 Object's aperture data are incomplete or corrupted,
       32 Object's isophotal data are incomplete or corrupted,
       64 A memory overflow occurred during deblending,
      128 A memory overflow occurred during extraction.
      === ===================================================================

      ]]></meta>
  </table>
  <table id="i2" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

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
    <column name="ch1_4"
      tablehead="ch1_4"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="3.4µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch2_4"
      tablehead="ch2_4"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4.5µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch3_4"
      tablehead="ch3_4"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="5.8µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch4_4"
      tablehead="ch4_4"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="8.0µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err1_4"
      tablehead="err1_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty on 3.4µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err2_4"
      tablehead="err2_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 4.5µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err3_4"
      tablehead="err3_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 5.8µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err4_4"
      tablehead="err4_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty on 8.0µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch1_6"
      tablehead="ch1_6"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="3.4µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch2_6"
      tablehead="ch2_6"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4.5µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch3_6"
      tablehead="ch3_6"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="5.8µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch4_6"
      tablehead="ch4_6"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="8.0µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err1_6"
      tablehead="err1_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty on 3.4µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err2_6"
      tablehead="err2_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 4.5µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err3_6"
      tablehead="err3_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 5.8µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err4_6"
      tablehead="err4_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty on 8.0µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch1_ma"
      tablehead="ch1_ma"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="MAG_AUTO 3.4µm magnitude"
      verbLevel="1" />
    <column name="ch2_ma"
      tablehead="ch2_ma"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="MAG_AUTO 4.5µm magnitude"
      verbLevel="1" />
    <column name="ch3_ma"
      tablehead="ch3_ma"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="MAG_AUTO 5.8µm magnitude"
      verbLevel="1" />
    <column name="ch4_ma"
      tablehead="ch4_ma"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="MAG_AUTO 8.0µm magnitude"
      verbLevel="1" />
    <column name="err1_ma"
      tablehead="err1_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty MAG_AUTO 3.4µm magnitude"
      verbLevel="1" />
    <column name="err2_ma"
      tablehead="err2_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty MAG_AUTO 4.5µm magnitude"
      verbLevel="1" />
    <column name="err3_ma"
      tablehead="err3_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty MAG_AUTO 5.8µm magnitude"
      verbLevel="1" />
    <column name="err4_ma"
      tablehead="err4_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty MAG_AUTO 8.0µm magnitude"
      verbLevel="1" />
    <column name="flag"
      tablehead="Flag"
      type="integer"
      ucd="meta.code"
      description="SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <meta name="note" tag="1"><![CDATA[
      SExtractor flags:

      === ===================================================================
        1 The object has neighbours, bright and close enough to significantly
          bias the MAG_AUTO photometry, or bad pixels (more than 10% of the
          integrated area affected),
        2 The object was originally blended with another one,
        4 At least one pixel of the object is saturated (or very close to),
        8 The object is truncated (too close to an image boundary),
       16 Object's aperture data are incomplete or corrupted,
       32 Object's isophotal data are incomplete or corrupted,
       64 A memory overflow occurred during deblending,
      128 A memory overflow occurred during extraction.
      === ===================================================================

      ]]></meta>
  </table>
  <table id="i3" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

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
    <column name="ch1_4"
      tablehead="ch1_4"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="3.4µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch2_4"
      tablehead="ch2_4"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4.5µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch3_4"
      tablehead="ch3_4"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="5.8µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch4_4"
      tablehead="ch4_4"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="8.0µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err1_4"
      tablehead="err1_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty on 3.4µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err2_4"
      tablehead="err2_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 4.5µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err3_4"
      tablehead="err3_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 5.8µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err4_4"
      tablehead="err4_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty on 8.0µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch1_6"
      tablehead="ch1_6"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="3.4µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch2_6"
      tablehead="ch2_6"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4.5µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch3_6"
      tablehead="ch3_6"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="5.8µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch4_6"
      tablehead="ch4_6"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="8.0µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err1_6"
      tablehead="err1_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty on 3.4µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err2_6"
      tablehead="err2_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 4.5µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err3_6"
      tablehead="err3_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 5.8µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err4_6"
      tablehead="err4_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty on 8.0µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch1_ma"
      tablehead="ch1_ma"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="MAG_AUTO 3.4µm magnitude"
      verbLevel="1" />
    <column name="ch2_ma"
      tablehead="ch2_ma"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="MAG_AUTO 4.5µm magnitude"
      verbLevel="1" />
    <column name="ch3_ma"
      tablehead="ch3_ma"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="MAG_AUTO 5.8µm magnitude"
      verbLevel="1" />
    <column name="ch4_ma"
      tablehead="ch4_ma"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="MAG_AUTO 8.0µm magnitude"
      verbLevel="1" />
    <column name="err1_ma"
      tablehead="err1_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty MAG_AUTO 3.4µm magnitude"
      verbLevel="1" />
    <column name="err2_ma"
      tablehead="err2_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty MAG_AUTO 4.5µm magnitude"
      verbLevel="1" />
    <column name="err3_ma"
      tablehead="err3_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty MAG_AUTO 5.8µm magnitude"
      verbLevel="1" />
    <column name="err4_ma"
      tablehead="err4_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty MAG_AUTO 8.0µm magnitude"
      verbLevel="1" />
    <column name="flag"
      tablehead="Flag"
      type="integer"
      ucd="meta.code"
      description="SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <meta name="note" tag="1"><![CDATA[
      SExtractor flags:

      === ===================================================================
        1 The object has neighbours, bright and close enough to significantly
          bias the MAG_AUTO photometry, or bad pixels (more than 10% of the
          integrated area affected),
        2 The object was originally blended with another one,
        4 At least one pixel of the object is saturated (or very close to),
        8 The object is truncated (too close to an image boundary),
       16 Object's aperture data are incomplete or corrupted,
       32 Object's isophotal data are incomplete or corrupted,
       64 A memory overflow occurred during deblending,
      128 A memory overflow occurred during extraction.
      === ===================================================================

      ]]></meta>
  </table>
  <table id="i4" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

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
    <column name="ch1_4"
      tablehead="ch1_4"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="3.4µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch2_4"
      tablehead="ch2_4"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4.5µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch3_4"
      tablehead="ch3_4"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="5.8µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch4_4"
      tablehead="ch4_4"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="8.0µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err1_4"
      tablehead="err1_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty on 3.4µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err2_4"
      tablehead="err2_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 4.5µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err3_4"
      tablehead="err3_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 5.8µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err4_4"
      tablehead="err4_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty on 8.0µm Vega magnitude in 4 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch1_6"
      tablehead="ch1_6"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="3.4µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch2_6"
      tablehead="ch2_6"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4.5µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch3_6"
      tablehead="ch3_6"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="5.8µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch4_6"
      tablehead="ch4_6"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="8.0µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err1_6"
      tablehead="err1_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty on 3.4µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err2_6"
      tablehead="err2_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 4.5µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err3_6"
      tablehead="err3_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty on 5.8µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="err4_6"
      tablehead="err4_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty on 8.0µm Vega magnitude in 6 arcsec diameter aperture"
      verbLevel="1" />
    <column name="ch1_ma"
      tablehead="ch1_ma"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="MAG_AUTO 3.4µm magnitude"
      verbLevel="1" />
    <column name="ch2_ma"
      tablehead="ch2_ma"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="MAG_AUTO 4.5µm magnitude"
      verbLevel="1" />
    <column name="ch3_ma"
      tablehead="ch3_ma"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="MAG_AUTO 5.8µm magnitude"
      verbLevel="1" />
    <column name="ch4_ma"
      tablehead="ch4_ma"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="vega"
      description="MAG_AUTO 8.0µm magnitude"
      verbLevel="1" />
    <column name="err1_ma"
      tablehead="err1_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="uncertainty MAG_AUTO 3.4µm magnitude"
      verbLevel="1" />
    <column name="err2_ma"
      tablehead="err2_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty MAG_AUTO 4.5µm magnitude"
      verbLevel="1" />
    <column name="err3_ma"
      tablehead="err3_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="uncertainty MAG_AUTO 5.8µm magnitude"
      verbLevel="1" />
    <column name="err4_ma"
      tablehead="err4_ma"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="vega"
      description="uncertainty MAG_AUTO 8.0µm magnitude"
      verbLevel="1" />
    <column name="flag"
      tablehead="Flag"
      type="integer"
      ucd="meta.code"
      description="SExtractor flag"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="internal_id"
      tablehead="Internal_ID"
      type="text"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <meta name="note" tag="1"><![CDATA[
      SExtractor flags:

      === ===================================================================
        1 The object has neighbours, bright and close enough to significantly
          bias the MAG_AUTO photometry, or bad pixels (more than 10% of the
          integrated area affected),
        2 The object was originally blended with another one,
        4 At least one pixel of the object is saturated (or very close to),
        8 The object is truncated (too close to an image boundary),
       16 Object's aperture data are incomplete or corrupted,
       32 Object's isophotal data are incomplete or corrupted,
       64 A memory overflow occurred during deblending,
      128 A memory overflow occurred during extraction.
      === ===================================================================

      ]]></meta>
  </table>
  <data id="import_i1">
    <sources>data/SDWFS_ch1_stack.v34.csv</sources>
    <csvGrammar />
    <make table="i1">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          ch1_4:ch1_4,
          ch2_4:ch2_4,
          ch3_4:ch3_4,
          ch4_4:ch4_4,
          err1_4:err1_4,
          err2_4:err2_4,
          err3_4:err3_4,
          err4_4:err4_4,
          ch1_6:ch1_6,
          ch2_6:ch2_6,
          ch3_6:ch3_6,
          ch4_6:ch4_6,
          err1_6:err1_6,
          err2_6:err2_6,
          err3_6:err3_6,
          err4_6:err4_6,
          ch1_ma:ch1_ma,
          ch2_ma:ch2_ma,
          ch3_ma:ch3_ma,
          ch4_ma:ch4_ma,
          err1_ma:err1_ma,
          err2_ma:err2_ma,
          err3_ma:err3_ma,
          err4_ma:err4_ma,
          flag:flag,
          internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_i2">
    <sources>data/SDWFS_ch2_stack.v34.csv</sources>
    <csvGrammar />
    <make table="i2">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          ch1_4:ch1_4,
          ch2_4:ch2_4,
          ch3_4:ch3_4,
          ch4_4:ch4_4,
          err1_4:err1_4,
          err2_4:err2_4,
          err3_4:err3_4,
          err4_4:err4_4,
          ch1_6:ch1_6,
          ch2_6:ch2_6,
          ch3_6:ch3_6,
          ch4_6:ch4_6,
          err1_6:err1_6,
          err2_6:err2_6,
          err3_6:err3_6,
          err4_6:err4_6,
          ch1_ma:ch1_ma,
          ch2_ma:ch2_ma,
          ch3_ma:ch3_ma,
          ch4_ma:ch4_ma,
          err1_ma:err1_ma,
          err2_ma:err2_ma,
          err3_ma:err3_ma,
          err4_ma:err4_ma,
          flag:flag,
          internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_i3">
    <sources>data/SDWFS_ch3_stack.v34.csv</sources>
    <csvGrammar />
    <make table="i3">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          ch1_4:ch1_4,
          ch2_4:ch2_4,
          ch3_4:ch3_4,
          ch4_4:ch4_4,
          err1_4:err1_4,
          err2_4:err2_4,
          err3_4:err3_4,
          err4_4:err4_4,
          ch1_6:ch1_6,
          ch2_6:ch2_6,
          ch3_6:ch3_6,
          ch4_6:ch4_6,
          err1_6:err1_6,
          err2_6:err2_6,
          err3_6:err3_6,
          err4_6:err4_6,
          ch1_ma:ch1_ma,
          ch2_ma:ch2_ma,
          ch3_ma:ch3_ma,
          ch4_ma:ch4_ma,
          err1_ma:err1_ma,
          err2_ma:err2_ma,
          err3_ma:err3_ma,
          err4_ma:err4_ma,
          flag:flag,
          internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_i4">
    <sources>data/SDWFS_ch4_stack.v34.csv</sources>
    <csvGrammar />
    <make table="i4">
      <rowmaker idmaps="*">
        <simplemaps>
          ra:ra,
          dec:dec,
          ch1_4:ch1_4,
          ch2_4:ch2_4,
          ch3_4:ch3_4,
          ch4_4:ch4_4,
          err1_4:err1_4,
          err2_4:err2_4,
          err3_4:err3_4,
          err4_4:err4_4,
          ch1_6:ch1_6,
          ch2_6:ch2_6,
          ch3_6:ch3_6,
          ch4_6:ch4_6,
          err1_6:err1_6,
          err2_6:err2_6,
          err3_6:err3_6,
          err4_6:err4_6,
          ch1_ma:ch1_ma,
          ch2_ma:ch2_ma,
          ch3_ma:ch3_ma,
          ch4_ma:ch4_ma,
          err1_ma:err1_ma,
          err2_ma:err2_ma,
          err3_ma:err3_ma,
          err4_ma:err4_ma,
          flag:flag,
          internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone_i1" allowed="scs.xml,form,static">
    <meta name="title">SDWFS IRAC1</meta>
    <meta name="shortName">SDWFS1</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="i1">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_i2" allowed="scs.xml,form,static">
    <meta name="title">SDWFS IRAC2</meta>
    <meta name="shortName">SDWFS2</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="i2">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_i3" allowed="scs.xml,form,static">
    <meta name="title">SDWFS IRAC3</meta>
    <meta name="shortName">SDWFS3</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="i3">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_i4" allowed="scs.xml,form,static">
    <meta name="title">SDWFS IRAC4</meta>
    <meta name="shortName">SDWFS4</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="i4">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
