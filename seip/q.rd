<resource schema="seip">
  <meta name="title">Spitzer Enhanced Imaging Products</meta>
  <meta name="creationDate">2016-05-24T16:31:20+0200</meta>
  <meta name="description">
    Spitzer Enhanced Imaging Products Source List catalogue limited to HELP coverage.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[
    This resource contains the Spitzer Enhanced Imaging Products Source List catalogue downloaded
    from IRSA and limited to HELP coverage. Its full documentation is available at:
    http://irsa.ipac.caltech.edu/data/SPITZER/Enhanced/SEIP/overview.html

    The documentation states that it's the Cryogenic Release v3.0 (CR3) version but the table is
    named `slphotdr4`.

    A `field` column was added containing the name of the HELP field associated with each source to
    allow easy filtering. Here is the number of sources per field:

    ================== =========
    Field                 Counts
    ================== =========
    AKARI-NEP              20546
    AKARI-SEP              14051
    Bootes                726075
    CDFS-SWIRE            617231
    COSMOS                295305
    EGS                   110364
    ELAIS-N1              524121
    ELAIS-N2              262672
    ELAIS-S1              321989
    GAMA-09                 5594
    GAMA-12                11693
    GAMA-15                14538
    HDF-N                  40050
    Herschel-Stripe-82     82892
    Lockman-SWIRE         690309
    NGP                   168395
    SA13                    6518
    SGP                    56423
    SPIRE-NEP              12335
    SSDF                  466840
    XMM-13hr               26597
    XMM-LSS               621023
    xFLS                  211233
    ================== =========

    To identify uniquely a source (e.g. when crossmatching) use the `cntr` column.

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
    primary="cntr">
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
    <column name="objid"
      tablehead="objID"
      type="text"
      ucd="meta.id"
      unit=""
      description="Object identifier"
      verbLevel="1" />
    <column name="crowded"
      tablehead="Crowded flag"
      type="integer"
      ucd="meta.code"
      description="If non-zero, the area is crowded."
      verbLevel="30">
      <values nullLiteral="-9" />
    </column>
    <column name="badbkgmatch"
      tablehead="BadBkgMatch"
      type="integer"
      ucd="meta.code"
      description="Bad Background Match flag (no description found on IRSA)."
      verbLevel="30">
      <values nullLiteral="-9" />
    </column>
    <column name="ra"
      tablehead="RA"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000) of the shortest wavelength ten-sigma Spitzer detection."
      required="True"
      verbLevel="1" />
    <column name="dec"
      tablehead="Dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000) of the shortest wavelength ten-sigma Spitzer detection."
      required="True"
      verbLevel="1" />
    <column name="l"
      tablehead="l"
      type="double precision"
      ucd="pos.galactic.lon"
      unit="deg"
      description="Galactic Longitude"
      verbLevel="30" />
    <column name="b"
      tablehead="b"
      type="double precision"
      ucd="pos.galactic.lat"
      unit="deg"
      description="Galactic Latitude"
      verbLevel="30" />
    <column name="nmatches"
      tablehead="NMatches"
      type="integer"
      ucd="meta.number"
      description="Number of possible matches"
      verbLevel="30">
      <values nullLiteral="-99" />
    </column>
    <column name="nreject"
      tablehead="NReject"
      type="integer"
      ucd="meta.number"
      description="Number of possible matches rejected."
      verbLevel="30">
      <values nullLiteral="-99" />
    </column>
    <column name="nbands"
      tablehead="NBands"
      type="integer"
      ucd="meta.number"
      description="The number of Spitzer bands that have ten-sigma dectrions (ap1 for IRAC, PSF
      flux density for MIPS 24), plus 1 if there is a 2MASS association, plus 1 if there is a WISE
      association."
      verbLevel="30">
      <values nullLiteral="-9" />
    </column>
    <column name="i1_fluxtype"
      tablehead="I1_FluxType"
      type="integer"
      ucd="meta.code.class"
      description="IRAC ch1 flux type flag"
      note="2"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="i2_fluxtype"
      tablehead="I2_FluxType"
      type="integer"
      ucd="meta.code.class"
      description="IRAC ch2 flux type flag"
      note="2"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="i3_fluxtype"
      tablehead="I3_FluxType"
      type="integer"
      ucd="meta.code.class"
      description="IRAC ch3 flux type flag"
      note="2"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="i4_fluxtype"
      tablehead="I4_FluxType"
      type="integer"
      ucd="meta.code.class"
      description="IRAC ch4 flux type flag"
      note="2"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="m1_fluxtype"
      tablehead="M1_FluxType"
      type="integer"
      ucd="meta.code.class"
      description="MIPS ch1 flux type flag"
      note="2"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="i1_fluxflag"
      tablehead="I1_FluxFlag"
      type="integer"
      ucd="meta.code.class"
      description="IRAC ch1 flux flag"
      note="3"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="i2_fluxflag"
      tablehead="I2_FluxFlag"
      type="integer"
      ucd="meta.code.class"
      description="IRAC ch2 flux flag"
      note="3"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="i3_fluxflag"
      tablehead="I3_FluxFlag"
      type="integer"
      ucd="meta.code.class"
      description="IRAC ch3 flux flag"
      note="3"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="i4_fluxflag"
      tablehead="I4_FluxFlag"
      type="integer"
      ucd="meta.code.class"
      description="IRAC ch4 flux flag"
      note="3"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="m1_fluxflag"
      tablehead="M1_FluxFlag"
      type="integer"
      ucd="meta.code.class"
      description="MIPS ch1 flux flag"
      note="3"
      verbLevel="1">
      <values nullLiteral="-9" />
    </column>
    <column name="i1_softsatflag"
      tablehead="I1_SoftSatFlag"
      type="integer"
      ucd="meta.code"
      unit=""
      description="IRAC channel 1 soft saturation flag: this flag is non-zero if the source suffers
      from non-linear pixels."
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="i2_softsatflag"
      tablehead="I2_SoftSatFlag"
      type="integer"
      ucd="meta.code"
      unit=""
      description="IRAC channel 2 soft saturation flag: this flag is non-zero if the source suffers
      from non-linear pixels."
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="i3_softsatflag"
      tablehead="I3_SoftSatFlag"
      type="integer"
      ucd="meta.code"
      unit=""
      description="IRAC channel 3 soft saturation flag: this flag is non-zero if the source suffers
      from non-linear pixels."
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="i4_softsatflag"
      tablehead="I4_SoftSatFlag"
      type="integer"
      ucd="meta.code"
      unit=""
      description="IRAC channel 4 soft saturation flag: this flag is non-zero if the source suffers
      from non-linear pixels."
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="i1_f_ap1"
      tablehead="I1_F_Ap1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC ch1 flux density in 3.8 arcsec (diameter) aperture."
      note="4"
      verbLevel="1" />
    <column name="i1_df_ap1"
      tablehead="I1_dF_Ap1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on i1_df_ap1."
      verbLevel="1" />
    <column name="i1_f_ap2"
      tablehead="I1_F_Ap2"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC ch1 flux density in 5.8 arcsec (diameter) aperture."
      note="4"
      verbLevel="1" />
    <column name="i1_df_ap2"
      tablehead="I1_dF_Ap2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on i1_df_ap2."
      verbLevel="1" />
    <column name="i1_f_ap1_bf"
      tablehead="I1_F_Ap1_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC ch1 bandfill flux density in 3.8 arcsec (diameter) aperture"
      note="5"
      verbLevel="1" />
    <column name="i1_df_ap1_bf"
      tablehead="I1_dF_Ap1_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on i1_f_ap1_bf"
      verbLevel="1" />
    <column name="i1_f_ap2_bf"
      tablehead="I1_F_Ap2_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC ch1 bandfill flux density in 5.8 arcsec (diameter) aperture"
      note="5"
      verbLevel="1" />
    <column name="i1_df_ap2_bf"
      tablehead="I1_dF_Ap2_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on i1_f_ap2_bf"
      verbLevel="1" />
    <column name="i1_f_ap1_3siglim"
      tablehead="I1_f_Ap1_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC ch1 3 sigma flux density limit in 3.8 (diameter) aperture"
      note="6"
      verbLevel="1" />
    <column name="i1_f_ap2_3siglim"
      tablehead="I1_f_Ap2_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC ch1 3 sigma flux density limit in 5.8 (diameter) aperture"
      note="6"
      verbLevel="1" />
    <column name="i2_f_ap1"
      tablehead="I2_F_Ap1"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch2 flux density in 3.8 arcsec (diameter) aperture."
      note="4"
      verbLevel="1" />
    <column name="i2_df_ap1"
      tablehead="I2_dF_Ap1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i2_df_ap1."
      verbLevel="1" />
    <column name="i2_f_ap2"
      tablehead="I2_F_Ap2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch2 flux density in 5.8 arcsec (diameter) aperture."
      note="4"
      verbLevel="1" />
    <column name="i2_df_ap2"
      tablehead="I2_dF_Ap2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i2_df_ap2."
      verbLevel="1" />
    <column name="i2_f_ap1_bf"
      tablehead="I2_F_Ap1_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch2 bandfill flux density in 3.8 arcsec (diameter) aperture"
      note="5"
      verbLevel="1" />
    <column name="i2_df_ap1_bf"
      tablehead="I2_dF_Ap1_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i2_f_ap1_bf"
      verbLevel="1" />
    <column name="i2_f_ap2_bf"
      tablehead="I2_F_Ap2_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch2 bandfill flux density in 5.8 arcsec (diameter) aperture"
      note="5"
      verbLevel="1" />
    <column name="i2_df_ap2_bf"
      tablehead="I2_dF_Ap2_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i2_f_ap2_bf"
      verbLevel="1" />
    <column name="i2_f_ap1_3siglim"
      tablehead="I2_f_Ap1_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch2 3 sigma flux density limit in 3.8 (diameter) aperture"
      note="6"
      verbLevel="1" />
    <column name="i2_f_ap2_3siglim"
      tablehead="I2_f_Ap2_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch2 3 sigma flux density limit in 5.8 (diameter) aperture"
      note="6"
      verbLevel="1" />
    <column name="i3_f_ap1"
      tablehead="I3_F_Ap1"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch3 flux density in 3.8 arcsec (diameter) aperture."
      note="4"
      verbLevel="1" />
    <column name="i3_df_ap1"
      tablehead="I3_dF_Ap1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i3_df_ap1."
      verbLevel="1" />
    <column name="i3_f_ap2"
      tablehead="I3_F_Ap2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch3 flux density in 5.8 arcsec (diameter) aperture."
      note="4"
      verbLevel="1" />
    <column name="i3_df_ap2"
      tablehead="I3_dF_Ap2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i3_df_ap2."
      verbLevel="1" />
    <column name="i3_f_ap1_bf"
      tablehead="I3_F_Ap1_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch3 bandfill flux density in 3.8 arcsec (diameter) aperture"
      note="5"
      verbLevel="1" />
    <column name="i3_df_ap1_bf"
      tablehead="I3_dF_Ap1_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i3_f_ap1_bf"
      verbLevel="1" />
    <column name="i3_f_ap2_bf"
      tablehead="I3_F_Ap2_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch3 bandfill flux density in 5.8 arcsec (diameter) aperture"
      note="5"
      verbLevel="1" />
    <column name="i3_df_ap2_bf"
      tablehead="I3_dF_Ap2_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i3_f_ap2_bf"
      verbLevel="1" />
    <column name="i3_f_ap1_3siglim"
      tablehead="I3_f_Ap1_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch3 3 sigma flux density limit in 3.8 (diameter) aperture"
      note="6"
      verbLevel="1" />
    <column name="i3_f_ap2_3siglim"
      tablehead="I3_f_Ap2_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch3 3 sigma flux density limit in 5.8 (diameter) aperture"
      note="6"
      verbLevel="1" />
    <column name="i4_f_ap1"
      tablehead="I4_F_Ap1"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch4 flux density in 3.8 arcsec (diameter) aperture."
      note="4"
      verbLevel="1" />
    <column name="i4_df_ap1"
      tablehead="I4_dF_Ap1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i4_df_ap1."
      verbLevel="1" />
    <column name="i4_f_ap2"
      tablehead="I4_F_Ap2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch4 flux density in 5.8 arcsec (diameter) aperture."
      note="4"
      verbLevel="1" />
    <column name="i4_df_ap2"
      tablehead="I4_dF_Ap2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i4_df_ap2."
      verbLevel="1" />
    <column name="i4_f_ap1_bf"
      tablehead="I4_F_Ap1_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch4 bandfill flux density in 3.8 arcsec (diameter) aperture"
      note="5"
      verbLevel="1" />
    <column name="i4_df_ap1_bf"
      tablehead="I4_dF_Ap1_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i4_f_ap1_bf"
      verbLevel="1" />
    <column name="i4_f_ap2_bf"
      tablehead="I4_F_Ap2_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch4 bandfill flux density in 5.8 arcsec (diameter) aperture"
      note="5"
      verbLevel="1" />
    <column name="i4_df_ap2_bf"
      tablehead="I4_dF_Ap2_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on i4_f_ap2_bf"
      verbLevel="1" />
    <column name="i4_f_ap1_3siglim"
      tablehead="I4_f_Ap1_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch4 3 sigma flux density limit in 3.8 (diameter) aperture"
      note="6"
      verbLevel="1" />
    <column name="i4_f_ap2_3siglim"
      tablehead="I4_f_Ap2_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC ch4 3 sigma flux density limit in 5.8 (diameter) aperture"
      note="6"
      verbLevel="1" />
    <column name="m1_f_psf"
      tablehead="M1_F_PSF"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS channel 1 PSF-fit flux density"
      note="7"
      verbLevel="1" />
    <column name="m1_df_psf"
      tablehead="M1_dF_PSF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on m1_f_psf"
      note="7"
      verbLevel="1" />
    <column name="m1_f_ap"
      tablehead="M1_F_Ap"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS channel 1 flux density in 14.7 arcsec (diameter) aperture."
      note="8"
      verbLevel="1" />
    <column name="m1_df_ap"
      tablehead="M1_dF_Ap"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on m1_f_ap"
      verbLevel="1" />
    <column name="m1_f_psf_bf"
      tablehead="M1_F_PSF_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS channel 1 PSF bandfill flux density"
      note="9"
      verbLevel="1" />
    <column name="m1_df_psf_bf"
      tablehead="M1_dF_PSF_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on m1_f_psf_bf"
      note="9"
      verbLevel="1" />
    <column name="m1_f_ap_bf"
      tablehead="M1_f_Ap_BF"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS channel 1 bandfill flux density in 14.7 arcsec (diameter) aperture."
      note="10"
      verbLevel="1" />
    <column name="m1_df_ap_bf"
      tablehead="M1_dF_Ap_BF"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on m1_f_ap_bf"
      verbLevel="1" />
    <column name="m1_f_psf_3siglim"
      tablehead="M1_F_PSF_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS channel 1 PSF 3 sigma flux density limit."
      note="11"
      verbLevel="1" />
   <column name="m1_f_ap_3siglim"
      tablehead="M1_F_Ap_3siglim"
      type="double precision"
      ucd="stat.max;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="MIPS channel 1 3 sigma flux density limit in 14.7 arcsec (diameter) aperture."
      note="11"
      verbLevel="1" />
    <column name="i1_extfrac"
      tablehead="I1_ExtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="IRAC ch1 fraction of pixels in extended source region."
      note="12"
      verbLevel="30" />
    <column name="i2_extfrac"
      tablehead="I2_ExtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="IRAC ch2 fraction of pixels in extended source region."
      note="12"
      verbLevel="30" />
    <column name="i3_extfrac"
      tablehead="I3_ExtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="IRAC ch3 fraction of pixels in extended source region."
      note="12"
      verbLevel="30" />
    <column name="i4_extfrac"
      tablehead="I4_ExtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="IRAC ch4 fraction of pixels in extended source region."
      note="12"
      verbLevel="30" />
    <column name="m1_extfrac"
      tablehead="M1_ExtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="MIPS ch1 fraction of pixels in extended source region."
      note="12"
      verbLevel="30" />

    <column name="i1_brtfrac"
      tablehead="I1_BrtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="IRAC ch1 fraction of pixels in bright source region."
      note="12"
      verbLevel="30" />
    <column name="i2_brtfrac"
      tablehead="I2_BrtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="IRAC ch2 fraction of pixels in bright source region."
      note="12"
      verbLevel="30" />
    <column name="i3_brtfrac"
      tablehead="I3_BrtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="IRAC ch3 fraction of pixels in bright source region."
      note="12"
      verbLevel="30" />
    <column name="i4_brtfrac"
      tablehead="I4_BrtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="IRAC ch4 fraction of pixels in bright source region."
      note="12"
      verbLevel="30" />
    <column name="m1_brtfrac"
      tablehead="M1_BrtFrac"
      type="double precision"
      ucd="stat.value;arith.ratio"
      description="MIPS ch1 fraction of pixels in bright source region."
      note="12"
      verbLevel="30" />
    <column name="i1_snr"
      tablehead="I1_SNR"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.3-4um"
      description="Signal to noise ratio for i1_f_ap1."
      verbLevel="1" />
    <column name="i2_snr"
      tablehead="I2_SNR"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio for i2_f_ap1."
      verbLevel="1" />
    <column name="i3_snr"
      tablehead="I3_SNR"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio for i3_f_ap1."
      verbLevel="1" />
    <column name="i4_snr"
      tablehead="I4_SNR"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.4-8um"
      description="Signal to noise ratio for i4_f_ap1."
      verbLevel="1" />
    <column name="m1_snr"
      tablehead="M1_SNR"
      type="double precision"
      ucd="stat.snr;phot.flux.density;em.IR.15-30um"
      description="Signal to noise ratio for m1_f_psf."
      verbLevel="1" />
    <column name="i1_x"
      tablehead="I1_x"
      type="double precision"
      ucd="pos.cartesian.x"
      unit="pix"
      description="IRAC channel 1 x pixel position."
      verbLevel="30" />
    <column name="i1_y"
      tablehead="I1_y"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pix"
      description="IRAC channel 1 y pixel position."
      verbLevel="30" />
    <column name="i2_x"
      tablehead="I2_x"
      type="double precision"
      ucd="pos.cartesian.x"
      unit="pix"
      description="IRAC channel 2 x pixel position."
      verbLevel="30" />
    <column name="i2_y"
      tablehead="I2_y"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pix"
      description="IRAC channel 2 y pixel position."
      verbLevel="30" />
    <column name="i3_x"
      tablehead="I3_x"
      type="double precision"
      ucd="pos.cartesian.x"
      unit="pix"
      description="IRAC channel 3 x pixel position."
      verbLevel="30" />
    <column name="i3_y"
      tablehead="I3_y"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pix"
      description="IRAC channel 3 y pixel position."
      verbLevel="30" />
    <column name="i4_x"
      tablehead="I4_x"
      type="double precision"
      ucd="pos.cartesian.x"
      unit="pix"
      description="IRAC channel 4 x pixel position."
      verbLevel="30" />
    <column name="i4_y"
      tablehead="I4_y"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pix"
      description="IRAC channel 4 y pixel position."
      verbLevel="30" />
    <column name="m1_x"
      tablehead="M1_x"
      type="double precision"
      ucd="pos.cartesian.x"
      unit="pix"
      description="MIPS channel 1 x pixel position."
      verbLevel="30" />
    <column name="m1_y"
      tablehead="m1_y"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pix"
      description="MIPS channel 1 y pixel position."
      verbLevel="30" />
    <column name="i1_ra"
      tablehead="I1_RA"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the detection in IRAC channel 1."
      verbLevel="30" />
    <column name="i1_dec"
      tablehead="I1_Dec"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the detection in IRAC channel 1."
      verbLevel="30" />
    <column name="i2_ra"
      tablehead="I2_RA"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the detection in IRAC channel 2."
      verbLevel="30" />
    <column name="i2_dec"
      tablehead="I2_Dec"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the detection in IRAC channel 2."
      verbLevel="30" />
    <column name="i3_ra"
      tablehead="I3_RA"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the detection in IRAC channel 3."
      verbLevel="30" />
    <column name="i3_dec"
      tablehead="I3_Dec"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the detection in IRAC channel 3."
      verbLevel="30" />
    <column name="i4_ra"
      tablehead="I4_RA"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the detection in IRAC channel 4."
      verbLevel="30" />
    <column name="i4_dec"
      tablehead="I4_Dec"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the detection in IRAC channel 4."
      verbLevel="30" />
    <column name="m1_ra"
      tablehead="M1_RA"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the detection in MIPS channel 1."
      verbLevel="30" />
    <column name="m1_dec"
      tablehead="M1_Dec"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the detection in MIPS channel 1."
      verbLevel="30" />
    <column name="i1_peakflux"
      tablehead="I1_PeakFlux"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="IRAC channel 1 peak flux density."
      verbLevel="30" />
    <column name="i2_peakflux"
      tablehead="I2_PeakFlux"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC channel 2 peak flux density."
      verbLevel="30" />
    <column name="i3_peakflux"
      tablehead="I3_PeakFlux"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC channel 3 peak flux density."
      verbLevel="30" />
    <column name="i4_peakflux"
      tablehead="I4_PeakFlux"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="IRAC channel 4 peak flux density."
      verbLevel="30" />
    <column name="i1_peakdist"
      tablehead="I1_PeakDist"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="IRAC channel 1 distance from peak to centroid."
      verbLevel="30" />
    <column name="i2_peakdist"
      tablehead="I2_PeakDist"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="IRAC channel 2 distance from peak to centroid."
      verbLevel="30" />
    <column name="i3_peakdist"
      tablehead="I3_PeakDist"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="IRAC channel 3 distance from peak to centroid."
      verbLevel="30" />
    <column name="i4_peakdist"
      tablehead="I4_PeakDist"
      type="double precision"
      ucd="pos.angDistance"
      unit="arcsec"
      description="IRAC channel 4 distance from peak to centroid."
      verbLevel="30" />
    <column name="i1_fwhm"
      tablehead="I1_FWHM"
      type="double precision"
      ucd="phys.angSize;em.IR.3-4um"
      unit="arcsec"
      description="IRAC channel 1 full width at half maximum."
      verbLevel="30" />
    <column name="i2_fwhm"
      tablehead="I2_FWHM"
      type="double precision"
      ucd="phys.angSize;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 2 full width at half maximum."
      verbLevel="30" />
    <column name="i3_fwhm"
      tablehead="I3_FWHM"
      type="double precision"
      ucd="phys.angSize;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 3 full width at half maximum."
      verbLevel="30" />
    <column name="i4_fwhm"
      tablehead="I4_FWHM"
      type="double precision"
      ucd="phys.angSize;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 4 full width at half maximum."
      verbLevel="30" />
    <column name="m1_fwhm"
      tablehead="M1_FWHM"
      type="double precision"
      ucd="phys.angSize;em.IR.15-30um"
      unit="arcsec"
      description="MIPS channel 1 full width at half maximum."
      verbLevel="30" />
    <column name="i1_a"
      tablehead="I1_a"
      type="double precision"
      ucd="phys.angSize.smajAxis;em.IR.3-4um"
      unit="arcsec"
      description="IRAC channel 1 semi-major axis."
      verbLevel="30" />
    <column name="i1_b"
      tablehead="I1_b"
      type="double precision"
      ucd="phys.angSize.sminAxis;em.IR.3-4um"
      unit="arcsec"
      description="IRAC channel 1 semi-minor axis."
      verbLevel="30" />
    <column name="i2_a"
      tablehead="I2_a"
      type="double precision"
      ucd="phys.angSize.smajAxis;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 2 semi-major axis."
      verbLevel="30" />
    <column name="i2_b"
      tablehead="I2_b"
      type="double precision"
      ucd="phys.angSize.sminAxis;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 2 semi-minor axis."
      verbLevel="30" />
    <column name="i3_a"
      tablehead="I3_a"
      type="double precision"
      ucd="phys.angSize.smajAxis;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 3 semi-major axis."
      verbLevel="30" />
    <column name="i3_b"
      tablehead="I3_b"
      type="double precision"
      ucd="phys.angSize.sminAxis;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 3 semi-minor axis."
      verbLevel="30" />
    <column name="i4_a"
      tablehead="I4_a"
      type="double precision"
      ucd="phys.angSize.smajAxis;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 4 semi-major axis."
      verbLevel="30" />
    <column name="i4_b"
      tablehead="I4_b"
      type="double precision"
      ucd="phys.angSize.sminAxis;em.IR.4-8um"
      unit="arcsec"
      description="IRAC channel 4 semi-minor axis."
      verbLevel="30" />
    <column name="i1_seflags"
      tablehead="I1_SEFlags"
      type="integer"
      ucd="meta.code;em.IR.3-4um"
      description="IRAC channel 1 SExtractor flags"
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="i2_seflags"
      tablehead="I2_SEFlags"
      type="integer"
      ucd="meta.code;em.IR.4-8um"
      description="IRAC channel 2 SExtractor flags"
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="i3_seflags"
      tablehead="I3_SEFlags"
      type="integer"
      ucd="meta.code;em.IR.4-8um"
      description="IRAC channel 3 SExtractor flags"
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="i4_seflags"
      tablehead="I4_SEFlags"
      type="integer"
      ucd="meta.code;em.IR.4-8um"
      description="IRAC channel 4 SExtractor flags"
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="m1_dflag"
      tablehead="M1_DFlag"
      type="text"
      ucd="meta.code;em.IR.15-30um"
      description="MIPS channel 1 deblending flag"
      verbLevel="30" />
    <column name="m1_sflag"
      tablehead="M1_SFlag"
      type="integer"
      ucd="meta.code;em.IR.15-30um"
      description="MIPS channel 1 APEX status flag"
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="m1_bad_pix"
      tablehead="M1_bad_pix"
      type="double precision"
      ucd="meta.number;em.IR.15-30um"
      unit="pix"
      description="MIPS channel 1 number of bad pixels in the PSF-fit region."
      verbLevel="30" />
    <column name="i1_gain"
      tablehead="I1_Gain"
      type="double precision"
      ucd="meta.number:em.IR.3-4um"
      unit="e/count"
      description="IRAC channel 1 gain."
      verbLevel="30" />
    <column name="i2_gain"
      tablehead="I2_Gain"
      type="double precision"
      ucd="meta.number:em.IR.4-8um"
      unit="e/count"
      description="IRAC channel 2 gain."
      verbLevel="30" />
    <column name="i3_gain"
      tablehead="I3_Gain"
      type="double precision"
      ucd="meta.number:em.IR.4-8um"
      unit="e/count"
      description="IRAC channel 3 gain."
      verbLevel="30" />
    <column name="i4_gain"
      tablehead="I4_Gain"
      type="double precision"
      ucd="meta.number:em.IR.4-8um"
      unit="e/count"
      description="IRAC channel 4 gain."
      verbLevel="30" />
    <column name="m1_gain"
      tablehead="M1_Gain"
      type="double precision"
      ucd="meta.number:em.IR.15-30um"
      unit="e/count"
      description="MIPS channel 1 gain"
      verbLevel="30" />
    <column name="i1_meannoise"
      tablehead="I1_MeanNoise"
      type="double precision"
      ucd="instr.det.noise;stat.mean;em.IR.3-4um"
      unit="uJy"
      description="IRAC channel 1 mean 1-sigma noise at ra,dec"
      verbLevel="30" />
    <column name="i2_meannoise"
      tablehead="I2_MeanNoise"
      type="double precision"
      ucd="instr.det.noise;stat.mean;em.IR.4-8um"
      unit="uJy"
      description="IRAC channel 2 mean 1-sigma noise at ra,dec"
      verbLevel="30" />
    <column name="i3_meannoise"
      tablehead="I3_MeanNoise"
      type="double precision"
      ucd="instr.det.noise;stat.mean;em.IR.4-8um"
      unit="uJy"
      description="IRAC channel 3 mean 1-sigma noise at ra,dec"
      verbLevel="30" />
    <column name="i4_meannoise"
      tablehead="I4_MeanNoise"
      type="double precision"
      ucd="instr.det.noise;stat.mean;em.IR.4-8um"
      unit="uJy"
      description="IRAC channel 4 mean 1-sigma noise at ra,dec"
      verbLevel="30" />
    <column name="m1_meannoise"
      tablehead="M1_MeanNoise"
      type="double precision"
      ucd="instr.det.noise;stat.mean;em.IR.15-30um"
      unit="uJy"
      description="MIPS channel 1 noise at position."
      verbLevel="30" />
    <column name="i1_area"
      tablehead="I1_Area"
      type="double precision"
      ucd="phys.angArea;em.IR.3-4um"
      unit="deg**2"
      description="IRAC channel 1 area with mean noise in REGID."
      verbLevel="30" />
    <column name="i2_area"
      tablehead="I2_Area"
      type="double precision"
      ucd="phys.angArea;em.IR.4-8um"
      unit="deg**2"
      description="IRAC channel 2 area with mean noise in REGID."
      verbLevel="30" />
    <column name="i3_area"
      tablehead="I3_Area"
      type="double precision"
      ucd="phys.angArea;em.IR.4-8um"
      unit="deg**2"
      description="IRAC channel 3 area with mean noise in REGID."
      verbLevel="30" />
    <column name="i4_area"
      tablehead="I4_Area"
      type="double precision"
      ucd="phys.angArea;em.IR.4-8um"
      unit="deg**2"
      description="IRAC channel 4 area with mean noise in REGID."
      verbLevel="30" />
    <column name="m1_area"
      tablehead="M1_Area"
      type="double precision"
      ucd="phys.angArea;em.IR.15-30um"
      unit="deg**2"
      description="MIPS channel 1 area with mean noise in REGID."
      verbLevel="1" />
    <column name="smid"
      tablehead="SMID"
      type="bigint"
      ucd="meta.id"
      description="Super Mosaic ID."
      note="13"
      verbLevel="30">
        <values nullLiteral="-99" />
      </column>
    <column name="regid"
      tablehead="REGID"
      type="text"
      ucd="meta.id"
      description="Redion ID name."
      note="14"
      verbLevel="30" />
    <column name="irac_obstype"
      tablehead="IRAC_ObsType"
      type="integer"
      ucd="meta.code"
      description="IRAC observation type."
      note="15"
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="mips_obstype"
      tablehead="MIPS_ObsType"
      type="integer"
      ucd="meta.code"
      description="MIPS observation type."
      note="15"
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="i1_coverage"
      tablehead="I1_Coverage"
      type="double precision"
      ucd="meta.number;em.IR.3-4um"
      unit="image"
      description="IRAC channel 1 coverage."
      verbLevel="30" />
    <column name="i2_coverage"
      tablehead="I2_Coverage"
      type="double precision"
      ucd="meta.number;em.IR.4-8um"
      unit="image"
      description="IRAC channel 2 coverage."
      verbLevel="30" />
    <column name="i3_coverage"
      tablehead="I3_Coverage"
      type="double precision"
      ucd="meta.number;em.IR.4-8um"
      unit="image"
      description="IRAC channel 3 coverage."
      verbLevel="30" />
    <column name="i4_coverage"
      tablehead="I4_Coverage"
      type="double precision"
      ucd="meta.number;em.IR.4-8um"
      unit="image"
      description="IRAC channel 4 coverage."
      verbLevel="30" />
    <column name="m1_coverage"
      tablehead="M1_Coverage"
      type="double precision"
      ucd="meta.number;em.IR.15-30um"
      unit="image"
      description="MIPS channel 1 coverage."
      verbLevel="30" />
    <column name="twomass_key"
      tablehead="TWOMASS_key"
      type="bigint"
      ucd="meta.id"
      description="2MASS unique ID key."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="twomass_assoc"
      tablehead="TWOMASS_Assoc"
      type="integer"
      ucd="meta.code"
      description="2MASS association flag."
      note="16"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="twomass_ra"
      tablehead="TWOMASS_RA"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension (J2000) of the associated 2MASS point source if any."
      verbLevel="30" />
    <column name="twomass_dec"
      tablehead="TWOMASS_Dec"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination (J2000) of the associated 2MASS point source if any."
      verbLevel="30" />
    <column name="j"
      tablehead="J"
      type="double precision"
      ucd="phot.flux.density;em.IR.J"
      unit="uJy"
      description="J-band flux density of the associated 2MASS point source if any."
      verbLevel="30" />
    <column name="dj"
      tablehead="dJ"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.J"
      unit="uJy"
      description="Uncertainty in J"
      verbLevel="30" />
    <column name="h"
      tablehead="H"
      type="double precision"
      ucd="phot.flux.density;em.IR.H"
      unit="uJy"
      description="H-band flux density of the associated 2MASS point source if any."
      verbLevel="30" />
    <column name="dh"
      tablehead="dH"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.H"
      unit="uJy"
      description="Uncertainty in H"
      verbLevel="30" />
    <column name="k"
      tablehead="K"
      type="double precision"
      ucd="phot.flux.density;em.IR.K"
      unit="uJy"
      description="K-band flux density of the associated 2MASS point source if any."
      verbLevel="30" />
    <column name="dk"
      tablehead="dK"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.K"
      unit="uJy"
      description="Uncertainty in K"
      verbLevel="30" />
    <column name="wise_key"
      tablehead="WISE_Key"
      type="bigint"
      ucd="meta.id"
      description="Unique identification number from the WISE Catalogue."
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="wise_ra"
      tablehead="WISE_RA"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="WISE J2000 right ascension with respect to the 2MASS PSC reference frame."
      verbLevel="30" />
    <column name="wise_dec"
      tablehead="WISE_Dec"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="WISE J2000 declination with respect to the 2MASS PSC reference frame."
      verbLevel="30" />
    <column name="wise1"
      tablehead="WISE1"
      type="double precision"
      ucd="phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="WISE W1 flux density or 95% upper limit if the W1 flux measurement has SNR&lt;2."
      verbLevel="30" />
    <column name="dwise1"
      tablehead="dWISE1"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.3-4um"
      unit="uJy"
      description="WISE W1 photometric measurement uncertainty in flux density units."
      verbLevel="30" />
    <column name="wise2"
      tablehead="WISE2"
      type="double precision"
      ucd="phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="WISE W2 flux density or 95% upper limit if the W2 flux measurement has SNR&lt;2."
      verbLevel="30" />
    <column name="dwise2"
      tablehead="dWISE2"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.4-8um"
      unit="uJy"
      description="WISE W2 photometric measurement uncertainty in flux density units."
      verbLevel="30" />
    <column name="wise3"
      tablehead="WISE3"
      type="double precision"
      ucd="phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="WISE W3 flux density or 95% upper limit if the W3 flux measurement has SNR&lt;2."
      verbLevel="30" />
    <column name="dwise3"
      tablehead="dWISE3"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.8-15um"
      unit="uJy"
      description="WISE W3 photometric measurement uncertainty in flux density units."
      verbLevel="30" />
    <column name="wise4"
      tablehead="WISE4"
      type="double precision"
      ucd="phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="WISE W4 flux density or 95% upper limit if the W4 flux measurement has SNR&lt;2."
      verbLevel="30" />
    <column name="dwise4"
      tablehead="dWISE4"
      type="double precision"
      ucd="stat.error;phot.flux.density;em.IR.15-30um"
      unit="uJy"
      description="WISE W4 photometric measurement uncertainty in flux density units."
      verbLevel="30" />
    <column name="wise_cc_flags"
      tablehead="WISE_CC_Flags"
      type="text"
      ucd="meta.code"
      description="WISE contamination and confusion flag."
      note="17"
      verbLevel="30" />
    <column name="wise_ext_flg"
      tablehead="WISE_Ext_Flg"
      type="integer"
      ucd="meta.code"
      description="WISE extended source flag."
      note="18"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise_var_flg"
      tablehead="WISE_Var_Flg"
      type="text"
      ucd="meta.code;src.var"
      description="WISE variability flag."
      note="19"
      verbLevel="30" />
    <column name="wise_ph_qual"
      tablehead="WISE_Ph_Qual"
      type="text"
      ucd="meta.code.qual;phot"
      description="WISE photometric quality flag."
      note="20"
      verbLevel="30" />
    <column name="wise_det_bit"
      tablehead="WISE_Dec_Bit"
      type="integer"
      ucd="meta.code"
      description="WISE bit-encoded integer indicating bands in which a source has a detection."
      note="21"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise1rchi2"
      tablehead="WISE1rchi2"
      type="double precision"
      ucd="stat.fit.chi2;em.IR.3-4um"
      description="Reduced chi-square of the WISE W1 profile fit photometry measurement."
      verbLevel="30" />
    <column name="wise1m"
      tablehead="WISE1m"
      type="integer"
      ucd="meta.number"
      description="WISE W1 integer frame coverage."
      note="22"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise1nm"
      tablehead="WISE1nm"
      type="integer"
      ucd="meta.number"
      description="WISE W1 integer frame detection count."
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise2rchi2"
      tablehead="WISE2rchi2"
      type="double precision"
      ucd="stat.fit.chi2;em.IR.3-4um"
      description="Reduced chi-square of the WISE W2 profile fit photometry measurement."
      verbLevel="30" />
    <column name="wise2m"
      tablehead="WISE2m"
      type="integer"
      ucd="meta.number"
      description="WISE W2 integer frame coverage."
      note="22"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise2nm"
      tablehead="WISE2nm"
      type="integer"
      ucd="meta.number"
      description="WISE W2 integer frame detection count."
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise3rchi2"
      tablehead="WISE3rchi2"
      type="double precision"
      ucd="stat.fit.chi2;em.IR.3-4um"
      description="Reduced chi-square of the WISE W3 profile fit photometry measurement."
      verbLevel="30" />
    <column name="wise3m"
      tablehead="WISE3m"
      type="integer"
      ucd="meta.number"
      description="WISE W3 integer frame coverage."
      note="22"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise3nm"
      tablehead="WISE3nm"
      type="integer"
      ucd="meta.number"
      description="WISE W3 integer frame detection count."
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise4rchi2"
      tablehead="WISE4rchi2"
      type="double precision"
      ucd="stat.fit.chi2;em.IR.3-4um"
      description="Reduced chi-square of the WISE W4 profile fit photometry measurement."
      verbLevel="30" />
    <column name="wise4m"
      tablehead="WISE4m"
      type="integer"
      ucd="meta.number"
      description="WISE W4 integer frame coverage."
      note="22"
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="wise4nm"
      tablehead="WISE4nm"
      type="integer"
      ucd="meta.number"
      description="WISE W4 integer frame detection count."
      verbLevel="30">
        <values nullLiteral="-9" />
    </column>
    <column name="cntr"
      tablehead="CNTR"
      required="True"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Entry counter number (unique within the table). Use this to uniquely identify
      a row."
      verbLevel="1" />
    <meta name="note" tag="1"><![CDATA[
      Object identification number: sexagesimal, equatorial position-based source name in the
      form: hhmmss.ss±ddmmss.s. The full naming convention for the Spitzer Source List
      Preliminary Release sources has the form "SSTSLP Jhhmmss.ss±ddmmss.s" where "SSTSLP"
      indicates the source is from the Preliminary Release Source List, and "J" indicates the
      position is J2000.

      *Caution*: The objid should not be used as an astrometric reference. It is not a substitute
      for the source position information in the ra and dec columns.
      ]]> </meta>
    <meta name="note" tag="2"><![CDATA[
      Flux type flags:

      = =============== ============================================================================
      0 no data         There is no IRAC/MIPS imaging data available and no flux densities are
                        available in this channel.
      1 primary         A 10-sigma source was detected in this channel, and measured flux densities
                        are available in iN_f_ap1 and iN_f_ap2 for IRAC, and m1_f_ap and m1_f_psf
                        for MIPS.
      2 bandfill        There was not a ten-sigma source detected in this channel, but a >3 sigma
                        bandfill flux density was measured at the position and can be found in
                        iN_f_ap1_bf and iN_f_ap2_bf for IRAC, and m1_f_ap_bf and m1_f_psf_bf for
                        MIPS.
      3 limit           3-sigma upper limits are recorded in the columns iN_f_ap1_3siglim and
                        iN_f_ap2_3siglim for IRAC, and m1_f_ap_3siglim and m1_f_psf_3siglim for
                        MIPS.
      4 extended source The source is bright and detected in multiple bands, but fails to meet the
                        size criteria; this source is real, but its flux density cannot be measured
                        accurately, so it is not reported.
      = =============== ============================================================================

      ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      Flux flags:

      = ======== =================================================================================
      0 normal   The object lies in a normal region of the IRAC/MIPS Super Mosaic.
      1 extended The object lies in the vicinity of an extended source.
      2 bright   The object lies in the vicinity of a bright source and possibly also and extended
                 source.
      = ======== =================================================================================

      ]]></meta>
    <meta name="note" tag="4"><![CDATA[
      iN_f_ap1: IRAC channel N flux density measured within an aperture of diameter 3.8 arcsec and
      corrected to infinite radius. This column will have a non-null value only if the detection is
      at a significance greater than 10 sigma.

      iN_f_ap2: Idem but within an aperture of diameter 5.8 arcsec.
      ]]></meta>
    <meta name="note" tag="5"><![CDATA[
      iN_f_ap1_bf: IRAC channel N bandfill flux density measured at position ra,dec within an
      aperture of diameter 3.8 arcsec. This column will have a non-null value if the original
      detection was less significant than 10 sigma and the bandfill flux density is significant at
      a level greater than 3 sigma.

      iN_f_ap2_bf: Idem but within an aperture of diameter 5.8 arcsec.
      ]]></meta>
    <meta name="note" tag="6"><![CDATA[
      iN_f_ap1_3siglim: IRAC channel N three sigma upper limit on aperture flux measured within an
      aperture of 3.8 arcsec and corrected to total flux density. This column will have a non-null
      value only if there is no primary flux density and no bandfill flux density.

      iN_f_ap2_3siglim: Idem but within an aperture of diameter 5.8 arcsec.
      ]]></meta>
    <meta name="note" tag="7"><![CDATA[
      m1_f_psf: MIPS channel 1 (24 micron) PSF-fit flux density. This column will have a non-null
      value only if the detection is at a significance greater than 10 sigma.

      m1_d_psf: Uncertainty on m1_f_psf. Formal uncertainty in the least-squares PSF fitting. This
      typically underestimates the true uncertainty. Users interested in more accurate
      uncertainties should use m1_f_psf / m1_snr.
      ]]></meta>
    <meta name="note" tag="8"><![CDATA[
      MIPS channel 1 flux density measured with an aperture of diameter 14.7 arcsec. The flux
      densities have not had an aperture correction applied. For stellar point source, multiply by
      1.488. This column will be non-null only if the PSF flux density detection is greater than 10
      sigma.
      ]]></meta>
    <meta name="note" tag="9"><![CDATA[
      m1_f_psf_bf: MIPS channel 1 PSF-fit bandfill flux density. If a source is detected at >3
      sigma within a 6 arcsec diameter aperture, a PSF fit is attempted. However, if the best fit
      centroid changes by more than 2 pixels (5 arcsec), only aperture flux densities at the
      original position are reported. If a source is not detected at >3 sigma in a 6 arcsec
      diameter aperture, only upper limits are reported.

      m1_df_psf_bf: Uncertainty on m1_f_psf_bf. Formal uncertainty in the least-squares PSF
      fitting. This typically underestimates the true uncertainty. Users interested in more
      accurate uncertainties should use m1_f_psf / m1_snr.
      ]]></meta>
    <meta name="note" tag="10"><![CDATA[
      MIPS channel 1 bandfill flux density measured at the position ra, dec
      within an aperture of diameter 14.7 arcsec. The flux densities have not
      had an aperture correction applied. For stellar point sources, multiply
      by 1.488. This column will have a non-null value if the original
      detection wal less significant than 10 sigma and the bandfill flux
      density is significant at a level greater than 3 sigma.
      ]]></meta>
    <meta name="note" tag="11"><![CDATA[
      m1_f_psf_3siglim: MIPS channel 1 three-sigma upper limit on the PSF-fit flux density. This
      limit is calculated within a 6 arcsec diameter aperture.

      m1_f_ap_3siglim: MIPS channel 1 three-sigma upper limit on the 14.7 arcsec diameter aperture
      flux density. No aperture correction has been applied.
      ]]></meta>
    <meta name="note" tag="12"><![CDATA[
      \*_extfrac: The fraction of pixels associated with the source that fall within the extended
      source mask.

      \*_brtfrac: The fraction of pixels associated with the source that fall within the bright
      source mask.
      ]]></meta>
    <meta name="note" tag="13"><![CDATA[
      Super Mosaic ID number. AORs that are in the same Observation Class and are spatially
      contiguous are grouped into a Super Mosaic labeled with a single identification number: SMID.
      The first digit of the SMID indicates the Observation Class:

      = ================
      2 zodiacal light
      3 Galactic Plane
      4 galactic
      5 extended sources
      6 extragalactic.
      = ================

      If a Super Mosaic is divided into multiple Regions (see REGID) then its SMID will end in a 1.
      Otherwise, it will end in 0.
      ]]></meta>
    <meta name="note" tag="14"><![CDATA[
      Region ID name. If a Super Mosaic is larger than 0.25 square degrees, it is broken up into
      300x300 square arcminute Regions, with each Region overlapping its neighboring Regions by 2.5
      arcminute on all sides. The REGID begins with the SMID followed by a "-" followed by a Tile
      Number. For example, a REGID of 40002981-108 has an SMID of 40002981 and a Tile Number of
      108. Two sets of Regions per position are created for IRAC data taken in High Dynamic Range
      (HDR) mode. The short frames are assigned a REGID with a "-short" suffix. An example is
      40002981-108-short.
      ]]></meta>
    <meta name="note" tag="15"><![CDATA[
      Observation types:

      = ===============================
      2 Zodiacal Background Observation
      3 Galactic Plane Observation
      4 Galactic Object Observation
      5 Extended Object
      6 Extragalactic Observation
      = ===============================

      ]]></meta>
    <meta name="note" tag="16"><![CDATA[
      2MASS association flag. If this is set to 0, there is no 2MASS point source within a 1 arcsec
      radius. If there is a 2MASS association, this flag is set to 1.
      ]]></meta>
    <meta name="note" tag="17"><![CDATA[
      WISE contamination and confusion flag.

      One character per band (W1/W2/W3/W4) that indicates that the photometry and/or position
      measurements of a source may be contaminated or biased due to proximity to an image artifact:

      === ======================================================================
      D,d Diffraction spike. Source may be a spurious detection of or
          contaminated by a diffraction spike from a nearby bright star on the
          same image
      P,p Persistence. Source may be a spurious detection of or contaminated by
          a latent image left by a bright star
      H,h Halo. Source photometry may be a spurious detection of or contaminated
          by the scattered light halo surrounding a nearby bright source
      O,o (letter "o") Optical ghost. Source may be a spurious detection of or
          contaminated by an optical ghost image caused by a nearby bright
          source
      0   (number zero) Source is unaffected by known artifacts.
      === ======================================================================

      ]]> </meta>
    <meta name="note" tag="18"><![CDATA[
      WISE extended source flag:

      == =======================================================================
      0  The source shape is consistent with a point-source and the source is
         not associated with or superimposed on a 2MASS XSC source.
      1  The profile-fit photometry goodness-of-fit, w?rchi2, is >3.0 in one or
         more bands.
      2  The source falls within the extrapolated isophotal footprint of a 2MASS
         XSC source.
      3  The profile-fit photometry goodness-of-fit, w?rchi2, is >3.0 in one or
         more bands, and The source falls within the extrapolated isophotal
         footprint of a 2MASS XSC source.
      4  The source position falls within 5" of a 2MASS XSC source.
      5+ The profile-fit photometry goodness-of-fit, w?rchi2, is >3.0 in one or
         more bands, and the source position falls within 5" of a 2MASS XSC
         source.
      == =======================================================================

      ]]> </meta>
    <meta name="note" tag="19"><![CDATA[
        WISE variability flag:

        The variability flag is a 4-character string, one character per band, containing a value
        related to the probability that the source flux measured on the individual WISE exposures is
        variable.

        === ====================================================================
         n  indicates insufficient or inadequate data to make a determination
            (<6 exposures)
        0-9 indicate increasing probabilities of variation:
        0-5 are most likely not variable
        6-7 are likely variables (but susceptible of false-positive
            variability)
         >7 have the highest probability of being true variables
        === ====================================================================

      ]]> </meta>
    <meta name="note" tag="20"><![CDATA[
        WISE photometric quality flag:

        Four character flag, one character per band [W1/W2/W3/W4], that provides a shorthand summary
        of the quality of the profile-fit photometry measurement in each band, as derived from the
        measurement signal-to-noise ratio:

        = ======================================================================
        A Source is detected in this band with a flux signal-to-noise ratio
          w?snr>10.
        B Source is detected in this band with a flux signal-to-noise ratio
          3<w?snr<10.
        C Source is detected in this band with a flux signal-to-noise ratio
          2<w?snr<3.
        U Upper limit on magnitude. Source measurement has w?snr<2. The
          profile-fit magnitude w?mpro is a 95% confidence upper limit.
        X A profile-fit measurement was not possible at this location in this
          band. The value of w?mpro and w?sigmpro will be "null" in this band.
        Z A profile-fit source flux measurement was made at this location, but
          the flux uncertainty could not be measured. The value of w?sigmpro
          will be "null" in this band. The value of w?mpro will be "null" if the
          measured flux, w?flux, is negative, but will not be "null" if the flux
          is positive. If a non-null magnitude is present, it corresponds to the
          true flux, and not the 95% confidence upper limit. This occurs for
          a small number of sources found in a narrow range of ecliptic
          longitude which were covered by a large number of saturated pixels
          from 3-Band Cryo single-exposures.
        = ======================================================================

      ]]> </meta>
    <meta name="note" tag="21"><![CDATA[
        WISE detection bit:

        Bit-encoded integer indicating bands in which a source has a w?snr>2 detection. For example,
        a source detected in W1 only has det_bit=1 (binary 0001). A source detected in W4 only has
        det_bit=8 (binary 1000). A source detected in all four bands has det_bit=15 (binary 1111).
      ]]> </meta>
    <meta name="note" tag="22"><![CDATA[
        WISE integer frame coverage:

        Number of individual 7.7s W1 exposures on which a profile-fit measurement of this source was
        possible. This number can differ between the four bands because band-dependent criteria are
        used to select individual frames for inclusion in the coadded Atlas Images. This column is
        null if there is no frame coverage in this band at the position of this source.
      ]]> </meta>
    <meta name="note" tag="23"><![CDATA[
      WISE integer frame detection count.

      This column gives the number of individual 7.7s exposures on which this source was detected
      with SNR>3 in the W1 profile-fit measurement. This number can be zero for sources that are
      well-detected on the coadded Atlas Image, but too faint for detection on the single exposures.
      ]]> </meta>
  </table>
  <data id="import">
    <sources>data/slphotdr4_help.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
            objid:objid,
            crowded:crowded,
            badbkgmatch:badbkgmatch,
            ra:ra,
            dec:dec,
            l:l,
            b:b,
            nmatches:nmatches,
            nreject:nreject,
            nbands:nbands,
            i1_fluxtype:i1_fluxtype,
            i2_fluxtype:i2_fluxtype,
            i3_fluxtype:i3_fluxtype,
            i4_fluxtype:i4_fluxtype,
            m1_fluxtype:m1_fluxtype,
            i1_fluxflag:i1_fluxflag,
            i2_fluxflag:i2_fluxflag,
            i3_fluxflag:i3_fluxflag,
            i4_fluxflag:i4_fluxflag,
            m1_fluxflag:m1_fluxflag,
            i1_softsatflag:i1_softsatflag,
            i2_softsatflag:i2_softsatflag,
            i3_softsatflag:i3_softsatflag,
            i4_softsatflag:i4_softsatflag,
            i1_f_ap1:i1_f_ap1,
            i1_df_ap1:i1_df_ap1,
            i1_f_ap2:i1_f_ap2,
            i1_df_ap2:i1_df_ap2,
            i1_f_ap1_bf:i1_f_ap1_bf,
            i1_df_ap1_bf:i1_df_ap1_bf,
            i1_f_ap2_bf:i1_f_ap2_bf,
            i1_df_ap2_bf:i1_df_ap2_bf,
            i1_f_ap1_3siglim:i1_f_ap1_3siglim,
            i1_f_ap2_3siglim:i1_f_ap2_3siglim,
            i2_f_ap1:i2_f_ap1,
            i2_df_ap1:i2_df_ap1,
            i2_f_ap2:i2_f_ap2,
            i2_df_ap2:i2_df_ap2,
            i2_f_ap1_bf:i2_f_ap1_bf,
            i2_df_ap1_bf:i2_df_ap1_bf,
            i2_f_ap2_bf:i2_f_ap2_bf,
            i2_df_ap2_bf:i2_df_ap2_bf,
            i2_f_ap1_3siglim:i2_f_ap1_3siglim,
            i2_f_ap2_3siglim:i2_f_ap2_3siglim,
            i3_f_ap1:i3_f_ap1,
            i3_df_ap1:i3_df_ap1,
            i3_f_ap2:i3_f_ap2,
            i3_df_ap2:i3_df_ap2,
            i3_f_ap1_bf:i3_f_ap1_bf,
            i3_df_ap1_bf:i3_df_ap1_bf,
            i3_f_ap2_bf:i3_f_ap2_bf,
            i3_df_ap2_bf:i3_df_ap2_bf,
            i3_f_ap1_3siglim:i3_f_ap1_3siglim,
            i3_f_ap2_3siglim:i3_f_ap2_3siglim,
            i4_f_ap1:i4_f_ap1,
            i4_df_ap1:i4_df_ap1,
            i4_f_ap2:i4_f_ap2,
            i4_df_ap2:i4_df_ap2,
            i4_f_ap1_bf:i4_f_ap1_bf,
            i4_df_ap1_bf:i4_df_ap1_bf,
            i4_f_ap2_bf:i4_f_ap2_bf,
            i4_df_ap2_bf:i4_df_ap2_bf,
            i4_f_ap1_3siglim:i4_f_ap1_3siglim,
            i4_f_ap2_3siglim:i4_f_ap2_3siglim,
            m1_f_psf:m1_f_psf,
            m1_df_psf:m1_df_psf,
            m1_f_ap:m1_f_ap,
            m1_df_ap:m1_df_ap,
            m1_f_psf_bf:m1_f_psf_bf,
            m1_df_psf_bf:m1_df_psf_bf,
            m1_f_ap_bf:m1_f_ap_bf,
            m1_df_ap_bf:m1_df_ap_bf,
            m1_f_psf_3siglim:m1_f_psf_3siglim,
            m1_f_ap_3siglim:m1_f_ap_3siglim,
            i1_extfrac:i1_extfrac,
            i2_extfrac:i2_extfrac,
            i3_extfrac:i3_extfrac,
            i4_extfrac:i4_extfrac,
            m1_extfrac:m1_extfrac,
            i1_brtfrac:i1_brtfrac,
            i2_brtfrac:i2_brtfrac,
            i3_brtfrac:i3_brtfrac,
            i4_brtfrac:i4_brtfrac,
            m1_brtfrac:m1_brtfrac,
            i1_snr:i1_snr,
            i2_snr:i2_snr,
            i3_snr:i3_snr,
            i4_snr:i4_snr,
            m1_snr:m1_snr,
            i1_x:i1_x,
            i1_y:i1_y,
            i2_x:i2_x,
            i2_y:i2_y,
            i3_x:i3_x,
            i3_y:i3_y,
            i4_x:i4_x,
            i4_y:i4_y,
            m1_x:m1_x,
            m1_y:m1_y,
            i1_ra:i1_ra,
            i1_dec:i1_dec,
            i2_ra:i2_ra,
            i2_dec:i2_dec,
            i3_ra:i3_ra,
            i3_dec:i3_dec,
            i4_ra:i4_ra,
            i4_dec:i4_dec,
            m1_ra:m1_ra,
            m1_dec:m1_dec,
            i1_peakflux:i1_peakflux,
            i2_peakflux:i2_peakflux,
            i3_peakflux:i3_peakflux,
            i4_peakflux:i4_peakflux,
            i1_peakdist:i1_peakdist,
            i2_peakdist:i2_peakdist,
            i3_peakdist:i3_peakdist,
            i4_peakdist:i4_peakdist,
            i1_fwhm:i1_fwhm,
            i2_fwhm:i2_fwhm,
            i3_fwhm:i3_fwhm,
            i4_fwhm:i4_fwhm,
            m1_fwhm:m1_fwhm,
            i1_a:i1_a,
            i1_b:i1_b,
            i2_a:i2_a,
            i2_b:i2_b,
            i3_a:i3_a,
            i3_b:i3_b,
            i4_a:i4_a,
            i4_b:i4_b,
            i1_seflags:i1_seflags,
            i2_seflags:i2_seflags,
            i3_seflags:i3_seflags,
            i4_seflags:i4_seflags,
            m1_dflag:m1_dflag,
            m1_sflag:m1_sflag,
            i1_gain:i1_gain,
            i2_gain:i2_gain,
            i3_gain:i3_gain,
            i4_gain:i4_gain,
            m1_gain:m1_gain,
            i1_meannoise:i1_meannoise,
            i2_meannoise:i2_meannoise,
            i3_meannoise:i3_meannoise,
            i4_meannoise:i4_meannoise,
            m1_meannoise:m1_meannoise,
            i1_area:i1_area,
            i2_area:i2_area,
            i3_area:i3_area,
            i4_area:i4_area,
            m1_area:m1_area,
            smid:smid,
            regid:regid,
            irac_obstype:irac_obstype,
            mips_obstype:mips_obstype,
            i1_coverage:i1_coverage,
            i2_coverage:i2_coverage,
            i3_coverage:i3_coverage,
            i4_coverage:i4_coverage,
            m1_coverage:m1_coverage,
            twomass_key:twomass_key,
            twomass_assoc:twomass_assoc,
            twomass_ra:twomass_ra,
            twomass_dec:twomass_dec,
            j:j,
            dj:dj,
            h:h,
            dh:dh,
            k:k,
            dk:dk,
            wise_key:wise_key,
            wise_ra:wise_ra,
            wise_dec:wise_dec,
            wise1:wise1,
            dwise1:dwise1,
            wise2:wise2,
            dwise2:dwise2,
            wise3:wise3,
            dwise3:dwise3,
            wise4:wise4,
            dwise4:dwise4,
            wise_cc_flags:wise_cc_flags,
            wise_ext_flg:wise_ext_flg,
            wise_var_flg:wise_var_flg,
            wise_ph_qual:wise_ph_qual,
            wise_det_bit:wise_det_bit,
            wise1rchi2:wise1rchi2,
            wise1m:wise1m,
            wise1nm:wise1nm,
            wise2rchi2:wise2rchi2,
            wise2m:wise2m,
            wise2nm:wise2nm,
            wise3rchi2:wise3rchi2,
            wise3m:wise3m,
            wise3nm:wise3nm,
            wise4rchi2:wise4rchi2,
            wise4m:wise4m,
            wise4nm:wise4nm,
            cntr:cntr,
            field:Field
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">Spitzer Enhanced Imaging Products: Catalogue</meta>
    <meta name="shortName">SEIP</meta>
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
