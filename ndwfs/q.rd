<resource schema="ndwfs">
  <meta name="title">NDWFS</meta>
  <meta name="creationDate">2016-07-07T15:43:04+0200</meta>
  <meta name="description">
    NOAO Deep Wide-Field Survey optical and near-IR catalogue.
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the optical to near-infrared catalogue of the
    National Optical Astronomy Observatory (NOAO) Deep Wide-Field Survey
    (NDWFS).

    The full documentation as available at http://r2.sdm.noao.edu/ndwfs/

    The magnitudes are Vega magnitudes and are not aperture corrected.

    Note that a small part of the sources falls outside of HELP coverage.

    We added an `internal_id` column to uniquely identify each sources
    (`NDWFS_name` is not unique), please use this identifier when
    cross-matching.

    Survey identification
    ---------------------

    +-----------------+-----------------------------------------------+
    | Survey          | NOAO Deep Wide-Field Survey (NDWFS)           |
    +-----------------+-----------------------------------------------+
    | Telescope       | National Optical Astronomy Observatory (NOAO) |
    +-----------------+-----------------------------------------------+
    | Instrument      |                                               |
    +-----------------+-----------------------------------------------+
    | Filters         | R, I, Bw, Ks                                  |
    +-----------------+-----------------------------------------------+
    | Reference       | 1999AAS...195.1207J                           |
    +-----------------+-----------------------------------------------+
    | URL             | http://r2.sdm.noao.edu/ndwfs/                 |
    +-----------------+-----------------------------------------------+
    | Acknowledgement | This work made use of images and/or data      |
    |                 | products provided by the NOAO Deep Wide-Field |
    |                 | Survey (Jannuzi and Dey 1999; Jannuzi et al.  |
    |                 | 2005; Dey et al. 2005), which is supported by |
    |                 | the National Optical Astronomy Observatory    |
    |                 | (NOAO). NOAO is operated by AURA, Inc., under |
    |                 | a cooperative agreement with the National     |
    +-----------------+-----------------------------------------------+

    Filters
    -------

    - R: http://www.noao.edu/kpno/mosaic/filters/k1004.html
    - I: http://www.noao.edu/kpno/mosaic/filters/k1005.html
    - Bw: http://www.noao.edu/kpno/mosaic/filters/k1025.html
      (transmission here : http://www.noao.edu/noao/noaodeep/BWfilter.dat)
    - Ks: http://www.noao.edu/kpno/manuals/onis/ksfilt.txt

    History
    -------

    ======== ============================================
    20160708 First ingestion of the catalogue.
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /ndwfs/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="internal_id">
    <stc>
      Position ICRS Epoch J2000.0 "ra" "dec"
    </stc>

    <column name="internal_id"
      tablehead="Internal_ID"
      type="bigint"
      ucd="meta.id;meta.main"
      description="Internal unique identifier"
      required="True"
      verbLevel="1" />
    <column name="ndwfs_name"
      tablehead="NDWFS_Name"
      type="text"
      ucd="meta.id"
      description="NDWFS identifier"
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
    <column name="k_flux_iso"
      tablehead="K_Flux_ISO"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K isophotal flux"
      verbLevel="1" />
    <column name="k_fluxerr_iso"
      tablehead="K_FluxErr_ISO"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K isophotal flux"
      verbLevel="1" />
    <column name="k_mag_iso"
      tablehead="K_Mag_ISO"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K isophotal magnitude"
      verbLevel="1" />
    <column name="k_magerr_iso"
      tablehead="K_MagErr_ISO"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K isophotal magnitude"
      verbLevel="1" />
    <column name="k_mag_isocor"
      tablehead="K_Mag_ISOcor"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Corrected K isophotal magnitude"
      verbLevel="1" />
    <column name="k_magerr_isocor"
      tablehead="K_MagERR_ISOcor"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for correct K isophotal magnitude"
      verbLevel="1" />
    <column name="k_flux_aper_01"
      tablehead="K_Flux_Aper_01"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_01"
      tablehead="K_FluxErr_Aper_01"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 1 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_02"
      tablehead="K_Flux_Aper_02"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_02"
      tablehead="K_FluxErr_Aper_02"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 2 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_03"
      tablehead="K_Flux_Aper_03"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_03"
      tablehead="K_FluxErr_Aper_03"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 3 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_04"
      tablehead="K_Flux_Aper_04"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_04"
      tablehead="K_FluxErr_Aper_04"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 4 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_05"
      tablehead="K_Flux_Aper_05"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_05"
      tablehead="K_FluxErr_Aper_05"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 5 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_06"
      tablehead="K_Flux_Aper_06"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_06"
      tablehead="K_FluxErr_Aper_06"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 6 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_07"
      tablehead="K_Flux_Aper_07"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_07"
      tablehead="K_FluxErr_Aper_07"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 7 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_08"
      tablehead="K_Flux_Aper_08"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_08"
      tablehead="K_FluxErr_Aper_08"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 8 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_09"
      tablehead="K_Flux_Aper_09"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_09"
      tablehead="K_FluxErr_Aper_09"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 9 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_10"
      tablehead="K_Flux_Aper_10"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_10"
      tablehead="K_FluxErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 10 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_15"
      tablehead="K_Flux_Aper_15"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_15"
      tablehead="K_FluxErr_Aper_15"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 15 arcsec aperture"
      verbLevel="30" />
    <column name="k_flux_aper_20"
      tablehead="K_Flux_Aper_20"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="K flux vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="k_fluxerr_aper_20"
      tablehead="K_FluxErr_Aper_20"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for K flux within 20 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_01"
      tablehead="K_Mag_Aper_01"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_01"
      tablehead="K_MagErr_Aper_01"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 1 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_02"
      tablehead="K_Mag_Aper_02"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_02"
      tablehead="K_MagErr_Aper_02"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 2 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_03"
      tablehead="K_Mag_Aper_03"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_03"
      tablehead="K_MagErr_Aper_03"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 3 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_04"
      tablehead="K_Mag_Aper_04"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_04"
      tablehead="K_MagErr_Aper_04"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 4 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_05"
      tablehead="K_Mag_Aper_05"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_05"
      tablehead="K_MagErr_Aper_05"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 5 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_06"
      tablehead="K_Mag_Aper_06"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_06"
      tablehead="K_MagErr_Aper_06"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 6 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_07"
      tablehead="K_Mag_Aper_07"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_07"
      tablehead="K_MagErr_Aper_07"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 7 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_08"
      tablehead="K_Mag_Aper_08"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_08"
      tablehead="K_MagErr_Aper_08"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 8 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_09"
      tablehead="K_Mag_Aper_09"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_09"
      tablehead="K_MagErr_Aper_09"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 9 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_10"
      tablehead="K_Mag_Aper_10"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_10"
      tablehead="K_MagErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 10 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_15"
      tablehead="K_Mag_Aper_15"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_15"
      tablehead="K_MagErr_Aper_15"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 15 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_aper_20"
      tablehead="K_Mag_Aper_20"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K magnitude vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="k_magerr_aper_20"
      tablehead="K_MagErr_Aper_20"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for K magnitude within 20 arcsec aperture"
      verbLevel="30" />
    <column name="k_mag_auto"
      tablehead="K_Mag_Auto"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="K kron-like elliptical aperture magnitude"
      verbLevel="1" />
    <column name="k_magerr_auto"
      tablehead="K_MagErr_Auto"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error on K auto magnitude"
      verbLevel="1" />
    <column name="k_kron_radius"
      tablehead="K_Kron_radius"
      type="double precision"
      ucd="phys.angSize;em.IR.K"
      description="Kron aperture in units of A or B (Ks band)"
      verbLevel="1" />
    <column name="k_background"
      tablehead="K_Background"
      type="double precision"
      ucd="instr.background;em.IR.K"
      unit="count"
      description="Background at centroid position (Ks band)"
      verbLevel="30" />
    <column name="k_threshold"
      tablehead="K_Threshold"
      type="double precision"
      ucd="instr.sensitivity;em.IR.K"
      unit="count"
      description="Detection threshold above background (Ks band)"
      verbLevel="30" />
    <column name="k_flux_max"
      tablehead="K_Flux_Max"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="Peak K flux above background"
      verbLevel="30" />
    <column name="k_isoarea_image"
      tablehead="K_ISOArea_Image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area above analysis threshold (Ks band)"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="k_alpha_j2000"
      tablehead="K_alpha_J2000"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension of barycentre (J2000, Ks band)"
      verbLevel="30" />
    <column name="k_delta_j2000"
      tablehead="K_delta_J2000"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination of barycentre (J2000, Ks band)"
      verbLevel="30" />
    <column name="k_a_world"
      tablehead="K_A_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along major axis (Ks band)"
      verbLevel="30" />
    <column name="k_b_world"
      tablehead="K_B_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along minor axis (Ks band)"
      verbLevel="30" />
    <column name="k_theta_world"
      tablehead="K_theta_world"
      type="double precision"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (Ks band)"
      verbLevel="30" />
    <column name="k_elongation"
      tablehead="K_Elongation"
      type="double precision"
      ucd="phys.size.axisRatio"
      description="Elongation A_image/B_image (Ks band)"
      verbLevel="30" />
    <column name="k_ellipticity"
      tablehead="K_Ellipticity"
      type="double precision"
      ucd="src.ellipticity"
      description="Ellipticity 1 - B_image/A_image (Ks band)"
      verbLevel="30" />
    <column name="k_fwhm_image"
      tablehead="K_FWHM_image"
      type="double precision"
      ucd="phys.angSize"
      unit="pixel"
      description="FWHM assuming a Gaussian core (Ks band)"
      verbLevel="30" />
    <column name="k_flags"
      tablehead="K_Flags"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Ks band extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="k_imaflags_iso"
      tablehead="K_ImaFlags_ISO"
      type="integer"
      ucd="meta.code;em.IR.K"
      description="FLAG-image flags OR'ed over the isophotal profile (Ks band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="k_class_star"
      tablehead="K_Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="S/G classifier output (Ks band)"
      verbLevel="1" />
    <column name="k_ndwfs_field"
      tablehead="K_NDWFS_Field"
      type="text"
      ucd="obs.field;em.IR.K"
      description="NDWFS subfield name"
      verbLevel="30" />
    <column name="k_flag_duplicate"
      tablehead="K_Flag_Duplicate"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Duplicate flag (see note, Ks band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="k_flag_splitmatch"
      tablehead="K_Flag_Splitmatch"
      type="smallint"
      ucd="meta.code;em.IR.K"
      description="Splitmatch flag (see note, Ks band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="r_flux_iso"
      tablehead="R_Flux_ISO"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R isophotal flux"
      verbLevel="1" />
    <column name="r_fluxerr_iso"
      tablehead="R_FluxErr_ISO"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R isophotal flux"
      verbLevel="1" />
    <column name="r_mag_iso"
      tablehead="R_Mag_ISO"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R isophotal magnitude"
      verbLevel="1" />
    <column name="r_magerr_iso"
      tablehead="R_MagErr_ISO"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R isophotal magnitude"
      verbLevel="1" />
    <column name="r_mag_isocor"
      tablehead="R_Mag_ISOcor"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Corrected R isophotal magnitude"
      verbLevel="1" />
    <column name="r_magerr_isocor"
      tablehead="R_MagERR_ISOcor"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for correct R isophotal magnitude"
      verbLevel="1" />
    <column name="r_flux_aper_01"
      tablehead="R_Flux_Aper_01"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_01"
      tablehead="R_FluxErr_Aper_01"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 1 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_02"
      tablehead="R_Flux_Aper_02"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_02"
      tablehead="R_FluxErr_Aper_02"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 2 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_03"
      tablehead="R_Flux_Aper_03"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_03"
      tablehead="R_FluxErr_Aper_03"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 3 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_04"
      tablehead="R_Flux_Aper_04"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_04"
      tablehead="R_FluxErr_Aper_04"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 4 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_05"
      tablehead="R_Flux_Aper_05"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_05"
      tablehead="R_FluxErr_Aper_05"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 5 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_06"
      tablehead="R_Flux_Aper_06"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_06"
      tablehead="R_FluxErr_Aper_06"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 6 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_07"
      tablehead="R_Flux_Aper_07"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_07"
      tablehead="R_FluxErr_Aper_07"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 7 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_08"
      tablehead="R_Flux_Aper_08"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_08"
      tablehead="R_FluxErr_Aper_08"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 8 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_09"
      tablehead="R_Flux_Aper_09"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_09"
      tablehead="R_FluxErr_Aper_09"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 9 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_10"
      tablehead="R_Flux_Aper_10"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_10"
      tablehead="R_FluxErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 10 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_15"
      tablehead="R_Flux_Aper_15"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_15"
      tablehead="R_FluxErr_Aper_15"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 15 arcsec aperture"
      verbLevel="30" />
    <column name="r_flux_aper_20"
      tablehead="R_Flux_Aper_20"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="R flux vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="r_fluxerr_aper_20"
      tablehead="R_FluxErr_Aper_20"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.R"
      unit="count"
      description="RMS error for R flux within 20 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_01"
      tablehead="R_Mag_Aper_01"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_01"
      tablehead="R_MagErr_Aper_01"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 1 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_02"
      tablehead="R_Mag_Aper_02"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_02"
      tablehead="R_MagErr_Aper_02"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 2 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_03"
      tablehead="R_Mag_Aper_03"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_03"
      tablehead="R_MagErr_Aper_03"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 3 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_04"
      tablehead="R_Mag_Aper_04"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_04"
      tablehead="R_MagErr_Aper_04"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 4 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_05"
      tablehead="R_Mag_Aper_05"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_05"
      tablehead="R_MagErr_Aper_05"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 5 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_06"
      tablehead="R_Mag_Aper_06"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_06"
      tablehead="R_MagErr_Aper_06"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 6 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_07"
      tablehead="R_Mag_Aper_07"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_07"
      tablehead="R_MagErr_Aper_07"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 7 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_08"
      tablehead="R_Mag_Aper_08"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_08"
      tablehead="R_MagErr_Aper_08"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 8 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_09"
      tablehead="R_Mag_Aper_09"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_09"
      tablehead="R_MagErr_Aper_09"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 9 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_10"
      tablehead="R_Mag_Aper_10"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_10"
      tablehead="R_MagErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 10 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_15"
      tablehead="R_Mag_Aper_15"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_15"
      tablehead="R_MagErr_Aper_15"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 15 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_aper_20"
      tablehead="R_Mag_Aper_20"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R magnitude vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="r_magerr_aper_20"
      tablehead="R_MagErr_Aper_20"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error for R magnitude within 20 arcsec aperture"
      verbLevel="30" />
    <column name="r_mag_auto"
      tablehead="R_Mag_Auto"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="R kron-like elliptical aperture magnitude"
      verbLevel="1" />
    <column name="r_magerr_auto"
      tablehead="R_MagErr_Auto"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="RMS error on R auto magnitude"
      verbLevel="1" />
    <column name="r_kron_radius"
      tablehead="R_Kron_radius"
      type="double precision"
      ucd="phys.angSize;em.opt.R"
      description="Kron aperture in units of A or B (R band)"
      verbLevel="1" />
    <column name="r_background"
      tablehead="R_Background"
      type="double precision"
      ucd="instr.background;em.opt.R"
      unit="count"
      description="Background at centroid position (R band)"
      verbLevel="30" />
    <column name="r_threshold"
      tablehead="R_Threshold"
      type="double precision"
      ucd="instr.sensitivity;em.opt.R"
      unit="count"
      description="Detection threshold above background (R band)"
      verbLevel="30" />
    <column name="r_flux_max"
      tablehead="R_Flux_Max"
      type="double precision"
      ucd="phot.count;em.opt.R"
      unit="count"
      description="Peak R flux above background"
      verbLevel="30" />
    <column name="r_isoarea_image"
      tablehead="R_ISOArea_Image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area above analysis threshold (R band)"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="r_alpha_j2000"
      tablehead="R_alpha_J2000"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension of barycentre (J2000, R band)"
      verbLevel="30" />
    <column name="r_delta_j2000"
      tablehead="R_delta_J2000"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination of barycentre (J2000, R band)"
      verbLevel="30" />
    <column name="r_a_world"
      tablehead="R_A_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along major axis (R band)"
      verbLevel="30" />
    <column name="r_b_world"
      tablehead="R_B_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along minor axis (R band)"
      verbLevel="30" />
    <column name="r_theta_world"
      tablehead="R_theta_world"
      type="double precision"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (R band)"
      verbLevel="30" />
    <column name="r_elongation"
      tablehead="R_Elongation"
      type="double precision"
      ucd="phys.size.axisRatio"
      description="Elongation A_image/B_image (R band)"
      verbLevel="30" />
    <column name="r_ellipticity"
      tablehead="R_Ellipticity"
      type="double precision"
      ucd="src.ellipticity"
      description="Ellipticity 1 - B_image/A_image (R band)"
      verbLevel="30" />
    <column name="r_fwhm_image"
      tablehead="R_FWHM_image"
      type="double precision"
      ucd="phys.angSize"
      unit="pixel"
      description="FWHM assuming a Gaussian core (R band)"
      verbLevel="30" />
    <column name="r_flags"
      tablehead="R_Flags"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="R band extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="r_imaflags_iso"
      tablehead="R_ImaFlags_ISO"
      type="integer"
      ucd="meta.code;em.opt.R"
      description="FLAG-image flags OR'ed over the isophotal profile (R band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="r_class_star"
      tablehead="R_Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="S/G classifier output (R band)"
      verbLevel="1" />
    <column name="r_ndwfs_field"
      tablehead="R_NDWFS_Field"
      type="text"
      ucd="obs.field;em.opt.R"
      description="NDWFS subfield name"
      verbLevel="30" />
    <column name="r_flag_duplicate"
      tablehead="R_Flag_Duplicate"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Duplicate flag (see note, R band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="r_flag_splitmatch"
      tablehead="R_Flag_Splitmatch"
      type="smallint"
      ucd="meta.code;em.opt.R"
      description="Splitmatch flag (see note, R band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="i_flux_iso"
      tablehead="I_Flux_ISO"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I isophotal flux"
      verbLevel="1" />
    <column name="i_fluxerr_iso"
      tablehead="I_FluxErr_ISO"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I isophotal flux"
      verbLevel="1" />
    <column name="i_mag_iso"
      tablehead="I_Mag_ISO"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I isophotal magnitude"
      verbLevel="1" />
    <column name="i_magerr_iso"
      tablehead="I_MagErr_ISO"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I isophotal magnitude"
      verbLevel="1" />
    <column name="i_mag_isocor"
      tablehead="I_Mag_ISOcor"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Corrected I isophotal magnitude"
      verbLevel="1" />
    <column name="i_magerr_isocor"
      tablehead="I_MagERR_ISOcor"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for correct I isophotal magnitude"
      verbLevel="1" />
    <column name="i_flux_aper_01"
      tablehead="I_Flux_Aper_01"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_01"
      tablehead="I_FluxErr_Aper_01"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 1 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_02"
      tablehead="I_Flux_Aper_02"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_02"
      tablehead="I_FluxErr_Aper_02"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 2 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_03"
      tablehead="I_Flux_Aper_03"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_03"
      tablehead="I_FluxErr_Aper_03"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 3 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_04"
      tablehead="I_Flux_Aper_04"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_04"
      tablehead="I_FluxErr_Aper_04"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 4 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_05"
      tablehead="I_Flux_Aper_05"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_05"
      tablehead="I_FluxErr_Aper_05"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 5 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_06"
      tablehead="I_Flux_Aper_06"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_06"
      tablehead="I_FluxErr_Aper_06"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 6 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_07"
      tablehead="I_Flux_Aper_07"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_07"
      tablehead="I_FluxErr_Aper_07"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 7 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_08"
      tablehead="I_Flux_Aper_08"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_08"
      tablehead="I_FluxErr_Aper_08"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 8 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_09"
      tablehead="I_Flux_Aper_09"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_09"
      tablehead="I_FluxErr_Aper_09"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 9 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_10"
      tablehead="I_Flux_Aper_10"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_10"
      tablehead="I_FluxErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 10 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_15"
      tablehead="I_Flux_Aper_15"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_15"
      tablehead="I_FluxErr_Aper_15"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 15 arcsec aperture"
      verbLevel="30" />
    <column name="i_flux_aper_20"
      tablehead="I_Flux_Aper_20"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="I flux vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="i_fluxerr_aper_20"
      tablehead="I_FluxErr_Aper_20"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.I"
      unit="count"
      description="RMS error for I flux within 20 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_01"
      tablehead="I_Mag_Aper_01"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_01"
      tablehead="I_MagErr_Aper_01"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 1 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_02"
      tablehead="I_Mag_Aper_02"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_02"
      tablehead="I_MagErr_Aper_02"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 2 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_03"
      tablehead="I_Mag_Aper_03"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_03"
      tablehead="I_MagErr_Aper_03"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 3 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_04"
      tablehead="I_Mag_Aper_04"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_04"
      tablehead="I_MagErr_Aper_04"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 4 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_05"
      tablehead="I_Mag_Aper_05"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_05"
      tablehead="I_MagErr_Aper_05"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 5 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_06"
      tablehead="I_Mag_Aper_06"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_06"
      tablehead="I_MagErr_Aper_06"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 6 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_07"
      tablehead="I_Mag_Aper_07"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_07"
      tablehead="I_MagErr_Aper_07"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 7 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_08"
      tablehead="I_Mag_Aper_08"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_08"
      tablehead="I_MagErr_Aper_08"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 8 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_09"
      tablehead="I_Mag_Aper_09"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_09"
      tablehead="I_MagErr_Aper_09"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 9 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_10"
      tablehead="I_Mag_Aper_10"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_10"
      tablehead="I_MagErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 10 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_15"
      tablehead="I_Mag_Aper_15"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_15"
      tablehead="I_MagErr_Aper_15"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 15 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_aper_20"
      tablehead="I_Mag_Aper_20"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I magnitude vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="i_magerr_aper_20"
      tablehead="I_MagErr_Aper_20"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error for I magnitude within 20 arcsec aperture"
      verbLevel="30" />
    <column name="i_mag_auto"
      tablehead="I_Mag_Auto"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="I kron-like elliptical aperture magnitude"
      verbLevel="1" />
    <column name="i_magerr_auto"
      tablehead="I_MagErr_Auto"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="RMS error on I auto magnitude"
      verbLevel="1" />
    <column name="i_kron_radius"
      tablehead="I_Kron_radius"
      type="double precision"
      ucd="phys.angSize;em.opt.I"
      description="Kron aperture in units of A or B (I band)"
      verbLevel="1" />
    <column name="i_background"
      tablehead="I_Background"
      type="double precision"
      ucd="instr.background;em.opt.I"
      unit="count"
      description="Background at centroid position (I band)"
      verbLevel="30" />
    <column name="i_threshold"
      tablehead="I_Threshold"
      type="double precision"
      ucd="instr.sensitivity;em.opt.I"
      unit="count"
      description="Detection threshold above background (I band)"
      verbLevel="30" />
    <column name="i_flux_max"
      tablehead="I_Flux_Max"
      type="double precision"
      ucd="phot.count;em.opt.I"
      unit="count"
      description="Peak I flux above background"
      verbLevel="30" />
    <column name="i_isoarea_image"
      tablehead="I_ISOArea_Image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area above analysis threshold (I band)"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="i_alpha_j2000"
      tablehead="I_alpha_J2000"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension of barycentre (J2000, I band)"
      verbLevel="30" />
    <column name="i_delta_j2000"
      tablehead="I_delta_J2000"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination of barycentre (J2000, I band)"
      verbLevel="30" />
    <column name="i_a_world"
      tablehead="I_A_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along major axis (I band)"
      verbLevel="30" />
    <column name="i_b_world"
      tablehead="I_B_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along minor axis (I band)"
      verbLevel="30" />
    <column name="i_theta_world"
      tablehead="I_theta_world"
      type="double precision"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (I band)"
      verbLevel="30" />
    <column name="i_elongation"
      tablehead="I_Elongation"
      type="double precision"
      ucd="phys.size.axisRatio"
      description="Elongation A_image/B_image (I band)"
      verbLevel="30" />
    <column name="i_ellipticity"
      tablehead="I_Ellipticity"
      type="double precision"
      ucd="src.ellipticity"
      description="Ellipticity 1 - B_image/A_image (I band)"
      verbLevel="30" />
    <column name="i_fwhm_image"
      tablehead="I_FWHM_image"
      type="double precision"
      ucd="phys.angSize"
      unit="pixel"
      description="FWHM assuming a Gaussian core (I band)"
      verbLevel="30" />
    <column name="i_flags"
      tablehead="I_Flags"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="I band extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="i_imaflags_iso"
      tablehead="I_ImaFlags_ISO"
      type="integer"
      ucd="meta.code;em.opt.I"
      description="FLAG-image flags OR'ed over the isophotal profile (I band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="i_class_star"
      tablehead="I_Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="S/G classifier output (I band)"
      verbLevel="1" />
    <column name="i_ndwfs_field"
      tablehead="I_NDWFS_Field"
      type="text"
      ucd="obs.field;em.opt.I"
      description="NDWFS subfield name"
      verbLevel="30" />
    <column name="i_flag_duplicate"
      tablehead="I_Flag_Duplicate"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Duplicate flag (see note, I band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="i_flag_splitmatch"
      tablehead="I_Flag_Splitmatch"
      type="smallint"
      ucd="meta.code;em.opt.I"
      description="Splitmatch flag (see note, I band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>


    <column name="b_flux_iso"
      tablehead="B_Flux_ISO"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B isophotal flux"
      verbLevel="1" />
    <column name="b_fluxerr_iso"
      tablehead="B_FluxErr_ISO"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B isophotal flux"
      verbLevel="1" />
    <column name="b_mag_iso"
      tablehead="B_Mag_ISO"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B isophotal magnitude"
      verbLevel="1" />
    <column name="b_magerr_iso"
      tablehead="B_MagErr_ISO"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B isophotal magnitude"
      verbLevel="1" />
    <column name="b_mag_isocor"
      tablehead="B_Mag_ISOcor"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Corrected B isophotal magnitude"
      verbLevel="1" />
    <column name="b_magerr_isocor"
      tablehead="B_MagERR_ISOcor"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for correct B isophotal magnitude"
      verbLevel="1" />
    <column name="b_flux_aper_01"
      tablehead="B_Flux_Aper_01"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_01"
      tablehead="B_FluxErr_Aper_01"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 1 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_02"
      tablehead="B_Flux_Aper_02"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_02"
      tablehead="B_FluxErr_Aper_02"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 2 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_03"
      tablehead="B_Flux_Aper_03"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_03"
      tablehead="B_FluxErr_Aper_03"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 3 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_04"
      tablehead="B_Flux_Aper_04"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_04"
      tablehead="B_FluxErr_Aper_04"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 4 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_05"
      tablehead="B_Flux_Aper_05"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_05"
      tablehead="B_FluxErr_Aper_05"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 5 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_06"
      tablehead="B_Flux_Aper_06"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_06"
      tablehead="B_FluxErr_Aper_06"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 6 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_07"
      tablehead="B_Flux_Aper_07"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_07"
      tablehead="B_FluxErr_Aper_07"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 7 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_08"
      tablehead="B_Flux_Aper_08"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_08"
      tablehead="B_FluxErr_Aper_08"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 8 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_09"
      tablehead="B_Flux_Aper_09"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_09"
      tablehead="B_FluxErr_Aper_09"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 9 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_10"
      tablehead="B_Flux_Aper_10"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_10"
      tablehead="B_FluxErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 10 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_15"
      tablehead="B_Flux_Aper_15"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_15"
      tablehead="B_FluxErr_Aper_15"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 15 arcsec aperture"
      verbLevel="30" />
    <column name="b_flux_aper_20"
      tablehead="B_Flux_Aper_20"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="B flux vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="b_fluxerr_aper_20"
      tablehead="B_FluxErr_Aper_20"
      type="double precision"
      ucd="stat.error;phot.count;em.opt.B"
      unit="count"
      description="RMS error for B flux within 20 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_01"
      tablehead="B_Mag_Aper_01"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 1 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_01"
      tablehead="B_MagErr_Aper_01"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 1 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_02"
      tablehead="B_Mag_Aper_02"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 2 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_02"
      tablehead="B_MagErr_Aper_02"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 2 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_03"
      tablehead="B_Mag_Aper_03"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 3 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_03"
      tablehead="B_MagErr_Aper_03"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 3 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_04"
      tablehead="B_Mag_Aper_04"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 4 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_04"
      tablehead="B_MagErr_Aper_04"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 4 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_05"
      tablehead="B_Mag_Aper_05"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 5 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_05"
      tablehead="B_MagErr_Aper_05"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 5 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_06"
      tablehead="B_Mag_Aper_06"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 6 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_06"
      tablehead="B_MagErr_Aper_06"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 6 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_07"
      tablehead="B_Mag_Aper_07"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 7 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_07"
      tablehead="B_MagErr_Aper_07"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 7 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_08"
      tablehead="B_Mag_Aper_08"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 8 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_08"
      tablehead="B_MagErr_Aper_08"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 8 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_09"
      tablehead="B_Mag_Aper_09"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 9 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_09"
      tablehead="B_MagErr_Aper_09"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 9 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_10"
      tablehead="B_Mag_Aper_10"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 10 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_10"
      tablehead="B_MagErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 10 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_15"
      tablehead="B_Mag_Aper_15"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 15 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_15"
      tablehead="B_MagErr_Aper_15"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 15 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_aper_20"
      tablehead="B_Mag_Aper_20"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B magnitude vector within 20 arcsec aperture"
      verbLevel="30" />
    <column name="b_magerr_aper_20"
      tablehead="B_MagErr_Aper_20"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error for B magnitude within 20 arcsec aperture"
      verbLevel="30" />
    <column name="b_mag_auto"
      tablehead="B_Mag_Auto"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="B kron-like elliptical aperture magnitude"
      verbLevel="1" />
    <column name="b_magerr_auto"
      tablehead="B_MagErr_Auto"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="RMS error on B auto magnitude"
      verbLevel="1" />
    <column name="b_kron_radius"
      tablehead="B_Kron_radius"
      type="double precision"
      ucd="phys.angSize;em.opt.B"
      description="Kron aperture in units of A or B (Bw band)"
      verbLevel="1" />
    <column name="b_background"
      tablehead="B_Background"
      type="double precision"
      ucd="instr.background;em.opt.B"
      unit="count"
      description="Background at centroid position (Bw band)"
      verbLevel="30" />
    <column name="b_threshold"
      tablehead="B_Threshold"
      type="double precision"
      ucd="instr.sensitivity;em.opt.B"
      unit="count"
      description="Detection threshold above background (Bw band)"
      verbLevel="30" />
    <column name="b_flux_max"
      tablehead="B_Flux_Max"
      type="double precision"
      ucd="phot.count;em.opt.B"
      unit="count"
      description="Peak B flux above background"
      verbLevel="30" />
    <column name="b_isoarea_image"
      tablehead="B_ISOArea_Image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area above analysis threshold (Bw band)"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="b_alpha_j2000"
      tablehead="B_alpha_J2000"
      type="double precision"
      ucd="pos.eq.ra"
      unit="deg"
      description="Right Ascension of barycentre (J2000, Bw band)"
      verbLevel="30" />
    <column name="b_delta_j2000"
      tablehead="B_delta_J2000"
      type="double precision"
      ucd="pos.eq.dec"
      unit="deg"
      description="Declination of barycentre (J2000, Bw band)"
      verbLevel="30" />
    <column name="b_a_world"
      tablehead="B_A_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along major axis (Bw band)"
      verbLevel="30" />
    <column name="b_b_world"
      tablehead="B_B_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along minor axis (Bw band)"
      verbLevel="30" />
    <column name="b_theta_world"
      tablehead="B_theta_world"
      type="double precision"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle (Bw band)"
      verbLevel="30" />
    <column name="b_elongation"
      tablehead="B_Elongation"
      type="double precision"
      ucd="phys.size.axisRatio"
      description="Elongation A_image/B_image (Bw band)"
      verbLevel="30" />
    <column name="b_ellipticity"
      tablehead="B_Ellipticity"
      type="double precision"
      ucd="src.ellipticity"
      description="Ellipticity 1 - B_image/A_image (Bw band)"
      verbLevel="30" />
    <column name="b_fwhm_image"
      tablehead="B_FWHM_image"
      type="double precision"
      ucd="phys.angSize"
      unit="pixel"
      description="FWHM assuming a Gaussian core (Bw band)"
      verbLevel="30" />
    <column name="b_flags"
      tablehead="B_Flags"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Bw band extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="b_imaflags_iso"
      tablehead="B_ImaFlags_ISO"
      type="integer"
      ucd="meta.code;em.opt.B"
      description="FLAG-image flags OR'ed over the isophotal profile (Bw band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="b_class_star"
      tablehead="B_Class_Star"
      type="real"
      ucd="src.class.starGalaxy"
      description="S/G classifier output (Bw band)"
      verbLevel="1" />
    <column name="b_ndwfs_field"
      tablehead="B_NDWFS_Field"
      type="text"
      ucd="obs.field;em.opt.B"
      description="NDWFS subfield name"
      verbLevel="30" />
    <column name="b_flag_duplicate"
      tablehead="B_Flag_Duplicate"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Duplicate flag (see note, Bw band)"
      note="2"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="b_flag_splitmatch"
      tablehead="B_Flag_Splitmatch"
      type="smallint"
      ucd="meta.code;em.opt.B"
      description="Splitmatch flag (see note, Bw band)"
      note="2"
      verbLevel="1">
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
    <meta name="note" tag="2"><![CDATA[
      SExtractor's IMAFLAGS_ISO has been set to the minimum value of the NCOMBIM
      mask (optical) or the FLAGIM mask (K-band) within an object isophote.
      A value of zero indicates there is a region of the object isophote than
      contains no valid data. High values indicate every pixel within the object
      isophote contains good data from multiple individual frames.

      FLAG_DUPLICATE and FLAG_SPLITMATCH are NDWFS flags which appear in the
      merged catalogue only. As our pointings/images overlap each other, the
      same object can be detected in multiple subfields. FLAG_DUPLICATE=1
      indicates there is another catalogue entry for this object with better
      quality data. When the single-band catalogs are being merged, there can be
      ambiguous matches (e.g., two I-band detections matched to one Bw-band
      detection). While we use the closest object pairs when multiple matches
      are found, we flag all the objects with FLAG_SPLITMATCH=1 as errors may be
      associated with the object match and object photometry.
      ]]></meta>
  </table>
  <data id="import">
    <sources>data/ndwfs.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          k_flux_iso:kflux_iso,
          k_fluxerr_iso:kfluxerr_iso,
          k_mag_iso:kmag_iso,
          k_magerr_iso:kmagerr_iso,
          k_mag_isocor:kmag_isocor,
          k_magerr_isocor:kmagerr_isocor,
          k_flux_aper_01:kflux_aper_01,
          k_flux_aper_02:kflux_aper_02,
          k_flux_aper_03:kflux_aper_03,
          k_flux_aper_04:kflux_aper_04,
          k_flux_aper_05:kflux_aper_05,
          k_flux_aper_06:kflux_aper_06,
          k_flux_aper_07:kflux_aper_07,
          k_flux_aper_08:kflux_aper_08,
          k_flux_aper_09:kflux_aper_09,
          k_flux_aper_10:kflux_aper_10,
          k_flux_aper_15:kflux_aper_15,
          k_flux_aper_20:kflux_aper_20,
          k_fluxerr_aper_01:kfluxerr_aper_01,
          k_fluxerr_aper_02:kfluxerr_aper_02,
          k_fluxerr_aper_03:kfluxerr_aper_03,
          k_fluxerr_aper_04:kfluxerr_aper_04,
          k_fluxerr_aper_05:kfluxerr_aper_05,
          k_fluxerr_aper_06:kfluxerr_aper_06,
          k_fluxerr_aper_07:kfluxerr_aper_07,
          k_fluxerr_aper_08:kfluxerr_aper_08,
          k_fluxerr_aper_09:kfluxerr_aper_09,
          k_fluxerr_aper_10:kfluxerr_aper_10,
          k_fluxerr_aper_15:kfluxerr_aper_15,
          k_fluxerr_aper_20:kfluxerr_aper_20,
          k_mag_aper_01:kmag_aper_01,
          k_mag_aper_02:kmag_aper_02,
          k_mag_aper_03:kmag_aper_03,
          k_mag_aper_04:kmag_aper_04,
          k_mag_aper_05:kmag_aper_05,
          k_mag_aper_06:kmag_aper_06,
          k_mag_aper_07:kmag_aper_07,
          k_mag_aper_08:kmag_aper_08,
          k_mag_aper_09:kmag_aper_09,
          k_mag_aper_10:kmag_aper_10,
          k_mag_aper_15:kmag_aper_15,
          k_mag_aper_20:kmag_aper_20,
          k_magerr_aper_01:kmagerr_aper_01,
          k_magerr_aper_02:kmagerr_aper_02,
          k_magerr_aper_03:kmagerr_aper_03,
          k_magerr_aper_04:kmagerr_aper_04,
          k_magerr_aper_05:kmagerr_aper_05,
          k_magerr_aper_06:kmagerr_aper_06,
          k_magerr_aper_07:kmagerr_aper_07,
          k_magerr_aper_08:kmagerr_aper_08,
          k_magerr_aper_09:kmagerr_aper_09,
          k_magerr_aper_10:kmagerr_aper_10,
          k_magerr_aper_15:kmagerr_aper_15,
          k_magerr_aper_20:kmagerr_aper_20,
          k_mag_auto:kmag_auto,
          k_magerr_auto:kmagerr_auto,
          k_kron_radius:kkron_radius,
          k_background:kbackground,
          k_threshold:kthreshold,
          k_flux_max:kflux_max,
          k_isoarea_image:kisoarea_image,
          k_alpha_j2000:kalpha_j2000,
          k_delta_j2000:kdelta_j2000,
          k_a_world:ka_world,
          k_b_world:kb_world,
          k_theta_world:ktheta_world,
          k_elongation:kelongation,
          k_ellipticity:kellipticity,
          k_fwhm_image:kfwhm_image,
          k_flags:kflags,
          k_imaflags_iso:kmaflags_iso,
          k_class_star:kclass_star,
          ndwfs_name:ndwfs_name,
          k_ndwfs_field:kndwfs_field,
          k_flag_duplicate:kflag_duplicate,
          k_flag_splitmatch:kflag_splitmatch,
          r_flux_iso:rflux_iso,
          r_fluxerr_iso:rfluxerr_iso,
          r_mag_iso:rmag_iso,
          r_magerr_iso:rmagerr_iso,
          r_mag_isocor:rmag_isocor,
          r_magerr_isocor:rmagerr_isocor,
          r_flux_aper_01:rflux_aper_01,
          r_flux_aper_02:rflux_aper_02,
          r_flux_aper_03:rflux_aper_03,
          r_flux_aper_04:rflux_aper_04,
          r_flux_aper_05:rflux_aper_05,
          r_flux_aper_06:rflux_aper_06,
          r_flux_aper_07:rflux_aper_07,
          r_flux_aper_08:rflux_aper_08,
          r_flux_aper_09:rflux_aper_09,
          r_flux_aper_10:rflux_aper_10,
          r_flux_aper_15:rflux_aper_15,
          r_flux_aper_20:rflux_aper_20,
          r_fluxerr_aper_01:rfluxerr_aper_01,
          r_fluxerr_aper_02:rfluxerr_aper_02,
          r_fluxerr_aper_03:rfluxerr_aper_03,
          r_fluxerr_aper_04:rfluxerr_aper_04,
          r_fluxerr_aper_05:rfluxerr_aper_05,
          r_fluxerr_aper_06:rfluxerr_aper_06,
          r_fluxerr_aper_07:rfluxerr_aper_07,
          r_fluxerr_aper_08:rfluxerr_aper_08,
          r_fluxerr_aper_09:rfluxerr_aper_09,
          r_fluxerr_aper_10:rfluxerr_aper_10,
          r_fluxerr_aper_15:rfluxerr_aper_15,
          r_fluxerr_aper_20:rfluxerr_aper_20,
          r_mag_aper_01:rmag_aper_01,
          r_mag_aper_02:rmag_aper_02,
          r_mag_aper_03:rmag_aper_03,
          r_mag_aper_04:rmag_aper_04,
          r_mag_aper_05:rmag_aper_05,
          r_mag_aper_06:rmag_aper_06,
          r_mag_aper_07:rmag_aper_07,
          r_mag_aper_08:rmag_aper_08,
          r_mag_aper_09:rmag_aper_09,
          r_mag_aper_10:rmag_aper_10,
          r_mag_aper_15:rmag_aper_15,
          r_mag_aper_20:rmag_aper_20,
          r_magerr_aper_01:rmagerr_aper_01,
          r_magerr_aper_02:rmagerr_aper_02,
          r_magerr_aper_03:rmagerr_aper_03,
          r_magerr_aper_04:rmagerr_aper_04,
          r_magerr_aper_05:rmagerr_aper_05,
          r_magerr_aper_06:rmagerr_aper_06,
          r_magerr_aper_07:rmagerr_aper_07,
          r_magerr_aper_08:rmagerr_aper_08,
          r_magerr_aper_09:rmagerr_aper_09,
          r_magerr_aper_10:rmagerr_aper_10,
          r_magerr_aper_15:rmagerr_aper_15,
          r_magerr_aper_20:rmagerr_aper_20,
          r_mag_auto:rmag_auto,
          r_magerr_auto:rmagerr_auto,
          r_kron_radius:rkron_radius,
          r_background:rbackground,
          r_threshold:rthreshold,
          r_flux_max:rflux_max,
          r_isoarea_image:risoarea_image,
          r_alpha_j2000:ralpha_j2000,
          r_delta_j2000:rdelta_j2000,
          r_a_world:ra_world,
          r_b_world:rb_world,
          r_theta_world:rtheta_world,
          r_elongation:relongation,
          r_ellipticity:rellipticity,
          r_fwhm_image:rfwhm_image,
          r_flags:rflags,
          r_imaflags_iso:rimaflags_iso,
          r_class_star:rclass_star,
          r_ndwfs_field:rndwfs_field,
          r_flag_duplicate:rflag_duplicate,
          r_flag_splitmatch:rflag_splitmatch,
          i_flux_iso:iflux_iso,
          i_fluxerr_iso:ifluxerr_iso,
          i_mag_iso:imag_iso,
          i_magerr_iso:imagerr_iso,
          i_mag_isocor:imag_isocor,
          i_magerr_isocor:imagerr_isocor,
          i_flux_aper_01:iflux_aper_01,
          i_flux_aper_02:iflux_aper_02,
          i_flux_aper_03:iflux_aper_03,
          i_flux_aper_04:iflux_aper_04,
          i_flux_aper_05:iflux_aper_05,
          i_flux_aper_06:iflux_aper_06,
          i_flux_aper_07:iflux_aper_07,
          i_flux_aper_08:iflux_aper_08,
          i_flux_aper_09:iflux_aper_09,
          i_flux_aper_10:iflux_aper_10,
          i_flux_aper_15:iflux_aper_15,
          i_flux_aper_20:iflux_aper_20,
          i_fluxerr_aper_01:ifluxerr_aper_01,
          i_fluxerr_aper_02:ifluxerr_aper_02,
          i_fluxerr_aper_03:ifluxerr_aper_03,
          i_fluxerr_aper_04:ifluxerr_aper_04,
          i_fluxerr_aper_05:ifluxerr_aper_05,
          i_fluxerr_aper_06:ifluxerr_aper_06,
          i_fluxerr_aper_07:ifluxerr_aper_07,
          i_fluxerr_aper_08:ifluxerr_aper_08,
          i_fluxerr_aper_09:ifluxerr_aper_09,
          i_fluxerr_aper_10:ifluxerr_aper_10,
          i_fluxerr_aper_15:ifluxerr_aper_15,
          i_fluxerr_aper_20:ifluxerr_aper_20,
          i_mag_aper_01:imag_aper_01,
          i_mag_aper_02:imag_aper_02,
          i_mag_aper_03:imag_aper_03,
          i_mag_aper_04:imag_aper_04,
          i_mag_aper_05:imag_aper_05,
          i_mag_aper_06:imag_aper_06,
          i_mag_aper_07:imag_aper_07,
          i_mag_aper_08:imag_aper_08,
          i_mag_aper_09:imag_aper_09,
          i_mag_aper_10:imag_aper_10,
          i_mag_aper_15:imag_aper_15,
          i_mag_aper_20:imag_aper_20,
          i_magerr_aper_01:imagerr_aper_01,
          i_magerr_aper_02:imagerr_aper_02,
          i_magerr_aper_03:imagerr_aper_03,
          i_magerr_aper_04:imagerr_aper_04,
          i_magerr_aper_05:imagerr_aper_05,
          i_magerr_aper_06:imagerr_aper_06,
          i_magerr_aper_07:imagerr_aper_07,
          i_magerr_aper_08:imagerr_aper_08,
          i_magerr_aper_09:imagerr_aper_09,
          i_magerr_aper_10:imagerr_aper_10,
          i_magerr_aper_15:imagerr_aper_15,
          i_magerr_aper_20:imagerr_aper_20,
          i_mag_auto:imag_auto,
          i_magerr_auto:imagerr_auto,
          i_kron_radius:ikron_radius,
          i_background:ibackground,
          i_threshold:ithreshold,
          i_flux_max:iflux_max,
          i_isoarea_image:iisoarea_image,
          i_alpha_j2000:ialpha_j2000,
          i_delta_j2000:idelta_j2000,
          i_a_world:ia_world,
          i_b_world:ib_world,
          i_theta_world:itheta_world,
          i_elongation:ielongation,
          i_ellipticity:iellipticity,
          i_fwhm_image:ifwhm_image,
          i_flags:iflags,
          i_imaflags_iso:iimaflags_iso,
          i_class_star:iclass_star,
          i_ndwfs_field:indwfs_field,
          i_flag_duplicate:iflag_duplicate,
          i_flag_splitmatch:iflag_splitmatch,
          b_flux_iso:bflux_iso,
          b_fluxerr_iso:bfluxerr_iso,
          b_mag_iso:bmag_iso,
          b_magerr_iso:bmagerr_iso,
          b_mag_isocor:bmag_isocor,
          b_magerr_isocor:bmagerr_isocor,
          b_flux_aper_01:bflux_aper_01,
          b_flux_aper_02:bflux_aper_02,
          b_flux_aper_03:bflux_aper_03,
          b_flux_aper_04:bflux_aper_04,
          b_flux_aper_05:bflux_aper_05,
          b_flux_aper_06:bflux_aper_06,
          b_flux_aper_07:bflux_aper_07,
          b_flux_aper_08:bflux_aper_08,
          b_flux_aper_09:bflux_aper_09,
          b_flux_aper_10:bflux_aper_10,
          b_flux_aper_15:bflux_aper_15,
          b_flux_aper_20:bflux_aper_20,
          b_fluxerr_aper_01:bfluxerr_aper_01,
          b_fluxerr_aper_02:bfluxerr_aper_02,
          b_fluxerr_aper_03:bfluxerr_aper_03,
          b_fluxerr_aper_04:bfluxerr_aper_04,
          b_fluxerr_aper_05:bfluxerr_aper_05,
          b_fluxerr_aper_06:bfluxerr_aper_06,
          b_fluxerr_aper_07:bfluxerr_aper_07,
          b_fluxerr_aper_08:bfluxerr_aper_08,
          b_fluxerr_aper_09:bfluxerr_aper_09,
          b_fluxerr_aper_10:bfluxerr_aper_10,
          b_fluxerr_aper_15:bfluxerr_aper_15,
          b_fluxerr_aper_20:bfluxerr_aper_20,
          b_mag_aper_01:bmag_aper_01,
          b_mag_aper_02:bmag_aper_02,
          b_mag_aper_03:bmag_aper_03,
          b_mag_aper_04:bmag_aper_04,
          b_mag_aper_05:bmag_aper_05,
          b_mag_aper_06:bmag_aper_06,
          b_mag_aper_07:bmag_aper_07,
          b_mag_aper_08:bmag_aper_08,
          b_mag_aper_09:bmag_aper_09,
          b_mag_aper_10:bmag_aper_10,
          b_mag_aper_15:bmag_aper_15,
          b_mag_aper_20:bmag_aper_20,
          b_magerr_aper_01:bmagerr_aper_01,
          b_magerr_aper_02:bmagerr_aper_02,
          b_magerr_aper_03:bmagerr_aper_03,
          b_magerr_aper_04:bmagerr_aper_04,
          b_magerr_aper_05:bmagerr_aper_05,
          b_magerr_aper_06:bmagerr_aper_06,
          b_magerr_aper_07:bmagerr_aper_07,
          b_magerr_aper_08:bmagerr_aper_08,
          b_magerr_aper_09:bmagerr_aper_09,
          b_magerr_aper_10:bmagerr_aper_10,
          b_magerr_aper_15:bmagerr_aper_15,
          b_magerr_aper_20:bmagerr_aper_20,
          b_mag_auto:bmag_auto,
          b_magerr_auto:bmagerr_auto,
          b_kron_radius:bkron_radius,
          b_background:bbackground,
          b_threshold:bthreshold,
          b_flux_max:bflux_max,
          b_isoarea_image:bisoarea_image,
          b_alpha_j2000:balpha_j2000,
          b_delta_j2000:bdelta_j2000,
          b_a_world:ba_world,
          b_b_world:bb_world,
          b_theta_world:btheta_world,
          b_elongation:belongation,
          b_ellipticity:bellipticity,
          b_fwhm_image:bfwhm_image,
          b_flags:bflags,
          b_imaflags_iso:bimaflags_iso,
          b_class_star:bclass_star,
          b_ndwfs_field:bndwfs_field,
          b_flag_duplicate:bflag_duplicate,
          b_flag_splitmatch:bflag_splitmatch,
          ra:ra,
          dec:dec,
          internal_id:internal_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">NOAO Deep Wide-field Survey catalogue</meta>
    <meta name="shortName">NDWFS</meta>
    <meta name="testQuery">
      <meta name="ra">218.2</meta>
      <meta name="dec">34.173</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data/files</property>

    <dbCore queriedTable="main">
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
