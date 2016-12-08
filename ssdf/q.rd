<resource schema="ssdf">
  <meta name="title">Spitzer-South Pole Telescope Deep Field</meta>
  <meta name="creationDate">2016-05-30</meta>
  <meta name="description">
    Spitzer South Pole Telescope Deep Field IRAC channel 1 and 2 catalogues.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the IRAC catalogues from the Spitzer-South Pole
    Telescope Deep Field (SSDF) downloaded from IRSA.

      The Spitzer-South Pole Telescope Deep Field (SSDF) is a wide-area survey
      using IRAC to cover 94 square degrees of extragalactic sky, making it the
      largest IRAC survey completed to date outside the Milky Way midplane. The
      SSDF is centred at 23:30,-55:00, in a region that combines observations
      spanning a broad wavelength range from numerous facilities. These include
      millimetre imaging from the South Pole Telescope, far-infrared
      observations from Herschel/SPIRE, X-ray observations from the XMM XXL
      survey, near-infrared observations from the VISTA Hemisphere Survey, and
      radio-wavelength imaging from the Australia Telescope Compact Array, in
      a panchromatic project designed to address major outstanding questions
      surrounding galaxy clusters and the baryon budget.

    There are two catalogues: ssdf.i1 is the list of 3.6µm (IRAC channel 1)
    selected sources and ssdf.i2 is the list of 4.5µm (channel 2) selected
    sources.

    The catalogues were not limited to HELP (SPIRE based) SSDF field coverage as
    the IRAC as only a few parts of the IRAC coverage is not on the SPIRE one.

    To identify uniquely a row (e.g. when cross-matching), please use the
    `cntr` column.

    Survey identification
    ---------------------

    +------------+-------------------------------------------------+
    | Survey     | Spitzer-South Pole Telescope Deep Field (SSDF)  |
    +------------+-------------------------------------------------+
    | Telescope  | Spitzer                                         |
    +------------+-------------------------------------------------+
    | Instrument | IRAC                                            |
    +------------+-------------------------------------------------+
    | Filters    | IRAC1 (3.6µm), IRAC2 (4.5µm)                    |
    +------------+-------------------------------------------------+
    | Reference  | Ashby et al., 2013 (`2013ApJS..209...22A`__)    |
    +------------+-------------------------------------------------+
    | URL        | http://irsa.ipac.caltech.edu/data/SPITZER/SSDF/ |
    +------------+-------------------------------------------------+

    __ http://adsabs.harvard.edu/abs/2013ApJS..209...22A

    History
    -------

    ======== ============================================
    20160530 Catalogues downloaded from IRSA and ingested
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /ssdf/q/cone_i1/static

  ]]> </meta>

  <table id="i1" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="cntr">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="tile"
      tablehead="Tile"
      type="text"
      ucd="obs.field"
      description="SSDF sub-tile of origin"
      verbLevel="30" />
    <column name="x_image"
      tablehead="X_image"
      type="double precision"
      ucd="pos.cartesian.x;intr.det"
      unit="pixel"
      description="Object position along x"
      verbLevel="30" />
    <column name="y_image"
      tablehead="Y_Image"
      type="double precision"
      ucd="pos.cartesian.y;instr.det"
      unit="pixel"
      description="Object position along y"
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
    <column name="kron_radius"
      tablehead="Kron_radius"
      type="real"
      ucd="phys.angSize;src"
      unit="pixel"
      description="Kron apertures in units of A or B"
      verbLevel="1" />
    <column name="background"
      tablehead="Background"
      type="double precision"
      ucd="instr.background"
      unit="count"
      description="Background at centroid position"
      verbLevel="30" />
    <column name="flux_radius"
      tablehead="Flux_radius"
      type="real"
      ucd="phys.angSize;src"
      unit="pixel"
      description="Fraction-of-light radius"
      verbLevel="30" />
    <column name="alphapeak_j2000"
      tablehead="AlphaPeak_J2000"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension of brightest pixel (J2000)"
      verbLevel="30" />
    <column name="deltapeak_j2000"
      tablehead="DeltaPeak_J2000"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination of brightest pixel (J2000)"
      verbLevel="30" />
    <column name="x2_image"
      tablehead="X2_image"
      type="real"
      ucd="star.variance;pos.cartesian.x;src"
      unit="pixel**2"
      description="Variance along x"
      verbLevel="30" />
    <column name="y2_image"
      tablehead="Y2_image"
      type="real"
      ucd="star.variance;pos.cartesian.y;src"
      unit="pixel**2"
      description="Variance along y"
      verbLevel="30" />
    <column name="xy_image"
      tablehead="XY_image"
      type="real"
      ucd="stat.covariance;pos.cartesian.x;pos.cartesian.y;src"
      unit="pixel**2"
      description="Covariance between x and y"
      verbLevel="30" />
    <column name="a_image"
      tablehead="A_image"
      type="real"
      ucd="stat.stdev;phys.angSize"
      unit="pixel"
      description="Profile RMS along major axis"
      verbLevel="30" />
    <column name="b_image"
      tablehead="B_image"
      type="real"
      ucd="stat.stdev;phys.angSize"
      unit="pixel"
      description="Profile RMS along minor axis"
      verbLevel="30" />
    <column name="theta_image"
      tablehead="Theta_image"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (CCW/x)"
      verbLevel="30" />
    <column name="a_world"
      tablehead="A_world"
      type="double precision"
      ucd="stat.stdev;phys.angSize"
      unit="deg"
      description="Profile RMS along major axis (world units)"
      verbLevel="30" />
    <column name="b_world"
      tablehead="B_world"
      type="double precision"
      ucd="stat.stdev;phys.angSize"
      unit="deg"
      description="Profile RMS along minor axis (world units)"
      verbLevel="30" />
    <column name="theta_world"
      tablehead="Theta_world"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (CCW/world-x)"
      verbLevel="30" />
    <column name="class_star"
      tablehead="Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="S/G classifier output"
      verbLevel="1" />
    <column name="flags"
      tablehead="Flags"
      type="integer"
      ucd="meta.code"
      description="Extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="mag_aut1"
      tablehead="Mag_Aut1"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="Kron-like elliptical 3.6µm Vega magnitude"
      verbLevel="1" />
    <column name="magerr_aut1"
      tablehead="MagErr_Aut1"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="RMS error for mag_aut1"
      verbLevel="1" />
    <column name="mag_ap1_4"
      tablehead="Mag_Ap1_4"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="4 arcsec diameter aperture 3.6µm Vega magnitude, corrected"
      verbLevel="1" />
    <column name="magerr_ap1_4"
      tablehead="MagErr_Ap1_4"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="4 arcsec diameter aperture 3.6µm Vega magnitude uncertainty"
      verbLevel="1" />
    <column name="mag_ap1_6"
      tablehead="Mag_Ap1_6"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="6 arcsec diameter aperture 3.6µm Vega magnitude, corrected"
      verbLevel="1" />
    <column name="magerr_ap1_6"
      tablehead="MagErr_Ap1_6"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="6 arcsec diameter aperture 3.6µm Vega magnitude uncertainty"
      verbLevel="1" />
    <column name="flux_aut1"
      tablehead="Flux_Aut_1"
      type="real"
      ucd="phot.flux;em.IR.3-4"
      unit="uJy"
      description="Kron-like elliptical aperture flux"
      verbLevel="1" />
    <column name="fluxerr_aut1"
      tablehead="FluxErr_Aut1"
      type="real"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="RMS error for flux_aut1"
      verbLevel="1" />
    <column name="flux_ap1_4"
      tablehead="Flux_Ap1_4"
      type="real"
      ucd="phot.flux;em.IR.3-4um"
      unit="uJy"
      description="4 arcsec diameter aperture 3.6µm flux, corrected"
      verbLevel="1" />
    <column name="fluxerr_ap1_4"
      tablehead="FluxErr_Ap1_4"
      type="real"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="4 arcsec diameter aperture 3.6µm flux uncertainty"
      verbLevel="1" />
    <column name="flux_ap1_6"
      tablehead="Flux_Ap1_6"
      type="real"
      ucd="phot.flux;em.IR.3-4um"
      unit="uJy"
      description="6 arcsec diameter aperture 3.6µm flux, corrected"
      verbLevel="1" />
    <column name="fluxerr_ap1_6"
      tablehead="FluxErr_Ap1_6"
      type="real"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="6 arcsec diameter aperture 3.6µm flux uncertainty"
      verbLevel="1" />
    <column name="mag_aut2"
      tablehead="Mag_Aut2"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="Kron-like elliptical 4.5µm Vega magnitude"
      verbLevel="1" />
    <column name="magerr_aut2"
      tablehead="MagErr_Aut2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="RMS error for mag_aut2"
      verbLevel="1" />
    <column name="mag_ap2_4"
      tablehead="Mag_Ap2_4"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4 arcsec diameter aperture 4.5µm Vega magnitude, corrected"
      verbLevel="1" />
    <column name="magerr_ap2_4"
      tablehead="MagErr_Ap2_4"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="4 arcsec diameter aperture 4.5µm Vega magnitude uncertainty"
      verbLevel="1" />
    <column name="mag_ap2_6"
      tablehead="Mag_Ap2_6"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="6 arcsec diameter aperture 4.5µm Vega magnitude, corrected"
      verbLevel="1" />
    <column name="magerr_ap2_6"
      tablehead="MagErr_Ap2_6"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="6 arcsec diameter aperture 4.5µm Vega magnitude uncertainty"
      verbLevel="1" />
    <column name="flux_aut2"
      tablehead="Flux_Aut_1"
      type="real"
      ucd="phot.flux;em.IR.4-8"
      unit="uJy"
      description="Kron-like elliptical aperture flux"
      verbLevel="1" />
    <column name="fluxerr_aut2"
      tablehead="FluxErr_Aut2"
      type="real"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="RMS error for flux_aut2"
      verbLevel="1" />
    <column name="flux_ap2_4"
      tablehead="Flux_Ap2_4"
      type="real"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="4 arcsec diameter aperture 4.5µm flux, corrected"
      verbLevel="1" />
    <column name="fluxerr_ap2_4"
      tablehead="FluxErr_Ap2_4"
      type="real"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="4 arcsec diameter aperture 4.5µm flux uncertainty"
      verbLevel="1" />
    <column name="flux_ap2_6"
      tablehead="Flux_Ap2_6"
      type="real"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="6 arcsec diameter aperture 4.5µm flux, corrected"
      verbLevel="1" />
    <column name="fluxerr_ap2_6"
      tablehead="FluxErr_Ap2_6"
      type="real"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="6 arcsec diameter aperture 4.5µm flux uncertainty"
      verbLevel="1" />
    <column name="cntr"
      tablehead="cntr"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Unique identifier"
      required="True"
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Extraction flags:

      === ==========================================
        1 Bright neighbour or bad pixel
        2 Blend
        4 Saturation
        8 Image boundary
       16 Aperture data are incomplete or corrupted
       32 Isophotal data are incomplete of corrupted
       64 Memory overflow during deblending
      128 Memory overflow during extraction
      === ==========================================

      ]]></meta>
  </table>
  <table id="i2" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="cntr">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="tile"
      tablehead="Tile"
      type="text"
      ucd="obs.field"
      description="SSDF sub-tile of origin"
      verbLevel="30" />
    <column name="x_image"
      tablehead="X_image"
      type="double precision"
      ucd="pos.cartesian.x;intr.det"
      unit="pixel"
      description="Object position along x"
      verbLevel="30" />
    <column name="y_image"
      tablehead="Y_Image"
      type="double precision"
      ucd="pos.cartesian.y;instr.det"
      unit="pixel"
      description="Object position along y"
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
    <column name="kron_radius"
      tablehead="Kron_radius"
      type="real"
      ucd="phys.angSize;src"
      unit="pixel"
      description="Kron apertures in units of A or B"
      verbLevel="1" />
    <column name="background"
      tablehead="Background"
      type="double precision"
      ucd="instr.background"
      unit="count"
      description="Background at centroid position"
      verbLevel="30" />
    <column name="flux_radius"
      tablehead="Flux_radius"
      type="real"
      ucd="phys.angSize;src"
      unit="pixel"
      description="Fraction-of-light radius"
      verbLevel="30" />
    <column name="alphapeak_j2000"
      tablehead="AlphaPeak_J2000"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension of brightest pixel (J2000)"
      verbLevel="30" />
    <column name="deltapeak_j2000"
      tablehead="DeltaPeak_J2000"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination of brightest pixel (J2000)"
      verbLevel="30" />
    <column name="x2_image"
      tablehead="X2_image"
      type="real"
      ucd="star.variance;pos.cartesian.x;src"
      unit="pixel**2"
      description="Variance along x"
      verbLevel="30" />
    <column name="y2_image"
      tablehead="Y2_image"
      type="real"
      ucd="star.variance;pos.cartesian.y;src"
      unit="pixel**2"
      description="Variance along y"
      verbLevel="30" />
    <column name="xy_image"
      tablehead="XY_image"
      type="real"
      ucd="stat.covariance;pos.cartesian.x;pos.cartesian.y;src"
      unit="pixel**2"
      description="Covariance between x and y"
      verbLevel="30" />
    <column name="a_image"
      tablehead="A_image"
      type="real"
      ucd="stat.stdev;phys.angSize"
      unit="pixel"
      description="Profile RMS along major axis"
      verbLevel="30" />
    <column name="b_image"
      tablehead="B_image"
      type="real"
      ucd="stat.stdev;phys.angSize"
      unit="pixel"
      description="Profile RMS along minor axis"
      verbLevel="30" />
    <column name="theta_image"
      tablehead="Theta_image"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (CCW/x)"
      verbLevel="30" />
    <column name="a_world"
      tablehead="A_world"
      type="double precision"
      ucd="stat.stdev;phys.angSize"
      unit="deg"
      description="Profile RMS along major axis (world units)"
      verbLevel="30" />
    <column name="b_world"
      tablehead="B_world"
      type="double precision"
      ucd="stat.stdev;phys.angSize"
      unit="deg"
      description="Profile RMS along minor axis (world units)"
      verbLevel="30" />
    <column name="theta_world"
      tablehead="Theta_world"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (CCW/world-x)"
      verbLevel="30" />
    <column name="class_star"
      tablehead="Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="S/G classifier output"
      verbLevel="1" />
    <column name="flags"
      tablehead="Flags"
      type="integer"
      ucd="meta.code"
      description="Extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="mag_aut1"
      tablehead="Mag_Aut1"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="Kron-like elliptical 3.6µm Vega magnitude"
      verbLevel="1" />
    <column name="magerr_aut1"
      tablehead="MagErr_Aut1"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="RMS error for mag_aut1"
      verbLevel="1" />
    <column name="mag_ap1_4"
      tablehead="Mag_Ap1_4"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="4 arcsec diameter aperture 3.6µm Vega magnitude, corrected"
      verbLevel="1" />
    <column name="magerr_ap1_4"
      tablehead="MagErr_Ap1_4"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="4 arcsec diameter aperture 3.6µm Vega magnitude uncertainty"
      verbLevel="1" />
    <column name="mag_ap1_6"
      tablehead="Mag_Ap1_6"
      type="real"
      ucd="phot.mag;em.IR.3-4um"
      unit="vega"
      description="6 arcsec diameter aperture 3.6µm Vega magnitude, corrected"
      verbLevel="1" />
    <column name="magerr_ap1_6"
      tablehead="MagErr_Ap1_6"
      type="real"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="vega"
      description="6 arcsec diameter aperture 3.6µm Vega magnitude uncertainty"
      verbLevel="1" />
    <column name="flux_aut1"
      tablehead="Flux_Aut_1"
      type="real"
      ucd="phot.flux;em.IR.3-4"
      unit="uJy"
      description="Kron-like elliptical aperture flux"
      verbLevel="1" />
    <column name="fluxerr_aut1"
      tablehead="FluxErr_Aut1"
      type="real"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="RMS error for flux_aut1"
      verbLevel="1" />
    <column name="flux_ap1_4"
      tablehead="Flux_Ap1_4"
      type="real"
      ucd="phot.flux;em.IR.3-4um"
      unit="uJy"
      description="4 arcsec diameter aperture 3.6µm flux, corrected"
      verbLevel="1" />
    <column name="fluxerr_ap1_4"
      tablehead="FluxErr_Ap1_4"
      type="real"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="4 arcsec diameter aperture 3.6µm flux uncertainty"
      verbLevel="1" />
    <column name="flux_ap1_6"
      tablehead="Flux_Ap1_6"
      type="real"
      ucd="phot.flux;em.IR.3-4um"
      unit="uJy"
      description="6 arcsec diameter aperture 3.6µm flux, corrected"
      verbLevel="1" />
    <column name="fluxerr_ap1_6"
      tablehead="FluxErr_Ap1_6"
      type="real"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="6 arcsec diameter aperture 3.6µm flux uncertainty"
      verbLevel="1" />
    <column name="mag_aut2"
      tablehead="Mag_Aut2"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="Kron-like elliptical 4.5µm Vega magnitude"
      verbLevel="1" />
    <column name="magerr_aut2"
      tablehead="MagErr_Aut2"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="RMS error for mag_aut2"
      verbLevel="1" />
    <column name="mag_ap2_4"
      tablehead="Mag_Ap2_4"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="4 arcsec diameter aperture 4.5µm Vega magnitude, corrected"
      verbLevel="1" />
    <column name="magerr_ap2_4"
      tablehead="MagErr_Ap2_4"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="4 arcsec diameter aperture 4.5µm Vega magnitude uncertainty"
      verbLevel="1" />
    <column name="mag_ap2_6"
      tablehead="Mag_Ap2_6"
      type="real"
      ucd="phot.mag;em.IR.4-8um"
      unit="vega"
      description="6 arcsec diameter aperture 4.5µm Vega magnitude, corrected"
      verbLevel="1" />
    <column name="magerr_ap2_6"
      tablehead="MagErr_Ap2_6"
      type="real"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="vega"
      description="6 arcsec diameter aperture 4.5µm Vega magnitude uncertainty"
      verbLevel="1" />
    <column name="flux_aut2"
      tablehead="Flux_Aut_1"
      type="real"
      ucd="phot.flux;em.IR.4-8"
      unit="uJy"
      description="Kron-like elliptical aperture flux"
      verbLevel="1" />
    <column name="fluxerr_aut2"
      tablehead="FluxErr_Aut2"
      type="real"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="RMS error for flux_aut2"
      verbLevel="1" />
    <column name="flux_ap2_4"
      tablehead="Flux_Ap2_4"
      type="real"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="4 arcsec diameter aperture 4.5µm flux, corrected"
      verbLevel="1" />
    <column name="fluxerr_ap2_4"
      tablehead="FluxErr_Ap2_4"
      type="real"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="4 arcsec diameter aperture 4.5µm flux uncertainty"
      verbLevel="1" />
    <column name="flux_ap2_6"
      tablehead="Flux_Ap2_6"
      type="real"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="6 arcsec diameter aperture 4.5µm flux, corrected"
      verbLevel="1" />
    <column name="fluxerr_ap2_6"
      tablehead="FluxErr_Ap2_6"
      type="real"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="6 arcsec diameter aperture 4.5µm flux uncertainty"
      verbLevel="1" />
    <column name="cntr"
      tablehead="cntr"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Unique identifier"
      required="True"
      verbLevel="1" />

    <meta name="note" tag="1"><![CDATA[
      Extraction flags:

      === ==========================================
        1 Bright neighbour or bad pixel
        2 Blend
        4 Saturation
        8 Image boundary
       16 Aperture data are incomplete or corrupted
       32 Isophotal data are incomplete of corrupted
       64 Memory overflow during deblending
      128 Memory overflow during extraction
      === ==========================================

      ]]></meta>
  </table>
  <data id="import_i1">
    <sources>data/ssdf1.csv</sources>
    <csvGrammar />
    <make table="i1">
      <rowmaker idmaps="*">
        <simplemaps>
          tile:tile,
          x_image:x_image,
          y_image:y_image,
          ra:ra,
          dec:dec,
          kron_radius:kron_radius,
          background:background,
          flux_radius:flux_radius,
          alphapeak_j2000:alphapeak_j2000,
          deltapeak_j2000:deltapeak_j2000,
          x2_image:x2_image,
          y2_image:y2_image,
          xy_image:xy_image,
          a_image:a_image,
          b_image:b_image,
          theta_image:theta_image,
          a_world:a_world,
          b_world:b_world,
          theta_world:theta_world,
          class_star:class_star,
          flags:flags,
          mag_aut1:mag_aut1,
          magerr_aut1:magerr_aut1,
          mag_ap1_4:mag_ap1_4,
          magerr_ap1_4:magerr_ap1_4,
          mag_ap1_6:mag_ap1_6,
          magerr_ap1_6:magerr_ap1_6,
          flux_aut1:flux_aut1,
          fluxerr_aut1:fluxerr_aut1,
          flux_ap1_4:flux_ap1_4,
          fluxerr_ap1_4:fluxerr_ap1_4,
          flux_ap1_6:flux_ap1_6,
          fluxerr_ap1_6:fluxerr_ap1_6,
          mag_aut2:mag_aut2,
          magerr_aut2:magerr_aut2,
          mag_ap2_4:mag_ap2_4,
          magerr_ap2_4:magerr_ap2_4,
          mag_ap2_6:mag_ap2_6,
          magerr_ap2_6:magerr_ap2_6,
          flux_aut2:flux_aut2,
          fluxerr_aut2:fluxerr_aut2,
          flux_ap2_4:flux_ap2_4,
          fluxerr_ap2_4:fluxerr_ap2_4,
          flux_ap2_6:flux_ap2_6,
          fluxerr_ap2_6:fluxerr_ap2_6,
          cntr:cntr
        </simplemaps>
      </rowmaker>
    </make>
  </data>
  <data id="import_i2">
    <sources>data/ssdf2.csv</sources>
    <csvGrammar />
    <make table="i2">
      <rowmaker idmaps="*">
        <simplemaps>
          tile:tile,
          x_image:x_image,
          y_image:y_image,
          ra:ra,
          dec:dec,
          kron_radius:kron_radius,
          background:background,
          flux_radius:flux_radius,
          alphapeak_j2000:alphapeak_j2000,
          deltapeak_j2000:deltapeak_j2000,
          x2_image:x2_image,
          y2_image:y2_image,
          xy_image:xy_image,
          a_image:a_image,
          b_image:b_image,
          theta_image:theta_image,
          a_world:a_world,
          b_world:b_world,
          theta_world:theta_world,
          class_star:class_star,
          flags:flags,
          mag_aut1:mag_aut1,
          magerr_aut1:magerr_aut1,
          mag_ap1_4:mag_ap1_4,
          magerr_ap1_4:magerr_ap1_4,
          mag_ap1_6:mag_ap1_6,
          magerr_ap1_6:magerr_ap1_6,
          flux_aut1:flux_aut1,
          fluxerr_aut1:fluxerr_aut1,
          flux_ap1_4:flux_ap1_4,
          fluxerr_ap1_4:fluxerr_ap1_4,
          flux_ap1_6:flux_ap1_6,
          fluxerr_ap1_6:fluxerr_ap1_6,
          mag_aut2:mag_aut2,
          magerr_aut2:magerr_aut2,
          mag_ap2_4:mag_ap2_4,
          magerr_ap2_4:magerr_ap2_4,
          mag_ap2_6:mag_ap2_6,
          magerr_ap2_6:magerr_ap2_6,
          flux_aut2:flux_aut2,
          fluxerr_aut2:fluxerr_aut2,
          flux_ap2_4:flux_ap2_4,
          fluxerr_ap2_4:fluxerr_ap2_4,
          flux_ap2_6:flux_ap2_6,
          fluxerr_ap2_6:fluxerr_ap2_6,
          cntr:cntr
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone_i1" allowed="scs.xml,form,static">
    <meta name="title">SSDF IRAC1</meta>
    <meta name="shortName">SSDF1</meta>
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
    <meta name="title">SSDF IRAC2</meta>
    <meta name="shortName">SSDF2</meta>
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

</resource>

<!--
vim:et:sta:sw=2
-->
