<resource schema="servs">
  <meta name="title">Spitzer Extragalactic Representative Volume Survey</meta>
  <meta name="creationDate">2016-05-27T18:37:30+0200</meta>
  <meta name="description">
    "Spitzer Extragalactic Representative Volume Survey" (SERVS) IRAC
    catalogues.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the  "Spitzer Extragalactic Representative Volume Survey" (SERVS) IRAC
    catalogues.

    SERVS provides three kinds of catalogues - IRAC1-3.4µm, IRAC2-4.5µm, and a list of 2 bands
    highly reliable sources - over 5 fields. We gathered them in three all-sky catalogues adding
    a `field` column containing the HELP field associated with each source.

    Here the source count per field (note that the SERVS data is entirely covered by HELP
    coverage.):

       +---------------+-------------+-------------+---------------+
       | Field         | IRAC1 count | IRAC2 count | 2-bands count |
       +---------------+-------------+-------------+---------------+
       | CDFS-SWIRE    |     345,122 |     328,423 |       243,248 |
       +---------------+-------------+-------------+---------------+
       | ELAIS-N1      |     159,489 |     154,010 |       114,658 |
       +---------------+-------------+-------------+---------------+
       | ELAIS-S1      |     241,302 |     225,521 |       169,262 |
       +---------------+-------------+-------------+---------------+
       | Lockman-SWIRE |     327,591 |     305,256 |       231,433 |
       +---------------+-------------+-------------+---------------+
       | XMM-LSS       |     349,171 |     323,995 |       245,000 |
       +---------------+-------------+-------------+---------------+

    To identify uniquely a source (e.g. when crossmatching) use the `name` column.

    More information about SERVS is available at http://www.cv.nrao.edu/~mlacy/servs.html

  ]]> </meta>

  <table id="i1" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="name">
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
    <column name="name"
      tablehead="Name"
      type="text"
      ucd="meta.id;meta.main"
      description="Source name"
      required="True"
      verbLevel="1" />
    <column name="id"
      tablehead="ID"
      type="bigint"
      ucd="meta.id"
      description="ID number"
      required="True"
      verbLevel="30">
    </column>
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
    <column name="flux_aper_1"
      tablehead="Flux_Aper_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 1.4 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_aper_2"
      tablehead="Flux_Aper_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 1.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_aper_3"
      tablehead="Flux_Aper_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 2.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_aper_4"
      tablehead="Flux_Aper_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 4.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_aper_5"
      tablehead="Flux_Aper_5"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux in 5.8 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_1"
      tablehead="FluxErr_Aper_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 1.4 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_2"
      tablehead="FluxErr_Aper_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 1.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_3"
      tablehead="FluxErr_Aper_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 2.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_4"
      tablehead="FluxErr_Aper_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 4.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_5"
      tablehead="FluxErr_Aper_5"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Flux error in 5.8 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_1"
      tablehead="SNR_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 1.4 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_2"
      tablehead="SNR_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 1.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_3"
      tablehead="SNR_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 2.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_4"
      tablehead="SNR_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 4.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_5"
      tablehead="SNR_5"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in 5.8 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_iso"
      tablehead="Flux_ISO"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Isophotal flux"
      verbLevel="1" />
    <column name="flux_auto"
      tablehead="Flux_Auto"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Kron flux"
      verbLevel="1" />
    <column name="fluxerr_iso"
      tablehead="FluxErr_ISO"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on flux_iso"
      verbLevel="1" />
    <column name="fluxerr_auto"
      tablehead="FluxErr_Auto"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty in flux_auto"
      verbLevel="1" />
    <column name="snr_iso"
      tablehead="snr_iso"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_auto"
      verbLevel="1" />
    <column name="snr_auto"
      tablehead="SNR_Auto"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_iso"
      verbLevel="1" />
    <column name="kron_radius"
      tablehead="Kron_radius"
      type="double precision"
      ucd="phys.size.radius;em.IR.3-4um"
      unit="pix"
      description="Kron radius"
      verbLevel="1" />
    <column name="class_star"
      tablehead="Class_star"
      type="double precision"
      ucd="src.class.starGalaxy"
      description="Stellaricity (on a scale from 0, definitely a resolved
      object, to 1, definitely unresolved)"
      verbLevel="1" />
    <column name="flags"
      tablehead="Flags"
      type="integer"
      ucd="meta.code"
      description="Flags (see note)"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="mask"
      tablehead="Mask"
      type="integer"
      ucd="meta.code"
      description="Mask (see note)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="cov"
      tablehead="Cov"
      type="double precision"
      ucd="meta.number"
      description="Coverage of 100s frames"
      verbLevel="30" />
    <column name="csnr"
      tablehead="cSNR"
      type="double precision"
      ucd="meta.number"
      description="Coverage-weighted SNR in aperture 2"
      verbLevel="30" />
    <column name="poly"
      tablehead="Poly"
      type="smallint"
      ucd="meta.code"
      description="High coverage polygon flag: 1 if within high coverage
      polygon, 0 otherwise"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="rel"
      tablehead="Rel"
      type="smallint"
      ucd="meta.code"
      description="Reliability flag: 1 if both CSNR>1 and POLY=1, otherwise 0"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>


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
  <table id="i2" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="name">
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
    <column name="name"
      tablehead="Name"
      type="text"
      ucd="meta.id;meta.main"
      description="Source name"
      required="True"
      verbLevel="1" />
    <column name="id"
      tablehead="ID"
      type="bigint"
      ucd="meta.id"
      description="ID number"
      required="True"
      verbLevel="30" />
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
    <column name="flux_aper_1"
      tablehead="Flux_Aper_1"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.4 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_aper_2"
      tablehead="Flux_Aper_2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 1.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_aper_3"
      tablehead="Flux_Aper_3"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 2.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_aper_4"
      tablehead="Flux_Aper_4"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 4.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_aper_5"
      tablehead="Flux_Aper_5"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux in 5.8 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_1"
      tablehead="FluxErr_Aper_1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.4 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_2"
      tablehead="FluxErr_Aper_2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 1.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_3"
      tablehead="FluxErr_Aper_3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 2.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_4"
      tablehead="FluxErr_Aper_4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 4.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="fluxerr_aper_5"
      tablehead="FluxErr_Aper_5"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Flux error in 5.8 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_1"
      tablehead="SNR_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.4 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_2"
      tablehead="SNR_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 1.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_3"
      tablehead="SNR_3"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 2.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_4"
      tablehead="SNR_4"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 4.9 arcsec radius aperture"
      verbLevel="1" />
    <column name="snr_5"
      tablehead="SNR_5"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in 5.8 arcsec radius aperture"
      verbLevel="1" />
    <column name="flux_iso"
      tablehead="Flux_ISO"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Isophotal flux"
      verbLevel="1" />
    <column name="flux_auto"
      tablehead="Flux_Auto"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Kron flux"
      verbLevel="1" />
    <column name="fluxerr_iso"
      tablehead="FluxErr_ISO"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on flux_iso"
      verbLevel="1" />
    <column name="fluxerr_auto"
      tablehead="FluxErr_Auto"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty in flux_auto"
      verbLevel="1" />
    <column name="snr_iso"
      tablehead="snr_iso"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_auto"
      verbLevel="1" />
    <column name="snr_auto"
      tablehead="SNR_Auto"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_iso"
      verbLevel="1" />
    <column name="kron_radius"
      tablehead="Kron_radius"
      type="double precision"
      ucd="phys.size.radius;em.IR.4-8um"
      unit="pix"
      description="Kron radius"
      verbLevel="1" />
    <column name="class_star"
      tablehead="Class_star"
      type="double precision"
      ucd="src.class.starGalaxy"
      description="Stellaricity (on a scale from 0, definitely a resolved
      object, to 1, definitely unresolved)"
      verbLevel="1" />
    <column name="flags"
      tablehead="Flags"
      type="integer"
      ucd="meta.code"
      description="Flags (see note)"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="mask"
      tablehead="Mask"
      type="integer"
      ucd="meta.code"
      description="Mask (see note)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="cov"
      tablehead="Cov"
      type="double precision"
      ucd="meta.number"
      description="Coverage of 100s frames"
      verbLevel="30" />
    <column name="csnr"
      tablehead="cSNR"
      type="double precision"
      ucd="meta.number"
      description="Coverage-weighted SNR in aperture 2"
      verbLevel="30" />
    <column name="poly"
      tablehead="Poly"
      type="smallint"
      ucd="meta.code"
      description="High coverage polygon flag: 1 if within high coverage
      polygon, 0 otherwise"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="rel"
      tablehead="Rel"
      type="smallint"
      ucd="meta.code"
      description="Reliability flag: 1 if both CSNR>1 and POLY=1, otherwise 0"
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>


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
  <table id="i12" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="name">
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
    <column name="name"
      tablehead="Name"
      type="text"
      ucd="meta.id;meta.main"
      description="Source name"
      required="True"
      verbLevel="1" />
    <column name="id"
      tablehead="ID"
      type="bigint"
      ucd="meta.id"
      description="ID number"
      required="True"
      verbLevel="30" />
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
    <column name="poly"
      tablehead="Poly"
      type="smallint"
      ucd="meta.code"
      description="Combined high coverage polygon flag."
      verbLevel="30">
        <values nullLiteral="-9"/>
    </column>
    <column name="rel"
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
      required="True"
      verbLevel="30" />
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
      tablehead="snr_iso_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_auto_1, 3.6 microns"
      verbLevel="1" />
    <column name="snr_auto_1"
      tablehead="SNR_Auto_1"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio in flux_iso_1, 3.6 microns"
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
      description="Stellaricity (on a scale from 0, definitely a resolved
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
      required="True"
      verbLevel="30" />
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
      description="Signal to noise ratio in flux_auto_2, 4.5 microns"
      verbLevel="1" />
    <column name="snr_auto_2"
      tablehead="SNR_Auto_2"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio in flux_iso_2, 4.5 microns"
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
      description="Stellaricity (on a scale from 0, definitely a resolved
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
  <data id="import_i1">
    <sources>data/servs_i1_help.csv</sources>
    <csvGrammar />
    <make table="i1">
      <rowmaker idmaps="*">
        <simplemaps>
          name:name,
          id:id,
          ra:ra,
          dec:dec,
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
          snr_1:snr_1,
          snr_2:snr_2,
          snr_3:snr_3,
          snr_4:snr_4,
          snr_5:snr_5,
          flux_iso:flux_iso,
          flux_auto:flux_auto,
          fluxerr_iso:fluxerr_iso,
          fluxerr_auto:fluxerr_auto,
          snr_iso:snr_iso,
          snr_auto:snr_auto,
          kron_radius:kron_radius,
          class_star:class_star,
          flags:flags,
          mask:mask,
          cov:cov,
          csnr:csnr,
          poly:poly,
          rel:rel,
          field:field
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_i2">
    <sources>data/servs_i2_help.csv</sources>
    <csvGrammar />
    <make table="i2">
      <rowmaker idmaps="*">
        <simplemaps>
          name:name,
          id:id,
          ra:ra,
          dec:dec,
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
          snr_1:snr_1,
          snr_2:snr_2,
          snr_3:snr_3,
          snr_4:snr_4,
          snr_5:snr_5,
          flux_iso:flux_iso,
          flux_auto:flux_auto,
          fluxerr_iso:fluxerr_iso,
          fluxerr_auto:fluxerr_auto,
          snr_iso:snr_iso,
          snr_auto:snr_auto,
          kron_radius:kron_radius,
          class_star:class_star,
          flags:flags,
          mask:mask,
          cov:cov,
          csnr:csnr,
          poly:poly,
          rel:rel,
          field:field
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_i12">
    <sources>data/servs_i12_help.csv</sources>
    <csvGrammar />
    <make table="i12">
      <rowmaker idmaps="*">
        <simplemaps>
          name:name,
          id:id,
          ra:ra,
          dec:dec,
          poly:poly,
          rel:rel,
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
          field:field
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <service id="cone_i1" allowed="scs.xml,form,static">
    <meta name="title">SERVS IRAC 3.6µm</meta>
    <meta name="shortName">SERVS-I1</meta>
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
      <condDesc buildFrom="field" />
      <condDesc buildFrom="name" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_i2" allowed="scs.xml,form,static">
    <meta name="title">SERVS IRAC 4.5µm</meta>
    <meta name="shortName">SERVS-I2</meta>
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
      <condDesc buildFrom="field" />
      <condDesc buildFrom="name" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
  <service id="cone_i12" allowed="scs.xml,form,static">
    <meta name="title">SERVS IRAC 2-bands</meta>
    <meta name="shortName">SERVS-I12</meta>
    <meta name="testQuery">
      <meta name="ra">150.1</meta>
      <meta name="dec">2.218</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="i12">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="field" />
      <condDesc buildFrom="name" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>
</resource>

<!--
vim:et:sta:sw=2
-->
