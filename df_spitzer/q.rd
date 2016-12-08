<resource schema="df_spitzer">
  <meta name="title">Spitzer Data Fusion Catalogues</meta>
  <meta name="creationDate">2016-08-04</meta>
  <meta name="description">
    Spitzer selected catalogues originating from Vaccari et al. “Data Fusion”
    work.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains Spitzer catalogues originating from Vaccari *et al.*
    “Data Fusion” work and described in:

    Vaccari et al. 2010, A&A, 518, L20 and Vaccari 2015, PoS, 267, 27
    (http://www.mattiavaccari.net/df)

    All the catalogues were limited to HELP coverage. There are four kinds of
    catalogues provided as per field tables. We merged all the tables of
    a particular kind in a single all-sky catalogue and we added a `orig_field`
    column containing the original field as used in the name of the catalogue.
    We also added a `field` column containing the name of the HELP field and an
    `internal_id` column uniquely identifying each source.  Please use this
    column when doing crossmatches.

    Here are the counts of sources per field:

    +---------------+---------+---------+-------------+---------+
    | Field         | SERVS   | SWIRE   | Bootes-xFLS | MIPS24  |
    +---------------+---------+---------+-------------+---------+
    | Bootes        |         |         |   1,142,840 | 121,118 |
    +---------------+---------+---------+-------------+---------+
    | CDFS-SWIRE    | 829,191 | 464,084 |             |  87,550 |
    +---------------+---------+---------+-------------+---------+
    | ELAIS-N1      | 395,243 | 573,843 |             | 109,214 |
    +---------------+---------+---------+-------------+---------+
    | ELAIS-N2      |         | 273,650 |             |  59,606 |
    +---------------+---------+---------+-------------+---------+
    | ELAIS-S1      | 605,425 | 368,900 |             |  53,658 |
    +---------------+---------+---------+-------------+---------+
    | Lockman-SWIRE | 951,102 | 659,974 |             | 118,933 |
    +---------------+---------+---------+-------------+---------+
    | XMM-LSS       | 958,421 | 497,404 |             |  85,151 |
    +---------------+---------+---------+-------------+---------+
    | xFLS          |         |         |     228,354 |  50,196 |
    +---------------+---------+---------+-------------+---------+

    SERVS Band-Merged Catalogue
    ---------------------------

    The `df_spitzer.servs` table contains the SERVS IRAC1 and IRAC2 catalogue
    described as:

        SERVS-IRAC12 "Bandmerge" - Mattia Vaccari (UWC) & Lucia Marchetti (OU)
        & Eduardo Gonzalez-Solares (IoA)

        http://www.mattiavaccari.net/df/ - Vaccari+ (in prep)

        We produced single-band IRAC1 and IRAC2 catalogs, measured aperture and
        integrated fluxes/magnitudes and corrected aperture fluxes/magnitudes
        using the correction factors adopted by SWIRE DR2/3 by Surace+ 2005

        http://irsa.ipac.caltech.edu/data/SPITZER/SWIRE/docs/delivery_doc_r2_v2.pdf

        We did merge single-band IRAC1 and IRAC2 catalogs into an IRAC12 catalog
        using a search radius of 1.0 arcsec

        We did add three columns at the beginning of the catalog

        - ID_12 index to track sources (single-band indices are NUMBER_1 and
          NUMBER_2)
        - RA_12 and DEC_12 which are average values for sources detected in both
          IRAC1 and IRAC2

    Spitzer-SWIRE Catalogue
    -----------------------

    The `df_spitzer.swire` table contains aperture corrected fluxes from the
    SWIRE Data release documented in Surace+ (2005) and Surace+ (in prep) with
    no cut applied.

    Spitzer Boötes and xFLS Catalogue
    ---------------------------------

    The `df_spitzer.bootes_xfls` contains Spitzer fluxes on the Boötes and xFLS
    field obtained by the Data Fusion team's own extraction, described as:

        Bootes-xFLS Spitzer Imaging:
        IRAC-1234 - Vaccari/Marchetti/Gonzalez-Solares (priv comm)
        MIPS-24 - Shupe/Vaccari (priv comm)
        MIPS-Ge - Seymour/Tugwell (priv comm)

    MIPS24 Catalogue
    ----------------

    The `df_spitzer.mips24` contains the MIPS24 catalogue.

    History
    -------

    ======== ============================================
    20160906 Addition of the MIPS24 catalogue
    20160805 Ingestion of the catalogues
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /df_spitzer/q/cone_servs/static

  ]]> </meta>

  <table id="servs" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra_12" "dec_12"
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
      tablehead="Internal_ID"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <column name="orig_field"
      tablehead="Orig_Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in Data Fusion table file"
      verbLevel="30" />
    <column name="id_12"
      tablehead="ID_12"
      type="bigint"
      ucd="meta.id"
      description="ID number"
      required="True"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_12"
      tablehead="RA_12"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec_12"
      tablehead="Dec_12"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="poly_12"
      tablehead="Poly"
      type="smallint"
      ucd="meta.code"
      description="Combined high coverage polygon flag."
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="rel_12"
      tablehead="Rel"
      type="smallint"
      ucd="meta.code"
      description="Combined reliability flag."
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="id_1"
      tablehead="ID_1"
      type="bigint"
      ucd="meta.id"
      description="ID number, 3.6 microns"
      verbLevel="30">
        <values nullLiteral="-9999"/>
    </column>
    <column name="ra_1"
      tablehead="RA_1"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000), 3.6 microns"
      verbLevel="30" />
    <column name="dec_1"
      tablehead="Dec_1"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000), 3.6 microns"
      verbLevel="30" />
    <column name="flux_aper_1_1"
      tablehead="Flux_Aper_1_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 1.4 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_aper_2_1"
      tablehead="Flux_Aper_2_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 1.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_aper_3_1"
      tablehead="Flux_Aper_3_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 2.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_aper_4_1"
      tablehead="Flux_Aper_4_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 4.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_aper_5_1"
      tablehead="Flux_Aper_5_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 5.8 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_1_1"
      tablehead="FluxErr_Aper_1_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 1.4 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_2_1"
      tablehead="FluxErr_Aper_2_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 1.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_3_1"
      tablehead="FluxErr_Aper_3_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 2.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_4_1"
      tablehead="FluxErr_Aper_4_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 4.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_5_1"
      tablehead="FluxErr_Aper_5_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 5.8 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_1_1"
      tablehead="SNR_1_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 1.4 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_2_1"
      tablehead="SNR_2_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 1.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_3_1"
      tablehead="SNR_3_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 2.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_4_1"
      tablehead="SNR_4_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 4.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_5_1"
      tablehead="SNR_5_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 5.8 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_iso_1"
      tablehead="Flux_ISO_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Isophotal flux, 3.6 microns"
      verbLevel="1" />
    <column name="flux_auto_1"
      tablehead="Flux_Auto_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Kron flux, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_iso_1"
      tablehead="FluxErr_ISO_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on flux_iso_1, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_auto_1"
      tablehead="FluxErr_Auto_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty in flux_auto_1, 3.6 microns"
      verbLevel="1" />
    <column name="snr_iso_1"
      tablehead="SNR_ISO_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_iso_1, 3.6 microns"
      verbLevel="1" />
    <column name="snr_auto_1"
      tablehead="SNR_Auto_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_auto_1, 3.6 microns"
      verbLevel="1" />
    <column name="kron_radius_1"
      tablehead="Kron_radius_1"
      type="double precision"
      ucd="phys.size.radius;em.IR.3-4um"
      unit="pix"
      description="Kron radius, 3.6 microns"
      verbLevel="1" />
    <column name="class_star_1"
      tablehead="Class_star_1"
      type="double precision"
      ucd="src.class.starGalaxy"
      description="Stellarity (on a scale from 0, definitely a resolved
      object, to 1, definitely unresolved), 3.6 microns"
      verbLevel="1" />
    <column name="flags_1"
      tablehead="Flags_1"
      type="integer"
      ucd="meta.code"
      description="Flags (see note), 3.6 microns"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="mask_1"
      tablehead="Mask_1"
      type="integer"
      ucd="meta.code"
      description="Mask (see note), 3.6 microns"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="cov_1"
      tablehead="Cov_1"
      type="double precision"
      ucd="meta.number"
      description="Coverage of 100s frames, 3.6 microns"
      verbLevel="30" />
    <column name="csnr_1"
      tablehead="cSNR_1"
      type="double precision"
      ucd="meta.number"
      description="Coverage-weighted SNR in aperture 2, 3.6 microns"
      verbLevel="30" />
    <column name="poly_1"
      tablehead="Poly_1"
      type="smallint"
      ucd="meta.code"
      description="High coverage polygon flag: 1 if within high coverage
      polygon, 0 otherwise, 3.6 microns"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="rel_1"
      tablehead="Rel_1"
      type="smallint"
      ucd="meta.code"
      description="Reliability flag: 1 if both CSNR>1 and POLY=1, otherwise 0, 3.6 microns"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="id_2"
      tablehead="ID_2"
      type="bigint"
      ucd="meta.id"
      description="ID number, 4.5 microns"
      verbLevel="30">
        <values nullLiteral="-9999"/>
    </column>
    <column name="ra_2"
      tablehead="RA_2"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000), 4.5 microns"
      verbLevel="30" />
    <column name="dec_2"
      tablehead="Dec_2"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000), 4.5 microns"
      verbLevel="30" />
    <column name="flux_aper_1_2"
      tablehead="Flux_Aper_1_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.4 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_aper_2_2"
      tablehead="Flux_Aper_2_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_aper_3_2"
      tablehead="Flux_Aper_3_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 2.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_aper_4_2"
      tablehead="Flux_Aper_4_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 4.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_aper_5_2"
      tablehead="Flux_Aper_5_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 5.8 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_1_2"
      tablehead="FluxErr_Aper_1_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.4 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_2_2"
      tablehead="FluxErr_Aper_2_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_3_2"
      tablehead="FluxErr_Aper_3_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 2.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_4_2"
      tablehead="FluxErr_Aper_4_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 4.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_5_2"
      tablehead="FluxErr_Aper_5_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 5.8 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_1_2"
      tablehead="SNR_1_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.4 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_2_2"
      tablehead="SNR_2_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_3_2"
      tablehead="SNR_3_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 2.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_4_2"
      tablehead="SNR_4_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 4.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_5_2"
      tablehead="SNR_5_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 5.8 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_iso_2"
      tablehead="Flux_ISO_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Isophotal flux, 4.5 microns"
      verbLevel="1" />
    <column name="flux_auto_2"
      tablehead="Flux_Auto_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Kron flux, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_iso_2"
      tablehead="FluxErr_ISO_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on flux_iso_2, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_auto_2"
      tablehead="FluxErr_Auto_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty in flux_auto_2, 4.5 microns"
      verbLevel="1" />
    <column name="snr_iso_2"
      tablehead="snr_iso_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_iso_2, 4.5 microns"
      verbLevel="1" />
    <column name="snr_auto_2"
      tablehead="SNR_Auto_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_auto_2, 4.5 microns"
      verbLevel="1" />
    <column name="kron_radius_2"
      tablehead="Kron_radius_2"
      type="double precision"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pix"
      description="Kron radius, 4.5 microns"
      verbLevel="1" />
    <column name="class_star_2"
      tablehead="Class_star_2"
      type="double precision"
      ucd="src.class.starGalaxy"
      description="Stellarity (on a scale from 0, definitely a resolved
      object, to 1, definitely unresolved), 4.5 microns"
      verbLevel="1" />
    <column name="flags_2"
      tablehead="Flags_2"
      type="integer"
      ucd="meta.code"
      description="Flags (see note), 4.5 microns"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="mask_2"
      tablehead="Mask_2"
      type="integer"
      ucd="meta.code"
      description="Mask (see note), 4.5 microns"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="cov_2"
      tablehead="Cov_2"
      type="double precision"
      ucd="meta.number"
      description="Coverage of 100s frames, 4.5 microns"
      verbLevel="30" />
    <column name="csnr_2"
      tablehead="cSNR_2"
      type="double precision"
      ucd="meta.number"
      description="Coverage-weighted SNR in aperture 2, 4.5 microns"
      verbLevel="30" />
    <column name="poly_2"
      tablehead="Poly_2"
      type="smallint"
      ucd="meta.code"
      description="High coverage polygon flag: 1 if within high coverage
      polygon, 0 otherwise, 4.5 microns"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="rel_2"
      tablehead="Rel_2"
      type="smallint"
      ucd="meta.code"
      description="Reliability flag: 1 if both CSNR>1 and POLY=1, otherwise 0, 4.5 microns"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="double precision"
      ucd="pos.ang;arith.diff"
      unit="arcsec"
      description="Position difference between 3.6 and 4.5 microns."
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Flags:

      ========== =============================================================
       1 (Bit 0) The object has neighbours, bright and close enough to
                 significantly bias the photometry, or bad pixels (more than
                 10% of the integrated area affected).
       2 (Bit 1) The object was originally blended with another one.
       4 (Bit 2) At least one pixel of the object is saturated (or very close
                 to).
       8 (Bit 3) The object is truncates (to close to an image boundary).
      16 (Bit 4) Object's aperture data are incomplete or corrupted.
      32 (Bit 5) Object's isophotal data are incomplete or corrupted.
      ========== =============================================================

      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      Mask:

      =========== ===================================================
        1 (Bit 0) Overall data quality (set if poor)
        2 (Bit 1) Set if pixel contains radhit
        4 (Bit 2) Set if optical ghost present
        8 (Bit 3) Set if stray light present
       16 (Bit 4) Set if saturation donut
       32 (Bit 5) Set if pixel contains latent image
       64 (Bit 6) Set if pixel is saturated
      128 (Bit 7) Set if column pull-down present
      256 (Bit 8) Set if mosaic coverage <4 (added to the catalogues
                  post-extraction)
      512 (Bit 9) Set if bright star is present
      =========== ===================================================

      ]]></meta>
  </table>

  <table id="swire" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra_spitzer" "dec_spitzer"
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
      tablehead="Internal_ID"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <column name="orig_field"
      tablehead="Orig_Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in Data Fusion table file"
      verbLevel="30" />
    <column name="index_spitzer"
      tablehead="Index_Spitzer"
      type="integer"
      ucd="meta.id"
      description="Spitzer Data Fusion Source Index"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="ra_spitzer"
      tablehead="RA_Spitzer"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec_spitzer"
      tablehead="Dec_Spitzer"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="flux_ap1_36"
      tablehead="Flux_Ap1_36"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 1 (1.4 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap1_36"
      tablehead="UncF_Ap1_36"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 1 (1.4 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap2_36"
      tablehead="Flux_Ap2_36"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 2 (1.9 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap2_36"
      tablehead="UncF_Ap2_36"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 2 (1.9 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap3_36"
      tablehead="Flux_Ap3_36"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 3 (2.9 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap3_36"
      tablehead="UncF_Ap3_36"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 3 (2.9 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap4_36"
      tablehead="Flux_Ap4_36"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 4 (4.1 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap4_36"
      tablehead="UncF_Ap4_36"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 4 (4.1 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap5_36"
      tablehead="Flux_Ap5_36"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 5 (5.8 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap5_36"
      tablehead="UncF_Ap5_36"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) aperture 5 (5.8 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_kr_36"
      tablehead="Flux_Kr_36"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) Kron flux"
      verbLevel="1" />
    <column name="uncf_kr_36"
      tablehead="UncF_Kr_36"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) Kron flux error"
      verbLevel="1" />
    <column name="rad_kr_36"
      tablehead="Rad_Kr_36"
      type="double precision"
      ucd="phys.size.radius;em.IR.3-4um"
      unit="pixel"
      description="IRAC1 (3.6 micron) Kron radius"
      verbLevel="1" />
    <column name="flux_iso_36"
      tablehead="Flux_ISO_36"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) isophotal flux"
      verbLevel="1" />
    <column name="uncf_iso_36"
      tablehead="UncF_ISO_36"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) isophotal flux error"
      verbLevel="1" />
    <column name="area_iso_36"
      tablehead="Area_Iso_36"
      type="double precision"
      ucd="phys.angArea;em.IR.3-4um"
      unit="arcsec**2"
      description="IRAC1 (3.6 micron) isophotal area"
      verbLevel="1" />
    <column name="flux_isocor_36"
      tablehead="Flux_ISOcor_36"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) isophotal corrected flux"
      verbLevel="1" />
    <column name="uncf_isocor_36"
      tablehead="UncF_ISOcor_36"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC1 (3.6 micron) isophotal corrected flux error"
      verbLevel="1" />
    <column name="stell_36"
      tablehead="Stell_36"
      type="double precision"
      ucd="src.class.starGalaxy"
      description="IRAC1 (3.6 micron) stellarity flag"
      verbLevel="1" />
    <column name="flux_ap1_45"
      tablehead="Flux_Ap1_45"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 1 (1.4 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap1_45"
      tablehead="UncF_Ap1_45"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 1 (1.4 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap2_45"
      tablehead="Flux_Ap2_45"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 2 (1.9 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap2_45"
      tablehead="UncF_Ap2_45"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 2 (1.9 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap3_45"
      tablehead="Flux_Ap3_45"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 3 (2.9 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap3_45"
      tablehead="UncF_Ap3_45"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 3 (2.9 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap4_45"
      tablehead="Flux_Ap4_45"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 4 (4.1 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap4_45"
      tablehead="UncF_Ap4_45"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 4 (4.1 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap5_45"
      tablehead="Flux_Ap5_45"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 5 (5.8 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap5_45"
      tablehead="UncF_Ap5_45"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) aperture 5 (5.8 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_kr_45"
      tablehead="Flux_Kr_45"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) Kron flux"
      verbLevel="1" />
    <column name="uncf_kr_45"
      tablehead="UncF_Kr_45"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) Kron flux error"
      verbLevel="1" />
    <column name="rad_kr_45"
      tablehead="Rad_Kr_45"
      type="double precision"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pixel"
      description="IRAC2 (4.5 micron) Kron radius"
      verbLevel="1" />
    <column name="flux_iso_45"
      tablehead="Flux_ISO_45"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) isophotal flux"
      verbLevel="1" />
    <column name="uncf_iso_45"
      tablehead="UncF_ISO_45"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) isophotal flux error"
      verbLevel="1" />
    <column name="area_iso_45"
      tablehead="Area_Iso_45"
      type="double precision"
      ucd="phys.angArea;em.IR.4-8um"
      unit="arcsec**2"
      description="IRAC2 (4.5 micron) isophotal area"
      verbLevel="1" />
    <column name="flux_isocor_45"
      tablehead="Flux_ISOcor_45"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) isophotal corrected flux"
      verbLevel="1" />
    <column name="uncf_isocor_45"
      tablehead="UncF_ISOcor_45"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC2 (4.5 micron) isophotal corrected flux error"
      verbLevel="1" />
    <column name="stell_45"
      tablehead="Stell_45"
      type="double precision"
      ucd="src.class.starGalaxy"
      description="IRAC2 (4.5 micron) stellarity flag"
      verbLevel="1" />
    <column name="flux_ap1_58"
      tablehead="Flux_Ap1_58"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 1 (1.4 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap1_58"
      tablehead="UncF_Ap1_58"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 1 (1.4 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap2_58"
      tablehead="Flux_Ap2_58"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 2 (1.9 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap2_58"
      tablehead="UncF_Ap2_58"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 2 (1.9 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap3_58"
      tablehead="Flux_Ap3_58"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 3 (2.9 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap3_58"
      tablehead="UncF_Ap3_58"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 3 (2.9 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap4_58"
      tablehead="Flux_Ap4_58"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 4 (4.1 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap4_58"
      tablehead="UncF_Ap4_58"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 4 (4.1 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap5_58"
      tablehead="Flux_Ap5_58"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 5 (5.8 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap5_58"
      tablehead="UncF_Ap5_58"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) aperture 5 (5.8 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_kr_58"
      tablehead="Flux_Kr_58"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) Kron flux"
      verbLevel="1" />
    <column name="uncf_kr_58"
      tablehead="UncF_Kr_58"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) Kron flux error"
      verbLevel="1" />
    <column name="rad_kr_58"
      tablehead="Rad_Kr_58"
      type="double precision"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pixel"
      description="IRAC3 (5.8 micron) Kron radius"
      verbLevel="1" />
    <column name="flux_iso_58"
      tablehead="Flux_ISO_58"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) isophotal flux"
      verbLevel="1" />
    <column name="uncf_iso_58"
      tablehead="UncF_ISO_58"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) isophotal flux error"
      verbLevel="1" />
    <column name="area_iso_58"
      tablehead="Area_Iso_58"
      type="double precision"
      ucd="phys.angArea;em.IR.4-8um"
      unit="arcsec**2"
      description="IRAC3 (5.8 micron) isophotal area"
      verbLevel="1" />
    <column name="flux_isocor_58"
      tablehead="Flux_ISOcor_58"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) isophotal corrected flux"
      verbLevel="1" />
    <column name="uncf_isocor_58"
      tablehead="UncF_ISOcor_58"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC3 (5.8 micron) isophotal corrected flux error"
      verbLevel="1" />
    <column name="stell_58"
      tablehead="Stell_58"
      type="double precision"
      ucd="src.class.starGalaxy"
      description="IRAC3 (5.8 micron) stellarity flag"
      verbLevel="1" />
    <column name="flux_ap1_80"
      tablehead="Flux_Ap1_80"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 1 (1.4 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap1_80"
      tablehead="UncF_Ap1_80"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 1 (1.4 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap2_80"
      tablehead="Flux_Ap2_80"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 2 (1.9 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap2_80"
      tablehead="UncF_Ap2_80"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 2 (1.9 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap3_80"
      tablehead="Flux_Ap3_80"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 3 (2.9 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap3_80"
      tablehead="UncF_Ap3_80"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 3 (2.9 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap4_80"
      tablehead="Flux_Ap4_80"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 4 (4.1 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap4_80"
      tablehead="UncF_Ap4_80"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 4 (4.1 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_ap5_80"
      tablehead="Flux_Ap5_80"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 5 (5.8 arcsec radius) flux"
      verbLevel="1" />
    <column name="uncf_ap5_80"
      tablehead="UncF_Ap5_80"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) aperture 5 (5.8 arcsec radius) flux error"
      verbLevel="1" />
    <column name="flux_kr_80"
      tablehead="Flux_Kr_80"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) Kron flux"
      verbLevel="1" />
    <column name="uncf_kr_80"
      tablehead="UncF_Kr_80"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) Kron flux error"
      verbLevel="1" />
    <column name="rad_kr_80"
      tablehead="Rad_Kr_80"
      type="double precision"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pixel"
      description="IRAC4 (8.0 micron) Kron radius"
      verbLevel="1" />
    <column name="flux_iso_80"
      tablehead="Flux_ISO_80"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) isophotal flux"
      verbLevel="1" />
    <column name="uncf_iso_80"
      tablehead="UncF_ISO_80"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) isophotal flux error"
      verbLevel="1" />
    <column name="area_iso_80"
      tablehead="Area_Iso_80"
      type="double precision"
      ucd="phys.angArea;em.IR.4-8um"
      unit="arcsec**2"
      description="IRAC2 (8.0 micron) isophotal area"
      verbLevel="1" />
    <column name="flux_isocor_80"
      tablehead="Flux_ISOcor_80"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) isophotal corrected flux"
      verbLevel="1" />
    <column name="uncf_isocor_80"
      tablehead="UncF_ISOcor_80"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC4 (8.0 micron) isophotal corrected flux error"
      verbLevel="1" />
    <column name="stell_80"
      tablehead="Stell_80"
      type="double precision"
      ucd="src.class.starGalaxy"
      description="IRAC4 (8.0 micron) stellarity flag"
      verbLevel="1" />
    <column name="snr_ap2_36"
      tablehead="SNR_Ap2_36"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="IRAC1 (3.6 micron) aperture 2 (1.9 arcsec radius) flux SNR"
      verbLevel="1" />
    <column name="snr_ap2_45"
      tablehead="SNR_Ap2_45"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC2 (4.5 micron) aperture 2 (1.9 arcsec radius) flux SNR"
      verbLevel="1" />
    <column name="snr_ap2_58"
      tablehead="SNR_Ap2_58"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC3 (5.8 micron) aperture 2 (1.9 arcsec radius) flux SNR"
      verbLevel="1" />
    <column name="snr_ap2_80"
      tablehead="SNR_Ap2_80"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC4 (8.0 micron) aperture 2 (1.9 arcsec radius) flux SNR"
      verbLevel="1" />
    <column name="snr_ap3_36"
      tablehead="SNR_Ap3_36"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="IRAC1 (3.6 micron) aperture 3 (2.9 arcsec radius) flux SNR"
      verbLevel="1" />
    <column name="snr_ap3_45"
      tablehead="SNR_Ap3_45"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC2 (4.5 micron) aperture 3 (2.9 arcsec radius) flux SNR"
      verbLevel="1" />
    <column name="snr_ap3_58"
      tablehead="SNR_Ap3_58"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC3 (5.8 micron) aperture 3 (2.9 arcsec radius) flux SNR"
      verbLevel="1" />
    <column name="snr_ap3_80"
      tablehead="SNR_Ap3_80"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC4 (8.0 micron) aperture 3 (2.9 arcsec radius) flux SNR"
      verbLevel="1" />
    <column name="snr_kr_36"
      tablehead="SNR_kr_36"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="IRAC1 Kron flux SNR"
      verbLevel="1" />
    <column name="snr_kr_45"
      tablehead="SNR_kr_45"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC2 Kron flux SNR"
      verbLevel="1" />
    <column name="snr_kr_58"
      tablehead="SNR_kr_58"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC3 Kron flux SNR"
      verbLevel="1" />
    <column name="snr_kr_80"
      tablehead="SNR_kr_80"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="IRAC4 Kron flux SNR"
      verbLevel="1" />
    <column name="cov_36"
      tablehead="Cov_36"
      type="integer"
      ucd="meta.number;em.IR.3-4um"
      description="IRAC1 (3.6 micron) coverage"
      verbLevel="30">
       <values nullLiteral="-9"/>
    </column>
    <column name="cov_45"
      tablehead="Cov_45"
      type="integer"
      ucd="meta.number;em.IR.4-8um"
      description="IRAC2 (4.5 micron) coverage"
      verbLevel="30">
       <values nullLiteral="-9"/>
    </column>
    <column name="cov_58"
      tablehead="Cov_58"
      type="integer"
      ucd="meta.number;em.IR.4-8um"
      description="IRAC3 (5.9 micron) coverage"
      verbLevel="30">
       <values nullLiteral="-9"/>
    </column>
    <column name="cov_80"
      tablehead="Cov_80"
      type="integer"
      ucd="meta.number;em.IR.4-8um"
      description="IRAC1 (8.0 micron) coverage"
      verbLevel="30">
       <values nullLiteral="-9"/>
    </column>
    <column name="ext_fl_36"
      tablehead="Ext_Fl_36"
      type="integer"
      ucd="meta.code;em.IR.3-4um"
      description="IRAC1 (3.6 micron) extension flag"
      verbLevel="30">
       <values nullLiteral="-9"/>
    </column>
    <column name="ext_fl_45"
      tablehead="Ext_Fl_45"
      type="integer"
      ucd="meta.code;em.IR.4-8um"
      description="IRAC2 (4.5 micron) extension flag"
      verbLevel="30">
       <values nullLiteral="-9"/>
    </column>
    <column name="ext_fl_58"
      tablehead="Ext_Fl_58"
      type="integer"
      ucd="meta.code;em.IR.4-8um"
      description="IRAC3 (5.9 micron) extension flag"
      verbLevel="30">
       <values nullLiteral="-9"/>
    </column>
    <column name="ext_fl_80"
      tablehead="Ext_Fl_80"
      type="integer"
      ucd="meta.code;em.IR.4-8um"
      description="IRAC1 (8.0 micron) extension flag"
      verbLevel="30">
       <values nullLiteral="-9"/>
    </column>
    <column name="cat"
      tablehead="Cat"
      type="integer"
      ucd="meta.code"
      description="IRAC source reliability flag (see note)"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="fl_2mass"
      tablehead="Fl_2MASS"
      type="integer"
      ucd="meta.code"
      description="2MASS detection flag"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="object"
      tablehead="Object"
      type="text"
      ucd="meta.id"
      description="SWIRE DR4 object ID"
      verbLevel="1" />
    <column name="number"
      tablehead="Number"
      type="bigint"
      ucd="meta.id"
      description="MIPS1 (24 micron) source index"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="flux_iso"
      tablehead="Flux_Iso"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal flux"
      verbLevel="1" />
    <column name="fluxerr_iso"
      tablehead="FluxErr_Iso"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal flux error"
      verbLevel="1" />
    <column name="flux_isocor"
      tablehead="Flux_IsoCor"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal corrected flux"
      verbLevel="1" />
    <column name="fluxerr_isocor"
      tablehead="FluxErr_IsoCor"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal corrected flux error"
      verbLevel="1" />
    <column name="flux_aper_1"
      tablehead="Flux_Aper_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 1 (3.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_2"
      tablehead="Flux_Aper_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 2 (5.25 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_3"
      tablehead="Flux_Aper_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 3 (7.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_4"
      tablehead="Flux_Aper_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 4 (10.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_5"
      tablehead="Flux_Aper_5"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 5 (15.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_1"
      tablehead="FluxErr_Aper_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 1 (3.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_2"
      tablehead="FluxErr_Aper_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 2 (5.25 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_3"
      tablehead="FluxErr_Aper_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 3 (7.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_4"
      tablehead="FluxErr_Aper_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 4 (10.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_5"
      tablehead="FluxErr_Aper_5"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 5 (15.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_auto"
      tablehead="Flux_Auto"
      type="double precision"
      ucd="phot.flux.density;em.ir.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) Kron flux"
      verbLevel="1" />
    <column name="fluxerr_auto"
      tablehead="FluxErr_Auto"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) Kron flux error"
      verbLevel="1" />
    <column name="kron_radius"
      tablehead="Kron_Radius"
      type="real"
      ucd="phys.angSize;em.IR.15-30um"
      unit="arcsec"
      description="MIPS1 (24 micron) Kron radius"
      verbLevel="1" />
    <column name="isoarea_image"
      tablehead="IsoArea_Image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="MIPS1 (24 micron) isophotal area"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="alpha_sky"
      tablehead="Alpha_Sky"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="MIPS1 (24 micron) RA"
      verbLevel="30" />
    <column name="delta_sky"
      tablehead="Delta_Sky"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="MIPS1 (24 micron) Dec"
      verbLevel="30" />
    <column name="srcid_4"
      tablehead="SrcID_4"
      type="bigint"
      ucd="meta.id"
      description="MIPS2 (70 micron) source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_4"
      tablehead="RA_4"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="MIPS2 (70 micron) RA"
      verbLevel="30" />
    <column name="delta_ra_4"
      tablehead="Delta_RA_4"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="MIPS2 (70 micron) RA error"
      verbLevel="30" />
    <column name="dec_4"
      tablehead="Dec_4"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="MIPS2 (70 micron) Dec"
      verbLevel="30" />
    <column name="delta_dec_4"
      tablehead="Delta_Dec_4"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="MIPS2 (70 micron) Dec error"
      verbLevel="30" />
    <column name="delta_rad_4"
      tablehead="Delta_Rad_4"
      type="real"
      ucd="stat.error"
      unit="deg"
      description="MIPS2 (70 micron) radial error"
      verbLevel="30" />
    <column name="flux_4"
      tablehead="Flux_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="MIPS2 (70 micron) PRF flux"
      verbLevel="1" />
    <column name="delta_flux_4"
      tablehead="Delta_Flux_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="MIPS2 (70 micron) PRF flux error"
      verbLevel="1" />
    <column name="snr_4"
      tablehead="SNR_4"
      type="real"
      ucd="stat.snr;em.IR.60-100um"
      description="MIPS2 (70 micron) PRF flux SNR"
      verbLevel="1" />
    <column name="chi2_dof_4"
      tablehead="Chi2_DOF_4"
      type="real"
      ucd="stat.fit.chi2"
      description="MIPS2 (70 micron) PRF chi squared over degrees of freedom"
      verbLevel="30" />
    <column name="srcid_5"
      tablehead="SrcID_5"
      type="bigint"
      ucd="meta.id"
      description="MIPS3 (160 micron) source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_5"
      tablehead="RA_5"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="MIPS3 (160 micron) RA"
      verbLevel="30" />
    <column name="delta_ra_5"
      tablehead="Delta_RA_5"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="MIPS3 (160 micron) RA error"
      verbLevel="30" />
    <column name="dec_5"
      tablehead="Dec_5"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="MIPS3 (160 micron) Dec"
      verbLevel="30" />
    <column name="delta_dec_5"
      tablehead="Delta_Dec_5"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="MIPS3 (160 micron) Dec error"
      verbLevel="30" />
    <column name="delta_rad_5"
      tablehead="Delta_Rad_5"
      type="real"
      ucd="stat.error"
      unit="deg"
      description="MIPS3 (160 micron) radial error"
      verbLevel="30" />
    <column name="flux_5"
      tablehead="Flux_5"
      type="double precision"
      ucd="phot.flux.density;em.mm.1500-3000GHz"
      unit="mJy"
      description="MIPS3 (160 micron) PRF flux"
      verbLevel="1" />
    <column name="delta_flux_5"
      tablehead="Delta_Flux_5"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.mm.1500-3000GHz"
      unit="mJy"
      description="MIPS3 (160 micron) PRF flux error"
      verbLevel="1" />
    <column name="snr_5"
      tablehead="SNR_5"
      type="real"
      ucd="stat.snr;em.mm.1500-3000GHz"
      description="MIPS3 (160 micron) PRF flux SNR"
      verbLevel="1" />
    <column name="chi2_dof_5"
      tablehead="Chi2_DOF_5"
      type="real"
      ucd="stat.fit.chi2"
      description="MIPS3 (160 micron) PRF chi squared over degrees of freedom"
      verbLevel="30" />

    <meta name="note" tag="1"><![CDATA[
    IRAC source reliability flag:

    = ============================================================
    0 tile intersection and edge of fields, potentially unreliable
    1 full coverage and moderately reliable
    2 full coverage and highly reliable
    = ============================================================

    ]]> </meta>
  </table>

  <table id="bootes_xfls" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra_spitzer" "dec_spitzer"
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
      tablehead="Internal_ID"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <column name="orig_field"
      tablehead="Orig_Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in Data Fusion table file"
      verbLevel="30" />
    <column name="index_spitzer"
      tablehead="Index_Spitzer"
      type="integer"
      ucd="meta.id"
      description="ID number"
      required="True"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_spitzer"
      tablehead="RA_Spitzer"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="dec_spitzer"
      tablehead="Dec_Spitzer"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="id_1"
      tablehead="ID_1"
      type="bigint"
      ucd="meta.id"
      description="IRAC1 source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_1"
      tablehead="RA_1"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="IRAC1 RA"
      verbLevel="30" />
    <column name="dec_1"
      tablehead="Dec_1"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="IRAC1 Dec"
      verbLevel="30" />
    <column name="flux_aper_1_1"
      tablehead="Flux_Aper_1_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 1.4 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_aper_2_1"
      tablehead="Flux_Aper_2_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 1.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_aper_3_1"
      tablehead="Flux_Aper_3_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 2.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_aper_4_1"
      tablehead="Flux_Aper_4_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 4.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_aper_5_1"
      tablehead="Flux_Aper_5_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 5.8 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_1_1"
      tablehead="FluxErr_Aper_1_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 1.4 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_2_1"
      tablehead="FluxErr_Aper_2_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 1.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_3_1"
      tablehead="FluxErr_Aper_3_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 2.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_4_1"
      tablehead="FluxErr_Aper_4_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 4.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_5_1"
      tablehead="FluxErr_Aper_5_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 5.8 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_1_1"
      tablehead="SNR_1_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 1.4 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_2_1"
      tablehead="SNR_2_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 1.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_3_1"
      tablehead="SNR_3_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 2.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_4_1"
      tablehead="SNR_4_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 4.9 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="snr_5_1"
      tablehead="SNR_5_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 5.8 arcsec radius aperture, 3.6 microns"
      verbLevel="1" />
    <column name="flux_iso_1"
      tablehead="Flux_ISO_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Isophotal flux, 3.6 microns"
      verbLevel="1" />
    <column name="flux_isocor_1"
      tablehead="Flux_ISOcor_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Isophotal corrected flux, 3.6 microns"
      verbLevel="1" />
    <column name="flux_auto_1"
      tablehead="Flux_Auto_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Kron flux, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_iso_1"
      tablehead="FluxErr_ISO_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on flux_iso_1, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_isocor_1"
      tablehead="FluxErr_ISOcor_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on flux_isocor_1, 3.6 microns"
      verbLevel="1" />
    <column name="fluxerr_auto_1"
      tablehead="FluxErr_Auto_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty in flux_auto_1, 3.6 microns"
      verbLevel="1" />
    <column name="snr_iso_1"
      tablehead="SNR_ISO_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_iso_1, 3.6 microns"
      verbLevel="1" />
    <column name="snr_isocor_1"
      tablehead="SNR_ISOcor_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_isocor_1, 3.6 microns"
      verbLevel="1" />
    <column name="snr_auto_1"
      tablehead="SNR_Auto_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_auto_1, 3.6 microns"
      verbLevel="1" />
    <column name="kron_radius_1"
      tablehead="Kron_radius_1"
      type="double precision"
      ucd="phys.size.radius;em.IR.3-4um"
      unit="pix"
      description="Kron radius, 3.6 microns"
      verbLevel="1" />
    <column name="isoarea_image_1"
      tablehead="IsoArea_Image_1"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area, 3.6 microns"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="class_star_1"
      tablehead="Class_Star_1"
      type="real"
      ucd="src.class.starGalaxy"
      description="Sextractor Star Class, 3.6 microns"
      verbLevel="1" />
    <column name="flags_1"
      tablehead="Flags_1"
      type="smallint"
      ucd="meta.code"
      description="Sextractor detection flag, 3.6 microns"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="id_2"
      tablehead="ID_2"
      type="bigint"
      ucd="meta.id"
      description="IRAC1 source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_2"
      tablehead="RA_2"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="IRAC1 RA"
      verbLevel="30" />
    <column name="dec_2"
      tablehead="Dec_2"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="IRAC1 Dec"
      verbLevel="30" />
    <column name="flux_aper_1_2"
      tablehead="Flux_Aper_1_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.4 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_aper_2_2"
      tablehead="Flux_Aper_2_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_aper_3_2"
      tablehead="Flux_Aper_3_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 2.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_aper_4_2"
      tablehead="Flux_Aper_4_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 4.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_aper_5_2"
      tablehead="Flux_Aper_5_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 5.8 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_1_2"
      tablehead="FluxErr_Aper_1_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.4 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_2_2"
      tablehead="FluxErr_Aper_2_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_3_2"
      tablehead="FluxErr_Aper_3_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 2.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_4_2"
      tablehead="FluxErr_Aper_4_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 4.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_5_2"
      tablehead="FluxErr_Aper_5_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 5.8 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_1_2"
      tablehead="SNR_1_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.4 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_2_2"
      tablehead="SNR_2_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_3_2"
      tablehead="SNR_3_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 2.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_4_2"
      tablehead="SNR_4_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 4.9 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="snr_5_2"
      tablehead="SNR_5_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 5.8 arcsec radius aperture, 4.5 microns"
      verbLevel="1" />
    <column name="flux_iso_2"
      tablehead="Flux_ISO_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Isophotal flux, 4.5 microns"
      verbLevel="1" />
    <column name="flux_isocor_2"
      tablehead="Flux_ISOcor_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Isophotal corrected flux, 4.5 microns"
      verbLevel="1" />
    <column name="flux_auto_2"
      tablehead="Flux_Auto_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Kron flux, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_iso_2"
      tablehead="FluxErr_ISO_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on flux_iso_1, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_isocor_2"
      tablehead="FluxErr_ISOcor_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on flux_isocor_1, 4.5 microns"
      verbLevel="1" />
    <column name="fluxerr_auto_2"
      tablehead="FluxErr_Auto_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty in flux_auto_1, 4.5 microns"
      verbLevel="1" />
    <column name="snr_iso_2"
      tablehead="SNR_ISO_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_iso_1, 4.5 microns"
      verbLevel="1" />
    <column name="snr_isocor_2"
      tablehead="SNR_ISOcor_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_isocor_1, 4.5 microns"
      verbLevel="1" />
    <column name="snr_auto_2"
      tablehead="SNR_Auto_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_auto_1, 4.5 microns"
      verbLevel="1" />
    <column name="kron_radius_2"
      tablehead="Kron_radius_2"
      type="double precision"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pix"
      description="Kron radius, 4.5 microns"
      verbLevel="1" />
    <column name="isoarea_image_2"
      tablehead="IsoArea_Image_2"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area, 4.5 microns"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="class_star_2"
      tablehead="Class_Star_2"
      type="real"
      ucd="src.class.starGalaxy"
      description="Sextractor Star Class, 4.5 microns"
      verbLevel="1" />
    <column name="flags_2"
      tablehead="Flags_2"
      type="smallint"
      ucd="meta.code"
      description="Sextractor detection flag, 4.5 microns"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="separation"
      tablehead="Separation"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="Separation between IRAC1 and IRAC2 sources "
      verbLevel="30" />
    <column name="id_3"
      tablehead="ID_3"
      type="bigint"
      ucd="meta.id"
      description="IRAC1 source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_3"
      tablehead="RA_3"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="IRAC1 RA"
      verbLevel="30" />
    <column name="dec_3"
      tablehead="Dec_3"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="IRAC1 Dec"
      verbLevel="30" />
    <column name="flux_aper_1_3"
      tablehead="Flux_Aper_1_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.4 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="flux_aper_2_3"
      tablehead="Flux_Aper_2_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="flux_aper_3_3"
      tablehead="Flux_Aper_3_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 2.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="flux_aper_4_3"
      tablehead="Flux_Aper_4_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 4.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="flux_aper_5_3"
      tablehead="Flux_Aper_5_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 5.8 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_1_3"
      tablehead="FluxErr_Aper_1_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.4 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_2_3"
      tablehead="FluxErr_Aper_2_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_3_3"
      tablehead="FluxErr_Aper_3_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 2.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_4_3"
      tablehead="FluxErr_Aper_4_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 4.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_5_3"
      tablehead="FluxErr_Aper_5_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 5.8 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="snr_1_3"
      tablehead="SNR_1_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.4 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="snr_2_3"
      tablehead="SNR_2_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="snr_3_3"
      tablehead="SNR_3_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 2.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="snr_4_3"
      tablehead="SNR_4_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 4.9 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="snr_5_3"
      tablehead="SNR_5_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 5.8 arcsec radius aperture, 5.8 microns"
      verbLevel="1" />
    <column name="flux_iso_3"
      tablehead="Flux_ISO_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Isophotal flux, 5.8 microns"
      verbLevel="1" />
    <column name="flux_isocor_3"
      tablehead="Flux_ISOcor_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Isophotal corrected flux, 5.8 microns"
      verbLevel="1" />
    <column name="flux_auto_3"
      tablehead="Flux_Auto_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Kron flux, 5.8 microns"
      verbLevel="1" />
    <column name="fluxerr_iso_3"
      tablehead="FluxErr_ISO_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on flux_iso_1, 5.8 microns"
      verbLevel="1" />
    <column name="fluxerr_isocor_3"
      tablehead="FluxErr_ISOcor_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on flux_isocor_1, 5.8 microns"
      verbLevel="1" />
    <column name="fluxerr_auto_3"
      tablehead="FluxErr_Auto_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty in flux_auto_1, 5.8 microns"
      verbLevel="1" />
    <column name="snr_iso_3"
      tablehead="SNR_ISO_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_iso_1, 5.8 microns"
      verbLevel="1" />
    <column name="snr_isocor_3"
      tablehead="SNR_ISOcor_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_isocor_1, 5.8 microns"
      verbLevel="1" />
    <column name="snr_auto_3"
      tablehead="SNR_Auto_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_auto_1, 5.8 microns"
      verbLevel="1" />
    <column name="kron_radius_3"
      tablehead="Kron_radius_3"
      type="double precision"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pix"
      description="Kron radius, 5.8 microns"
      verbLevel="1" />
    <column name="isoarea_image_3"
      tablehead="IsoArea_Image_3"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area, 5.8 microns"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="class_star_3"
      tablehead="Class_Star_3"
      type="real"
      ucd="src.class.starGalaxy"
      description="Sextractor Star Class, 5.8 microns"
      verbLevel="1" />
    <column name="flags_3"
      tablehead="Flags_3"
      type="smallint"
      ucd="meta.code"
      description="Sextractor detection flag, 5.8 microns"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="id_4"
      tablehead="ID_4"
      type="bigint"
      ucd="meta.id"
      description="IRAC1 source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_4"
      tablehead="RA_4"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="IRAC1 RA"
      verbLevel="30" />
    <column name="dec_4"
      tablehead="Dec_4"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="IRAC1 Dec"
      verbLevel="30" />
    <column name="flux_aper_1_4"
      tablehead="Flux_Aper_1_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.4 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="flux_aper_2_4"
      tablehead="Flux_Aper_2_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="flux_aper_3_4"
      tablehead="Flux_Aper_3_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 2.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="flux_aper_4_4"
      tablehead="Flux_Aper_4_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 4.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="flux_aper_5_4"
      tablehead="Flux_Aper_5_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 5.8 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_1_4"
      tablehead="FluxErr_Aper_1_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.4 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_2_4"
      tablehead="FluxErr_Aper_2_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_3_4"
      tablehead="FluxErr_Aper_3_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 2.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_4_4"
      tablehead="FluxErr_Aper_4_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 4.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="fluxerr_aper_5_4"
      tablehead="FluxErr_Aper_5_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 5.8 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="snr_1_4"
      tablehead="SNR_1_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.4 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="snr_2_4"
      tablehead="SNR_2_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="snr_3_4"
      tablehead="SNR_3_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 2.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="snr_4_4"
      tablehead="SNR_4_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 4.9 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="snr_5_4"
      tablehead="SNR_5_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 5.8 arcsec radius aperture, 8.0 microns"
      verbLevel="1" />
    <column name="flux_iso_4"
      tablehead="Flux_ISO_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Isophotal flux, 8.0 microns"
      verbLevel="1" />
    <column name="flux_isocor_4"
      tablehead="Flux_ISOcor_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Isophotal corrected flux, 8.0 microns"
      verbLevel="1" />
    <column name="flux_auto_4"
      tablehead="Flux_Auto_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Kron flux, 8.0 microns"
      verbLevel="1" />
    <column name="fluxerr_iso_4"
      tablehead="FluxErr_ISO_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on flux_iso_1, 8.0 microns"
      verbLevel="1" />
    <column name="fluxerr_isocor_4"
      tablehead="FluxErr_ISOcor_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on flux_isocor_1, 8.0 microns"
      verbLevel="1" />
    <column name="fluxerr_auto_4"
      tablehead="FluxErr_Auto_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty in flux_auto_1, 8.0 microns"
      verbLevel="1" />
    <column name="snr_iso_4"
      tablehead="SNR_ISO_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_iso_1, 8.0 microns"
      verbLevel="1" />
    <column name="snr_isocor_4"
      tablehead="SNR_ISOcor_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_isocor_1, 8.0 microns"
      verbLevel="1" />
    <column name="snr_auto_4"
      tablehead="SNR_Auto_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_auto_1, 8.0 microns"
      verbLevel="1" />
    <column name="kron_radius_4"
      tablehead="Kron_radius_4"
      type="double precision"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pix"
      description="Kron radius, 8.0 microns"
      verbLevel="1" />
    <column name="isoarea_image_4"
      tablehead="IsoArea_Image_4"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area, 8.0 microns"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="class_star_4"
      tablehead="Class_Star_4"
      type="real"
      ucd="src.class.starGalaxy"
      description="Sextractor Star Class, 8.0 microns"
      verbLevel="1" />
    <column name="flags_4"
      tablehead="Flags_4"
      type="smallint"
      ucd="meta.code"
      description="Sextractor detection flag, 8.0 microns"
      note="1"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="number"
      tablehead="Number"
      type="bigint"
      ucd="meta.id"
      description="MIPS1 (24 micron) source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="flux_iso"
      tablehead="Flux_Iso"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal flux"
      verbLevel="1" />
    <column name="fluxerr_iso"
      tablehead="FluxErr_Iso"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal flux error"
      verbLevel="1" />
    <column name="flux_isocor"
      tablehead="Flux_IsoCor"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal corrected flux"
      verbLevel="1" />
    <column name="fluxerr_isocor"
      tablehead="FluxErr_IsoCor"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal corrected flux error"
      verbLevel="1" />
    <column name="flux_aper_1"
      tablehead="Flux_Aper_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 1 (3.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_2"
      tablehead="Flux_Aper_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 2 (5.25 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_3"
      tablehead="Flux_Aper_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 3 (7.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_4"
      tablehead="Flux_Aper_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 4 (10.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_5"
      tablehead="Flux_Aper_5"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 5 (15.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_1"
      tablehead="FluxErr_Aper_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 1 (3.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_2"
      tablehead="FluxErr_Aper_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 2 (5.25 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_3"
      tablehead="FluxErr_Aper_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 3 (7.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_4"
      tablehead="FluxErr_Aper_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 4 (10.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_5"
      tablehead="FluxErr_Aper_5"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 5 (15.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_auto"
      tablehead="Flux_Auto"
      type="double precision"
      ucd="phot.flux.density;em.ir.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) Kron flux"
      verbLevel="1" />
    <column name="fluxerr_auto"
      tablehead="FluxErr_Auto"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) Kron flux error"
      verbLevel="1" />
    <column name="kron_radius"
      tablehead="Kron_Radius"
      type="real"
      ucd="phys.angSize;em.IR.15-30um"
      unit="arcsec"
      description="MIPS1 (24 micron) Kron radius"
      verbLevel="1" />
    <column name="isoarea_image"
      tablehead="IsoArea_Image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="MIPS1 (24 micron) isophotal area"
      verbLevel="1">
        <values nullLiteral="-9"/>
    </column>
    <column name="alpha_sky"
      tablehead="Alpha_Sky"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="MIPS1 (24 micron) RA"
      verbLevel="30" />
    <column name="delta_sky"
      tablehead="Delta_Sky"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="MIPS1 (24 micron) Dec"
      verbLevel="30" />
    <column name="srcid_4"
      tablehead="SrcID_4"
      type="bigint"
      ucd="meta.id"
      description="MIPS2 (70 micron) source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_4"
      tablehead="RA_4"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="MIPS2 (70 micron) RA"
      verbLevel="30" />
    <column name="delta_ra_4"
      tablehead="Delta_RA_4"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="MIPS2 (70 micron) RA error"
      verbLevel="30" />
    <column name="dec_4"
      tablehead="Dec_4"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="MIPS2 (70 micron) Dec"
      verbLevel="30" />
    <column name="delta_dec_4"
      tablehead="Delta_Dec_4"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="MIPS2 (70 micron) Dec error"
      verbLevel="30" />
    <column name="delta_rad_4"
      tablehead="Delta_Rad_4"
      type="real"
      ucd="stat.error"
      unit="deg"
      description="MIPS2 (70 micron) radial error"
      verbLevel="30" />
    <column name="flux_4"
      tablehead="Flux_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="MIPS2 (70 micron) PRF flux"
      verbLevel="1" />
    <column name="delta_flux_4"
      tablehead="Delta_Flux_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.60-100um"
      unit="mJy"
      description="MIPS2 (70 micron) PRF flux error"
      verbLevel="1" />
    <column name="snr_4"
      tablehead="SNR_4"
      type="real"
      ucd="stat.snr;em.IR.60-100um"
      description="MIPS2 (70 micron) PRF flux SNR"
      verbLevel="1" />
    <column name="chi2_dof_4"
      tablehead="Chi2_DOF_4"
      type="real"
      ucd="stat.fit.chi2"
      description="MIPS2 (70 micron) PRF chi squared over degrees of freedom"
      verbLevel="30" />
    <column name="srcid_5"
      tablehead="SrcID_5"
      type="bigint"
      ucd="meta.id"
      description="MIPS3 (160 micron) source index"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="ra_5"
      tablehead="RA_5"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="MIPS3 (160 micron) RA"
      verbLevel="30" />
    <column name="delta_ra_5"
      tablehead="Delta_RA_5"
      type="real"
      ucd="stat.error;pos.eq.ra"
      unit="deg"
      description="MIPS3 (160 micron) RA error"
      verbLevel="30" />
    <column name="dec_5"
      tablehead="Dec_5"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="MIPS3 (160 micron) Dec"
      verbLevel="30" />
    <column name="delta_dec_5"
      tablehead="Delta_Dec_5"
      type="real"
      ucd="stat.error;pos.eq.dec"
      unit="deg"
      description="MIPS3 (160 micron) Dec error"
      verbLevel="30" />
    <column name="delta_rad_5"
      tablehead="Delta_Rad_5"
      type="real"
      ucd="stat.error"
      unit="deg"
      description="MIPS3 (160 micron) radial error"
      verbLevel="30" />
    <column name="flux_5"
      tablehead="Flux_5"
      type="double precision"
      ucd="phot.flux.density;em.mm.1500-3000GHz"
      unit="mJy"
      description="MIPS3 (160 micron) PRF flux"
      verbLevel="1" />
    <column name="delta_flux_5"
      tablehead="Delta_Flux_5"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.mm.1500-3000GHz"
      unit="mJy"
      description="MIPS3 (160 micron) PRF flux error"
      verbLevel="1" />
    <column name="snr_5"
      tablehead="SNR_5"
      type="real"
      ucd="stat.snr;em.mm.1500-3000GHz"
      description="MIPS3 (160 micron) PRF flux SNR"
      verbLevel="1" />
    <column name="chi2_dof_5"
      tablehead="Chi2_DOF_5"
      type="real"
      ucd="stat.fit.chi2"
      description="MIPS3 (160 micron) PRF chi squared over degrees of freedom"
      verbLevel="30" />

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

  <table id="mips24" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "alpha_sky" "delta_sky"
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
      tablehead="Internal_ID"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <column name="orig_field"
      tablehead="Orig_Field"
      type="text"
      ucd="meta.id;obs.field"
      description="Name of the field in Data Fusion table file"
      verbLevel="30" />
    <column name="number"
      tablehead="Number"
      type="bigint"
      ucd="meta.id"
      description="Identifier in the Data Fusion table file"
      required="True"
      verbLevel="30" />
    <column name="x_image"
      tablehead="X_image"
      type="real"
      ucd="pos.cartesian.x"
      unit="pixel"
      description="X position of the barycentre of the source."
      verbLevel="30" />
    <column name="errx2_image"
      tablehead="errX2_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.x;src"
      unit="pixel**2"
      description="Variance on x_image"
      verbLevel="30" />
    <column name="y_image"
      tablehead="Y_image"
      type="real"
      ucd="pos.cartesian.y"
      unit="pixel"
      description="Y position of the barycentre of the source."
      verbLevel="30" />
    <column name="erry2_image"
      tablehead="errY2_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.y;src"
      unit="pixel**2"
      description="Variance on y_image"
      verbLevel="30" />
    <column name="errxy_image"
      tablehead="errXY_image"
      type="double precision"
      ucd="star.variance;pos.cartesian.x;pos.cartesian.y;src"
      unit="pixel**2"
      description="Covariance of x_image, y_image"
      verbLevel="30" />
    <column name="flux_iso"
      tablehead="Flux_Iso"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal flux"
      verbLevel="1" />
    <column name="fluxerr_iso"
      tablehead="FluxErr_Iso"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal flux error"
      verbLevel="1" />
    <column name="flux_isocor"
      tablehead="Flux_IsoCor"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal corrected flux"
      verbLevel="1" />
    <column name="fluxerr_isocor"
      tablehead="FluxErr_IsoCor"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) isophotal corrected flux error"
      verbLevel="1" />
    <column name="flux_aper_1"
      tablehead="Flux_Aper_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 1 (3.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_2"
      tablehead="Flux_Aper_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 2 (5.25 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_3"
      tablehead="Flux_Aper_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 3 (7.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_4"
      tablehead="Flux_Aper_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 4 (10.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_aper_5"
      tablehead="Flux_Aper_5"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 5 (15.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_1"
      tablehead="FluxErr_Aper_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 1 (3.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_2"
      tablehead="FluxErr_Aper_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 2 (5.25 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_3"
      tablehead="FluxErr_Aper_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 3 (7.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_4"
      tablehead="FluxErr_Aper_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 4 (10.5 arcsec radius) flux"
      verbLevel="1" />
    <column name="fluxerr_aper_5"
      tablehead="FluxErr_Aper_5"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) aperture 5 (15.0 arcsec radius) flux"
      verbLevel="1" />
    <column name="flux_auto"
      tablehead="Flux_Auto"
      type="double precision"
      ucd="phot.flux.density;em.ir.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) Kron flux"
      verbLevel="1" />
    <column name="fluxerr_auto"
      tablehead="FluxErr_Auto"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS1 (24 micron) Kron flux error"
      verbLevel="1" />
    <column name="mag_auto"
      tablehead="Mag_Auto"
      type="double precision"
      ucd="phot.mag;em.ir.15-30um"
      unit="mag"
      description="MIPS1 (24 micron) Kron magnitude"
      verbLevel="30" >
        <values nullLiteral="-99"/>
    </column>
    <column name="kron_radius"
      tablehead="Kron_Radius"
      type="real"
      ucd="phys.angSize;em.IR.15-30um"
      unit="arcsec"
      description="MIPS1 (24 micron) Kron radius"
      verbLevel="1" />
    <column name="isoarea_image"
      tablehead="IsoArea_Image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="MIPS1 (24 micron) isophotal area"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="alpha_sky"
      tablehead="Alpha_Sky"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="delta_sky"
      tablehead="Delta_Sky"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="x2_world"
      tablehead="X2_world"
      type="double precision"
      ucd="stat.variance;pos.eq.ra;src"
      unit="deg**2"
      description="Variance along alpha_sky"
      verbLevel="30" />
    <column name="y2_world"
      tablehead="Y2_world"
      type="double precision"
      ucd="stat.variance;pos.eq.dec;src"
      unit="deg**2"
      description="Variance along delta_sky"
      verbLevel="30" />
    <column name="xy_world"
      tablehead="XY_world"
      type="double precision"
      ucd="stat.covariance;pos.eq.ra;pos.eq.dec;src"
      unit="deg**2"
      description="Covariance between alpha_sky and delta_sky"
      verbLevel="30" />
    <column name="a_world"
      tablehead="A_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along major axis"
      verbLevel="30" />
    <column name="b_world"
      tablehead="B_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along minor axis"
      verbLevel="30" />
    <column name="theta_image"
      tablehead="Theta_image"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (CCW/x)"
      verbLevel="30" />
    <column name="elongation"
      tablehead="Elongation"
      type="real"
      ucd="phys.size.axisRatio"
      description="Elongation A_image/B_image"
      verbLevel="30" />
    <column name="ellipticity"
      tablehead="Ellipticity"
      type="real"
      ucd="src.ellipticity"
      description="Ellipticity 1 - B_image/A_image"
      verbLevel="30" />

    <column name="errx2_world"
      tablehead="ErrX2_world"
      type="double precision"
      ucd="stat.error;stat.variance;pos.eq.ra;src"
      unit="deg**2"
      description="Error on variance along alpha_sky"
      verbLevel="30" />
    <column name="erry2_world"
      tablehead="ErrY2_world"
      type="double precision"
      ucd="stat.error;stat.variance;pos.eq.dec;src"
      unit="deg**2"
      description="Error on variance along delta_sky"
      verbLevel="30" />
    <column name="errxy_world"
      tablehead="ErrXY_world"
      type="double precision"
      ucd="stat.error;stat.covariance;pos.eq.ra;pos.eq.dec;src"
      unit="deg**2"
      description="Error on covariance between alpha_sky and delta_sky"
      verbLevel="30" />
    <column name="erra_world"
      tablehead="ErrA_world"
      type="double precision"
      ucd="stat.error;stat.stdev"
      unit="deg"
      description="Error on profile RMS along major axis"
      verbLevel="30" />
    <column name="errb_world"
      tablehead="ErrB_world"
      type="double precision"
      ucd="stat.error;stat.stdev"
      unit="deg"
      description="Error on profile RMS along minor axis"
      verbLevel="30" />
    <column name="errtheta_image"
      tablehead="ErrTheta_image"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="Error on position angle (CCW/x)"
      verbLevel="30" />
    <column name="fwhm_world"
      tablehead="FWHM_world"
      type="real"
      ucd="phys.angSize"
      unit="deg"
      description="FWHM assuming a Gaussian core"
      verbLevel="30" />
    <column name="class_star"
      tablehead="Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="S/G classifier output"
      verbLevel="1" />

    <column name="flags"
      tablehead="Flags"
      type="smallint"
      ucd="meta.code;em.IR.15-30um"
      description="Extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="imaflags_iso"
      tablehead="ImaFlags_ISO"
      type="integer"
      ucd="meta.code;em.IR.15-30um"
      description="FLAG-image flags OR'ed over the isophotal profile"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="nimaflags_iso"
      tablehead="NImaFlags_ISO"
      type="smallint"
      ucd="meta.number"
      unit="pixel"
      description="Number of flagged pixels entering ImaFlags_ISO"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>

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

  <data id="import_servs">
    <sources>data/datafusion_servs_help.csv</sources>
    <csvGrammar />
    <make table="servs">
      <rowmaker idmaps="*">
        <simplemaps>
            id_12:id_12,
            ra_12:ra_12,
            dec_12:dec_12,
            poly_12:poly_12,
            rel_12:rel_12,
            id_1:id_1,
            ra_1:ra_1,
            dec_1:dec_1,
            flux_aper_1_1:flux_aper_1_1,
            flux_aper_2_1:flux_aper_2_1,
            flux_aper_3_1:flux_aper_3_1,
            flux_aper_4_1:flux_aper_4_1,
            flux_aper_5_1:flux_aper_5_1,
            fluxerr_aper_1_1:fluxerr_aper_1_1,
            fluxerr_aper_2_1:fluxerr_aper_2_1,
            fluxerr_aper_3_1:fluxerr_aper_3_1,
            fluxerr_aper_4_1:fluxerr_aper_4_1,
            fluxerr_aper_5_1:fluxerr_aper_5_1,
            snr_1_1:snr_1_1,
            snr_2_1:snr_2_1,
            snr_3_1:snr_3_1,
            snr_4_1:snr_4_1,
            snr_5_1:snr_5_1,
            flux_iso_1:flux_iso_1,
            flux_auto_1:flux_auto_1,
            fluxerr_iso_1:fluxerr_iso_1,
            fluxerr_auto_1:fluxerr_auto_1,
            snr_iso_1:snr_iso_1,
            snr_auto_1:snr_auto_1,
            kron_radius_1:kron_radius_1,
            class_star_1:class_star_1,
            flags_1:flags_1,
            mask_1:mask_1,
            cov_1:cov_1,
            csnr_1:csnr_1,
            poly_1:poly_1,
            rel_1:rel_1,
            id_2:id_2,
            ra_2:ra_2,
            dec_2:dec_2,
            flux_aper_1_2:flux_aper_1_2,
            flux_aper_2_2:flux_aper_2_2,
            flux_aper_3_2:flux_aper_3_2,
            flux_aper_4_2:flux_aper_4_2,
            flux_aper_5_2:flux_aper_5_2,
            fluxerr_aper_1_2:fluxerr_aper_1_2,
            fluxerr_aper_2_2:fluxerr_aper_2_2,
            fluxerr_aper_3_2:fluxerr_aper_3_2,
            fluxerr_aper_4_2:fluxerr_aper_4_2,
            fluxerr_aper_5_2:fluxerr_aper_5_2,
            snr_1_2:snr_1_2,
            snr_2_2:snr_2_2,
            snr_3_2:snr_3_2,
            snr_4_2:snr_4_2,
            snr_5_2:snr_5_2,
            flux_iso_2:flux_iso_2,
            flux_auto_2:flux_auto_2,
            fluxerr_iso_2:fluxerr_iso_2,
            fluxerr_auto_2:fluxerr_auto_2,
            snr_iso_2:snr_iso_2,
            snr_auto_2:snr_auto_2,
            kron_radius_2:kron_radius_2,
            class_star_2:class_star_2,
            flags_2:flags_2,
            mask_2:mask_2,
            cov_2:cov_2,
            csnr_2:csnr_2,
            poly_2:poly_2,
            rel_2:rel_2,
            separation:separation,
            orig_field:orig_field,
            field:field,
            internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_swire">
    <sources>data/datafusion_swire_help.csv</sources>
    <csvGrammar />
    <make table="swire">
      <rowmaker idmaps="*">
        <simplemaps>
            index_spitzer:index_spitzer,
            ra_spitzer:ra_spitzer,
            dec_spitzer:dec_spitzer,
            flux_ap1_36:flux_ap1_36,
            uncf_ap1_36:uncf_ap1_36,
            flux_ap2_36:flux_ap2_36,
            uncf_ap2_36:uncf_ap2_36,
            flux_ap3_36:flux_ap3_36,
            uncf_ap3_36:uncf_ap3_36,
            flux_ap4_36:flux_ap4_36,
            uncf_ap4_36:uncf_ap4_36,
            flux_ap5_36:flux_ap5_36,
            uncf_ap5_36:uncf_ap5_36,
            flux_kr_36:flux_kr_36,
            uncf_kr_36:uncf_kr_36,
            rad_kr_36:rad_kr_36,
            flux_iso_36:flux_iso_36,
            uncf_iso_36:uncf_iso_36,
            area_iso_36:area_iso_36,
            flux_isocor_36:flux_isocor_36,
            uncf_isocor_36:uncf_isocor_36,
            stell_36:stell_36,
            flux_ap1_45:flux_ap1_45,
            uncf_ap1_45:uncf_ap1_45,
            flux_ap2_45:flux_ap2_45,
            uncf_ap2_45:uncf_ap2_45,
            flux_ap3_45:flux_ap3_45,
            uncf_ap3_45:uncf_ap3_45,
            flux_ap4_45:flux_ap4_45,
            uncf_ap4_45:uncf_ap4_45,
            flux_ap5_45:flux_ap5_45,
            uncf_ap5_45:uncf_ap5_45,
            flux_kr_45:flux_kr_45,
            uncf_kr_45:uncf_kr_45,
            rad_kr_45:rad_kr_45,
            flux_iso_45:flux_iso_45,
            uncf_iso_45:uncf_iso_45,
            area_iso_45:area_iso_45,
            flux_isocor_45:flux_isocor_45,
            uncf_isocor_45:uncf_isocor_45,
            stell_45:stell_45,
            flux_ap1_58:flux_ap1_58,
            uncf_ap1_58:uncf_ap1_58,
            flux_ap2_58:flux_ap2_58,
            uncf_ap2_58:uncf_ap2_58,
            flux_ap3_58:flux_ap3_58,
            uncf_ap3_58:uncf_ap3_58,
            flux_ap4_58:flux_ap4_58,
            uncf_ap4_58:uncf_ap4_58,
            flux_ap5_58:flux_ap5_58,
            uncf_ap5_58:uncf_ap5_58,
            flux_kr_58:flux_kr_58,
            uncf_kr_58:uncf_kr_58,
            rad_kr_58:rad_kr_58,
            flux_iso_58:flux_iso_58,
            uncf_iso_58:uncf_iso_58,
            area_iso_58:area_iso_58,
            flux_isocor_58:flux_isocor_58,
            uncf_isocor_58:uncf_isocor_58,
            stell_58:stell_58,
            flux_ap1_80:flux_ap1_80,
            uncf_ap1_80:uncf_ap1_80,
            flux_ap2_80:flux_ap2_80,
            uncf_ap2_80:uncf_ap2_80,
            flux_ap3_80:flux_ap3_80,
            uncf_ap3_80:uncf_ap3_80,
            flux_ap4_80:flux_ap4_80,
            uncf_ap4_80:uncf_ap4_80,
            flux_ap5_80:flux_ap5_80,
            uncf_ap5_80:uncf_ap5_80,
            flux_kr_80:flux_kr_80,
            uncf_kr_80:uncf_kr_80,
            rad_kr_80:rad_kr_80,
            flux_iso_80:flux_iso_80,
            uncf_iso_80:uncf_iso_80,
            area_iso_80:area_iso_80,
            flux_isocor_80:flux_isocor_80,
            uncf_isocor_80:uncf_isocor_80,
            stell_80:stell_80,
            snr_ap2_36:snr_ap2_36,
            snr_ap2_45:snr_ap2_45,
            snr_ap2_58:snr_ap2_58,
            snr_ap2_80:snr_ap2_80,
            snr_ap3_36:snr_ap3_36,
            snr_ap3_45:snr_ap3_45,
            snr_ap3_58:snr_ap3_58,
            snr_ap3_80:snr_ap3_80,
            snr_kr_36:snr_kr_36,
            snr_kr_45:snr_kr_45,
            snr_kr_58:snr_kr_58,
            snr_kr_80:snr_kr_80,
            cov_36:cov_36,
            cov_45:cov_45,
            cov_58:cov_58,
            cov_80:cov_80,
            ext_fl_36:ext_fl_36,
            ext_fl_45:ext_fl_45,
            ext_fl_58:ext_fl_58,
            ext_fl_80:ext_fl_80,
            cat:cat,
            fl_2mass:fl_2mass,
            object:object,
            number:number,
            flux_iso:flux_iso,
            fluxerr_iso:fluxerr_iso,
            flux_isocor:flux_isocor,
            fluxerr_isocor:fluxerr_isocor,
            flux_aper_1:flux_aper_1,
            flux_aper_2:flux_aper_2,
            flux_aper_3:flux_aper_3,
            flux_aper_4:flux_aper_4,
            flux_aper_5:flux_aper_5,
            fluxerr_aper_1:fluxerr_aper_1,
            fluxerr_aper_2:fluxerr_aper_2,
            fluxerr_aper_3:fluxerr_aper_3,
            fluxerr_aper_4:fluxerr_aper_4,
            fluxerr_aper_5:fluxerr_aper_5,
            flux_auto:flux_auto,
            fluxerr_auto:fluxerr_auto,
            kron_radius:kron_radius,
            isoarea_image:isoarea_image,
            alpha_sky:alpha_sky,
            delta_sky:delta_sky,
            srcid_4:srcid_4,
            ra_4:ra_4,
            delta_ra_4:delta_ra_4,
            dec_4:dec_4,
            delta_dec_4:delta_dec_4,
            delta_rad_4:delta_rad_4,
            flux_4:flux_4,
            delta_flux_4:delta_flux_4,
            snr_4:snr_4,
            chi2_dof_4:chi2_dof_4,
            srcid_5:srcid_5,
            ra_5:ra_5,
            delta_ra_5:delta_ra_5,
            dec_5:dec_5,
            delta_dec_5:delta_dec_5,
            delta_rad_5:delta_rad_5,
            flux_5:flux_5,
            delta_flux_5:delta_flux_5,
            snr_5:snr_5,
            chi2_dof_5:chi2_dof_5,
            orig_field:orig_field,
            field:field,
            internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_bootes_xfls">
    <sources>data/datafusion_spitzer_bootes_xfls_help.csv</sources>
    <csvGrammar />
    <make table="bootes_xfls">
      <rowmaker idmaps="*">
        <simplemaps>
          index_spitzer:index_spitzer,
          ra_spitzer:ra_spitzer,
          dec_spitzer:dec_spitzer,
          id_1:id_1,
          ra_1:ra_1,
          dec_1:dec_1,
          flux_aper_1_1:flux_aper_1_1,
          flux_aper_2_1:flux_aper_2_1,
          flux_aper_3_1:flux_aper_3_1,
          flux_aper_4_1:flux_aper_4_1,
          flux_aper_5_1:flux_aper_5_1,
          fluxerr_aper_1_1:fluxerr_aper_1_1,
          fluxerr_aper_2_1:fluxerr_aper_2_1,
          fluxerr_aper_3_1:fluxerr_aper_3_1,
          fluxerr_aper_4_1:fluxerr_aper_4_1,
          fluxerr_aper_5_1:fluxerr_aper_5_1,
          snr_1_1:snr_1_1,
          snr_2_1:snr_2_1,
          snr_3_1:snr_3_1,
          snr_4_1:snr_4_1,
          snr_5_1:snr_5_1,
          flux_iso_1:flux_iso_1,
          flux_isocor_1:flux_isocor_1,
          flux_auto_1:flux_auto_1,
          fluxerr_iso_1:fluxerr_iso_1,
          fluxerr_isocor_1:fluxerr_isocor_1,
          fluxerr_auto_1:fluxerr_auto_1,
          snr_iso_1:snr_iso_1,
          snr_isocor_1:snr_isocor_1,
          snr_auto_1:snr_auto_1,
          kron_radius_1:kron_radius_1,
          isoarea_image_1:isoarea_image_1,
          class_star_1:class_star_1,
          flags_1:flags_1,
          id_2:id_2,
          ra_2:ra_2,
          dec_2:dec_2,
          flux_aper_1_2:flux_aper_1_2,
          flux_aper_2_2:flux_aper_2_2,
          flux_aper_3_2:flux_aper_3_2,
          flux_aper_4_2:flux_aper_4_2,
          flux_aper_5_2:flux_aper_5_2,
          fluxerr_aper_1_2:fluxerr_aper_1_2,
          fluxerr_aper_2_2:fluxerr_aper_2_2,
          fluxerr_aper_3_2:fluxerr_aper_3_2,
          fluxerr_aper_4_2:fluxerr_aper_4_2,
          fluxerr_aper_5_2:fluxerr_aper_5_2,
          snr_1_2:snr_1_2,
          snr_2_2:snr_2_2,
          snr_3_2:snr_3_2,
          snr_4_2:snr_4_2,
          snr_5_2:snr_5_2,
          flux_iso_2:flux_iso_2,
          flux_isocor_2:flux_isocor_2,
          flux_auto_2:flux_auto_2,
          fluxerr_iso_2:fluxerr_iso_2,
          fluxerr_isocor_2:fluxerr_isocor_2,
          fluxerr_auto_2:fluxerr_auto_2,
          snr_iso_2:snr_iso_2,
          snr_isocor_2:snr_isocor_2,
          snr_auto_2:snr_auto_2,
          kron_radius_2:kron_radius_2,
          isoarea_image_2:isoarea_image_2,
          class_star_2:class_star_2,
          flags_2:flags_2,
          separation:separation,
          id_3:id_3,
          ra_3:ra_3,
          dec_3:dec_3,
          flux_aper_1_3:flux_aper_1_3,
          flux_aper_2_3:flux_aper_2_3,
          flux_aper_3_3:flux_aper_3_3,
          flux_aper_4_3:flux_aper_4_3,
          flux_aper_5_3:flux_aper_5_3,
          fluxerr_aper_1_3:fluxerr_aper_1_3,
          fluxerr_aper_2_3:fluxerr_aper_2_3,
          fluxerr_aper_3_3:fluxerr_aper_3_3,
          fluxerr_aper_4_3:fluxerr_aper_4_3,
          fluxerr_aper_5_3:fluxerr_aper_5_3,
          snr_1_3:snr_1_3,
          snr_2_3:snr_2_3,
          snr_3_3:snr_3_3,
          snr_4_3:snr_4_3,
          snr_5_3:snr_5_3,
          flux_iso_3:flux_iso_3,
          flux_isocor_3:flux_isocor_3,
          flux_auto_3:flux_auto_3,
          fluxerr_iso_3:fluxerr_iso_3,
          fluxerr_isocor_3:fluxerr_isocor_3,
          fluxerr_auto_3:fluxerr_auto_3,
          snr_iso_3:snr_iso_3,
          snr_isocor_3:snr_isocor_3,
          snr_auto_3:snr_auto_3,
          kron_radius_3:kron_radius_3,
          isoarea_image_3:isoarea_image_3,
          class_star_3:class_star_3,
          flags_3:flags_3,
          id_4:id_4,
          ra_4:ra_4,
          dec_4:dec_4,
          flux_aper_1_4:flux_aper_1_4,
          flux_aper_2_4:flux_aper_2_4,
          flux_aper_3_4:flux_aper_3_4,
          flux_aper_4_4:flux_aper_4_4,
          flux_aper_5_4:flux_aper_5_4,
          fluxerr_aper_1_4:fluxerr_aper_1_4,
          fluxerr_aper_2_4:fluxerr_aper_2_4,
          fluxerr_aper_3_4:fluxerr_aper_3_4,
          fluxerr_aper_4_4:fluxerr_aper_4_4,
          fluxerr_aper_5_4:fluxerr_aper_5_4,
          snr_1_4:snr_1_4,
          snr_2_4:snr_2_4,
          snr_3_4:snr_3_4,
          snr_4_4:snr_4_4,
          snr_5_4:snr_5_4,
          flux_iso_4:flux_iso_4,
          flux_isocor_4:flux_isocor_4,
          flux_auto_4:flux_auto_4,
          fluxerr_iso_4:fluxerr_iso_4,
          fluxerr_isocor_4:fluxerr_isocor_4,
          fluxerr_auto_4:fluxerr_auto_4,
          snr_iso_4:snr_iso_4,
          snr_isocor_4:snr_isocor_4,
          snr_auto_4:snr_auto_4,
          kron_radius_4:kron_radius_4,
          isoarea_image_4:isoarea_image_4,
          class_star_4:class_star_4,
          flags_4:flags_4,
          number:number,
          flux_iso:flux_iso,
          fluxerr_iso:fluxerr_iso,
          flux_isocor:flux_isocor,
          fluxerr_isocor:fluxerr_isocor,
          flux_aper_1:flux_aper_1,
          flux_aper_2:flux_aper_2,
          flux_aper_3:flux_aper_3,
          flux_aper_4:flux_aper_4,
          flux_aper_5:flux_aper_5,
          fluxerr_aper_1:fluxerr_aper_1,
          fluxerr_aper_2:fluxerr_aper_2,
          fluxerr_aper_3:fluxerr_aper_3,
          fluxerr_aper_4:fluxerr_aper_4,
          fluxerr_aper_5:fluxerr_aper_5,
          flux_auto:flux_auto,
          fluxerr_auto:fluxerr_auto,
          kron_radius:kron_radius,
          isoarea_image:isoarea_image,
          alpha_sky:alpha_sky,
          delta_sky:delta_sky,
          srcid_4:srcid_4,
          ra_4:ra_4a,
          delta_ra_4:delta_ra_4,
          dec_4:dec_4a,
          delta_dec_4:delta_dec_4,
          delta_rad_4:delta_rad_4,
          flux_4:flux_4,
          delta_flux_4:delta_flux_4,
          chi2_dof_4:chi2_dof_4,
          snr_4:snr_4,
          srcid_5:srcid_5,
          ra_5:ra_5,
          delta_ra_5:delta_ra_5,
          dec_5:dec_5,
          delta_dec_5:delta_dec_5,
          delta_rad_5:delta_rad_5,
          flux_5:flux_5,
          delta_flux_5:delta_flux_5,
          chi2_dof_5:chi2_dof_5,
          snr_5:snr_5,
          orig_field:orig_field,
          field:field,
          internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_mips24">
    <sources>data/datafusion_spitzer_mips24_help.csv</sources>
    <csvGrammar />
    <make table="mips24">
      <rowmaker idmaps="*">
        <simplemaps>
          number:number,
          x_image:x_image,
          errx2_image:errx2_image,
          y_image:y_image,
          erry2_image:erry2_image,
          errxy_image:errxy_image,
          flux_iso:flux_iso,
          fluxerr_iso:fluxerr_iso,
          flux_isocor:flux_isocor,
          fluxerr_isocor:fluxerr_isocor,
          flux_aper_1:flux_aper_1,
          flux_aper_2:flux_aper_2,
          flux_aper_3:flux_aper_3,
          flux_aper_4:flux_aper_4,
          flux_aper_5:flux_aper_5,
          fluxerr_aper_1:fluxerr_aper_1,
          fluxerr_aper_2:fluxerr_aper_2,
          fluxerr_aper_3:fluxerr_aper_3,
          fluxerr_aper_4:fluxerr_aper_4,
          fluxerr_aper_5:fluxerr_aper_5,
          flux_auto:flux_auto,
          fluxerr_auto:fluxerr_auto,
          mag_auto:mag_auto,
          kron_radius:kron_radius,
          isoarea_image:isoarea_image,
          alpha_sky:alpha_sky,
          delta_sky:delta_sky,
          x2_world:x2_world,
          y2_world:y2_world,
          xy_world:xy_world,
          a_world:a_world,
          b_world:b_world,
          theta_image:theta_image,
          elongation:elongation,
          ellipticity:ellipticity,
          errx2_world:errx2_world,
          erry2_world:erry2_world,
          errxy_world:errxy_world,
          erra_world:erra_world,
          errb_world:errb_world,
          errtheta_image:errtheta_image,
          fwhm_world:fwhm_world,
          class_star:class_star,
          flags:flags,
          imaflags_iso:imaflags_iso,
          nimaflags_iso:nimaflags_iso,
          orig_field:orig_field,
          field:field,
          internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone_servs" allowed="scs.xml,form,static">
    <meta name="title">Spitzer Data Fusion SERVS catalogue</meta>
    <meta name="shortName">DF_SERVS</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="servs">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="field" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_swire" allowed="scs.xml,form,static">
    <meta name="title">Spitzer Data Fusion SWIRE catalogue</meta>
    <meta name="shortName">DF_SWIRE</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="swire">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="field" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_bootes_xfls" allowed="scs.xml,form,static">
    <meta name="title">Spitzer Data Fusion Spitzer Boötes and xFLS extraction</meta>
    <meta name="shortName">DF_Bootes-xFLS</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="bootes_xfls">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="field" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_mips24" allowed="scs.xml,form,static">
    <meta name="title">Spitzer Data Fusion MIPS24 catalogue</meta>
    <meta name="shortName">DF_MIPS24</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="mips24">
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
