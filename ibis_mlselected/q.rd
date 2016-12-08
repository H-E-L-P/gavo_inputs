<resource schema="ibis_mlselected">
  <meta name="title">Infrared Bootes Imaging Survey (masterlist selected)</meta>
  <meta name="creationDate">2016-08-01</meta>
  <meta name="description">The Infrared Bootes Imaging Survey (IBIS) is
  a near-infrared imaging survey covering the entire Spitzer Deep Wide-Field
  Survey (SDWFS) region, which corresponds to the Boötes field of the NOAO Deep
  Wide-Field Survey region. This is the masterlist selected catalogue.</meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Galaxies</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the catalogue for the Infrared Bootes Imaging Survey
    (IBIS). The full documentation is available on the `project website`__.

    __ http://r2.sdm.noao.edu/nsa/NEWFIRM_NDWFS.html

    The IBIS provide J, H, and Ks catalogues for J selected sources over 52
    overlapping subfields. The typical field reaches a 5σ depth of roughly J=22
    within a 3 arc-second diameter aperture.

    Magnitudes are Vega and not aperture corrected. To obtain true Vega
    magnitudes with m=0 for Vega in all bands requires subtraction of 0.056 mag
    in J and 0.007 mag in H (Ks is unchanged).

    This is the masterlist selected version of the catalogue. It has been
    cleaned from duplicates and limited to the HELP field. The `help_id` column
    makes the link with the HELP masterlist. Please use this identifier while
    crossmatching.

    Survey identification
    ---------------------

    +-----------------+-----------------------------------------------+
    | Survey          | Infrared Bootes Imaging Survey                |
    +-----------------+-----------------------------------------------+
    | Telescope       |                                               |
    +-----------------+-----------------------------------------------+
    | Instrument      |                                               |
    +-----------------+-----------------------------------------------+
    | Filters         | J, H, Ks                                      |
    +-----------------+-----------------------------------------------+
    | P.I.            | Anthony Gonzalez                              |
    +-----------------+-----------------------------------------------+
    | Reference       | Gonzalez et al. (in prep)                     |
    +-----------------+-----------------------------------------------+
    | URL             | http://r2.sdm.noao.edu/nsa/NEWFIRM_NDWFS.html |
    +-----------------+-----------------------------------------------+

    History
    -------

    ======== ==============================================
    20160801 Ingestion of the masterlist selected catalogue
    ======== ==============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /ibis_mlselected/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="help_id">
    <stc>
      Position ICRS Epoch J2000.0 "alpha_j2000" "delta_j2000"
    </stc>

   <column name="help_id"
      tablehead="HELP_Id"
      type="text"
      ucd="meta.id;meta.main"
      description="HELP identifier, based on J2000 position"
      required="True"
      verbLevel="1" />
    <column name="alpha_j2000"
      tablehead="Alpha_J2000"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Right Ascension (J2000)"
      required="True"
      verbLevel="1" />
    <column name="delta_j2000"
      tablehead="Delta_J2000"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Declination (J2000)"
      required="True"
      verbLevel="1" />
    <column name="j_x_image"
      tablehead="J_X_image"
      type="double precision"
      ucd="pos.catesian.x"
      unit="pixel"
      description="Object position along x (J band)"
      verbLevel="30" />
    <column name="j_y_image"
      tablehead="J_Y_image"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pixel"
      description="Object position along y (J band)"
      verbLevel="30" />
    <column name="j_xwin_image"
      tablehead="J_Xwin_image"
      type="double precision"
      ucd="pos.cartesian.x"
      unit="pixel"
      description="Windowed position estimate along x (J band)"
      verbLevel="30" />
    <column name="j_ywin_image"
      tablehead="J_Ywin_image"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pixel"
      description="Windowed position estimate along y (J band)"
      verbLevel="30" />
    <column name="j_flags"
      tablehead="J_Flags"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="J band extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="j_imaflags_iso"
      tablehead="J_ImaFlags_ISO"
      type="smallint"
      ucd="meta.code;em.IR.J"
      description="FLAG-image flags OR'ed over the isophotal profile (J band)"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="j_nimaflags_iso"
      tablehead="J_NImaFlags_ISO"
      type="smallint"
      ucd="meta.number"
      unit="pixel"
      description="Number of flagged pixels entering J_ImaFlags_ISO"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="j_fwhm_image"
      tablehead="J_FWHM_image"
      type="real"
      ucd="phys.angSize;em.IR.J"
      unit="pixel"
      description="FWHM assuming a gaussian core (J band)"
      verbLevel="30" />
    <column name="j_fwhm_world"
      tablehead="J_FWHM_world"
      type="double precision"
      ucd="phys.angSize;em.IR.J"
      unit="deg"
      description="FWHM assuming a gaussian core (J band)"
      verbLevel="30" />
    <column name="j_kron_radius"
      tablehead="J_Kron_radius"
      type="real"
      ucd="phys.angSize;em.IR.J"
      description="Kron aperture in units of A or B (J band)"
      verbLevel="1" />
    <column name="j_flux_radius_1"
      tablehead="J_Flux_radius_1"
      type="double precision"
      ucd="phys.angSize;src;em.IR.J"
      unit="pixel"
      description="Fraction-of-light (0.2) radius (J band)"
      verbLevel="30" />
    <column name="j_flux_radius_2"
      tablehead="J_Flux_radius_2"
      type="double precision"
      ucd="phys.angSize;src;em.IR.J"
      unit="pixel"
      description="Fraction-of-light (0.5) radius (J band)"
      verbLevel="30" />
    <column name="j_flux_radius_3"
      tablehead="J_Flux_radius_3"
      type="double precision"
      ucd="phys.angSize;src;em.IR.J"
      unit="pixel"
      description="Fraction-of-light (0.8) radius (J band)"
      verbLevel="30" />
    <column name="j_mag_iso"
      tablehead="J_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="j_mag_isocor"
      tablehead="J_Mag_ISOcor"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Corrected J band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="j_mag_auto"
      tablehead="J_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band Kron-like elliptical aperture Vega magnitude"
      verbLevel="1" />
    <column name="j_mag_petro"
      tablehead="J_Mag_Petro"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band Petrosian-like elliptical aperture Vega magnitude"
      verbLevel="1" />
    <column name="j_mag_best"
      tablehead="J_Mag_best"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band best of MAG_AUTO and MAG_ISOCOR"
      verbLevel="1" />
    <column name="j_magerr_iso"
      tablehead="J_MagErr_ISO"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="j_magerr_isocor"
      tablehead="J_MagErr_ISOcor"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band corrected isophotal Vega magnitude"
      verbLevel="1" />
    <column name="j_magerr_auto"
      tablehead="J_MagErr_Auto"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band auto Vega magnitude"
      verbLevel="1" />
    <column name="j_magerr_petro"
      tablehead="J_MagErr_Petro"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band Petrosian Vega magnitude"
      verbLevel="1" />
    <column name="j_magerr_best"
      tablehead="J_MagErr_best"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band best Vega magnitude"
      verbLevel="1" />
    <column name="j_mag_aper_1"
      tablehead="J_Mag_Aper_1"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band Vega magnitude within 1 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_2"
      tablehead="J_Mag_Aper_2"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band Vega magnitude within 1.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_3"
      tablehead="J_Mag_Aper_3"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band Vega magnitude within 2 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_4"
      tablehead="J_Mag_Aper_4"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 2.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_5"
      tablehead="J_Mag_Aper_5"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 3 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_6"
      tablehead="J_Mag_Aper_6"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 4 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_7"
      tablehead="J_Mag_Aper_7"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_8"
      tablehead="J_Mag_Aper_8"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 6 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_9"
      tablehead="J_Mag_Aper_9"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 7 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_10"
      tablehead="J_Mag_Aper_10"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 8 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_11"
      tablehead="J_Mag_Aper_11"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 9 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_12"
      tablehead="J_Mag_Aper_12"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 10 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_mag_aper_13"
      tablehead="J_Mag_Aper_13"
      type="real"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="J band magnitude within 20 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_1"
      tablehead="J_MagErr_Aper_1"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band Vega magnitude within 1 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_2"
      tablehead="J_MagErr_Aper_2"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band Vega magnitude within 1.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_3"
      tablehead="J_MagErr_Aper_3"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band Vega magnitude within 2 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_4"
      tablehead="J_MagErr_Aper_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 2.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_5"
      tablehead="J_MagErr_Aper_5"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 3 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_6"
      tablehead="J_MagErr_Aper_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 4 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_7"
      tablehead="J_MagErr_Aper_7"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_8"
      tablehead="J_MagErr_Aper_8"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 6 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_9"
      tablehead="J_MagErr_Aper_9"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 7 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_10"
      tablehead="J_MagErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 8 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_11"
      tablehead="J_MagErr_Aper_11"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 9 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_12"
      tablehead="J_MagErr_Aper_12"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 10 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_magerr_aper_13"
      tablehead="J_MagErr_Aper_13"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="RMS error for J band magnitude within 20 arc-second diameter aperture"
      verbLevel="1" />
    <column name="j_flux_auto"
      tablehead="J_Flux_Auto"
      type="double precision"
      ucd="phot.count;em.IR.J"
      unit="count"
      description="J band flux within a Kron-like elliptical aperture"
      verbLevel="30" />
    <column name="j_fluxerr_auto"
      tablehead="J_FluxErr_Auto"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.J"
      unit="count"
      description="RMS error for J band auto flux"
      verbLevel="30" />
    <column name="j_background"
      tablehead="J_Background"
      type="double precision"
      ucd="instr.background;em.IR.J"
      unit="count"
      description="J band background at centroid position"
      verbLevel="30" />
    <column name="j_threshold"
      tablehead="J_Threshold"
      type="double precision"
      ucd="instr.sensitivity;em.IR.J"
      unit="count"
      description="J band detection threshold above background"
      verbLevel="30" />
    <column name="j_flux_max"
      tablehead="J_Flux_max"
      type="double precision"
      ucd="phot.count;em.IR.J"
      unit="count"
      description="J band peak flux above background"
      verbLevel="30" />
    <column name="j_isoarea_image"
      tablehead="J_ISOarea_image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area above analysis threshold (J band)"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="j_x2_image"
      tablehead="J_X2_image"
      type="double precision"
      ucd="stat.variance;pos.cartesian.x;src"
      unit="pixel**2"
      description="Variance along x (J band)"
      verbLevel="30" />
    <column name="j_y2_image"
      tablehead="J_Y2_image"
      type="double precision"
      ucd="stat.variance;pos.cartesian.y;src"
      unit="pixel**2"
      description="Variance along y (J band)"
      verbLevel="30" />
    <column name="j_xy_image"
      tablehead="J_XY_image"
      type="double precision"
      ucd="stat.covariance;pos.cartesian.x;pos.cartesian.y;src"
      unit="pixel**2"
      description="Covariance between x and y (J band)"
      verbLevel="30" />
    <column name="j_x2_world"
      tablehead="J_X2_world"
      type="double precision"
      ucd="stat.variance;pos.eq.ra;src"
      unit="deg**2"
      description="Variance along alpha_j2000 (J band)"
      verbLevel="30" />
    <column name="j_y2_world"
      tablehead="J_y2_world"
      type="double precision"
      ucd="stat.variance;pos.eq.dec;src"
      unit="deg**2"
      description="Variance along delta_j2000 (J band)"
      verbLevel="30" />
    <column name="j_xy_world"
      tablehead="J_XY_world"
      type="double precision"
      ucd="stat.covariance;pos.eq.ra;pos.eq.dec;src"
      unit="deg**2"
      description="Covariance between alpha_j2000 and delta_j2000 (J band)"
      verbLevel="30" />
    <column name="j_cxx_image"
      tablehead="J_CXX_image"
      type="double precision"
      ucd="meta.number"
      unit="pixel**-2"
      description="Cxx object ellipse parameter (J band)"
      verbLevel="30" />
    <column name="j_cyy_image"
      tablehead="J_CYY_image"
      type="double precision"
      ucd="meta.number"
      unit="pixel**-2"
      description="Cyy object ellipse parameter (J band)"
      verbLevel="30" />
    <column name="j_cxy_image"
      tablehead="J_CXY_image"
      type="double precision"
      ucd="meta.number"
      unit="pixel**-2"
      description="Cxy object ellipse parameter (J band)"
      verbLevel="30" />
    <column name="j_cxx_world"
      tablehead="J_CXX_world"
      type="double precision"
      ucd="meta.number"
      unit="deg**-2"
      description="Cxx object ellipse parameter, world units (J band)"
      verbLevel="30" />
    <column name="j_cyy_world"
      tablehead="J_CYY_world"
      type="double precision"
      ucd="meta.number"
      unit="deg**-2"
      description="Cyy object ellipse parameter, world units (J band)"
      verbLevel="30" />
    <column name="j_cxy_world"
      tablehead="J_CXY_world"
      type="double precision"
      ucd="meta.number"
      unit="deg**-2"
      description="Cxy object ellipse parameter, world units (J band)"
      verbLevel="30" />
    <column name="j_errcxx_image"
      tablehead="J_ErrCXX_image"
      type="double precision"
      ucd="stat.error"
      unit="pixel**-2"
      description="Cxx error ellipse parameter (J band)"
      verbLevel="30" />
    <column name="j_errcyy_image"
      tablehead="J_ErrCYY_image"
      type="double precision"
      ucd="stat.error"
      unit="pixel**-2"
      description="Cyy error ellipse parameter (J band)"
      verbLevel="30" />
    <column name="j_errcxy_image"
      tablehead="J_ErrCXY_image"
      type="double precision"
      ucd="stat.error"
      unit="pixel**-2"
      description="Cxy error ellipse parameter (J band)"
      verbLevel="30" />
    <column name="j_errcxx_world"
      tablehead="J_ErrCXX_world"
      type="double precision"
      ucd="stat.error"
      unit="deg**-2"
      description="Cxx error ellipse parameter, world units (J band)"
      verbLevel="30" />
    <column name="j_errcyy_world"
      tablehead="J_ErrCYY_world"
      type="double precision"
      ucd="stat.error"
      unit="deg**-2"
      description="Cyy error ellipse parameter, world units (J band)"
      verbLevel="30" />
    <column name="j_errcxy_world"
      tablehead="J_ErrCXY_world"
      type="double precision"
      ucd="stat.error"
      unit="deg**-2"
      description="Cxy error ellipse parameter, world units (J band)"
      verbLevel="30" />
    <column name="j_a_world"
      tablehead="J_A_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along major axis (J band)"
      verbLevel="30" />
    <column name="j_b_world"
      tablehead="J_B_world"
      type="double precision"
      ucd="stat.stdev"
      unit="deg"
      description="Profile RMS along minor axis (J band)"
      verbLevel="30" />
    <column name="j_erra_world"
      tablehead="J_ErrA_world"
      type="double precision"
      ucd="stat.error"
      unit="deg"
      description="World RMS position error along major axis (J band)"
      verbLevel="30" />
    <column name="j_errb_world"
      tablehead="J_ErrB_world"
      type="double precision"
      ucd="stat.error"
      unit="deg"
      description="World RMS position error along minor axis (J band)"
      verbLevel="30" />
    <column name="j_theta_world"
      tablehead="J_Theta_world"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle - CCW/world-x (J band)"
      verbLevel="30" />
    <column name="j_theta_j2000"
      tablehead="J_Theta_J2000"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Position angle - east of north J2000 (J band)"
      verbLevel="30" />
    <column name="j_errtheta_world"
      tablehead="J_ErrTheta_world"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="Error ellipse position angle - CCW/world-x (J band)"
      verbLevel="30" />
    <column name="j_errtheta_j2000"
      tablehead="J_ErrTheta_J2000"
      type="real"
      ucd="stat.error;pos.posAng"
      unit="deg"
      description="J2000 error ellipse position angle - east of north (J band)"
      verbLevel="30" />
    <column name="j_elongation"
      tablehead="J_Elongation"
      type="real"
      ucd="phys.size.axisRatio"
      description="Elongation A_image/B_image (J band)"
      verbLevel="30" />
    <column name="j_ellipticity"
      tablehead="J_Ellipticity"
      type="real"
      ucd="src.ellipticity"
      description="Ellipticity 1 - B_image/A_image (J band)"
      verbLevel="30" />
    <column name="j_class_star"
      tablehead="J_Class_Star"
      type="real"
      ucd="src.class.starGalaxy;em.IR.J"
      description="S/G classifier output (J band)"
      verbLevel="1" />


    <column name="h_xwin_image"
      tablehead="H_Xwin_image"
      type="double precision"
      ucd="pos.cartesian.x"
      unit="pixel"
      description="Windowed position estimate along x (H band)"
      verbLevel="30" />
    <column name="h_ywin_image"
      tablehead="H_Ywin_image"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pixel"
      description="Windowed position estimate along y (H band)"
      verbLevel="30" />
    <column name="h_flags"
      tablehead="H_Flags"
      type="smallint"
      ucd="meta.code;em.IR.H"
      description="H band extraction flags"
      note="1"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="h_fwhm_image"
      tablehead="H_FWHM_image"
      type="real"
      ucd="phys.angSize;em.IR.H"
      unit="pixel"
      description="FWHM assuming a gaussian core (H band)"
      verbLevel="30" />
    <column name="h_fwhm_world"
      tablehead="H_FWHM_world"
      type="double precision"
      ucd="phys.angSize;em.IR.H"
      unit="deg"
      description="FWHM assuming a gaussian core (H band)"
      verbLevel="30" />
    <column name="h_kron_radius"
      tablehead="H_Kron_radius"
      type="real"
      ucd="phys.angSize;em.IR.H"
      description="Kron aperture in units of A or B (H band)"
      verbLevel="1" />
    <column name="h_flux_radius_1"
      tablehead="H_Flux_radius_1"
      type="double precision"
      ucd="phys.angSize;src;em.IR.H"
      unit="pixel"
      description="Fraction-of-light (0.2) radius (H band)"
      verbLevel="30" />
    <column name="h_flux_radius_2"
      tablehead="H_Flux_radius_2"
      type="double precision"
      ucd="phys.angSize;src;em.IR.H"
      unit="pixel"
      description="Fraction-of-light (0.5) radius (H band)"
      verbLevel="30" />
    <column name="h_flux_radius_3"
      tablehead="H_Flux_radius_3"
      type="double precision"
      ucd="phys.angSize;src;em.IR.H"
      unit="pixel"
      description="Fraction-of-light (0.8) radius (H band)"
      verbLevel="30" />
    <column name="h_mag_iso"
      tablehead="H_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="h_mag_isocor"
      tablehead="H_Mag_ISOcor"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="Corrected H band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="h_mag_auto"
      tablehead="H_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band Kron-like elliptical aperture Vega magnitude"
      verbLevel="1" />
    <column name="h_mag_petro"
      tablehead="H_Mag_Petro"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band Petrosian-like elliptical aperture Vega magnitude"
      verbLevel="1" />
    <column name="h_mag_best"
      tablehead="H_Mag_best"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band best of MAG_AUTO and MAG_ISOCOR"
      verbLevel="1" />
    <column name="h_magerr_iso"
      tablehead="H_MagErr_ISO"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="h_magerr_isocor"
      tablehead="H_MagErr_ISOcor"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band corrected isophotal Vega magnitude"
      verbLevel="1" />
    <column name="h_magerr_auto"
      tablehead="H_MagErr_Auto"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band auto Vega magnitude"
      verbLevel="1" />
    <column name="h_magerr_petro"
      tablehead="H_MagErr_Petro"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band Petrosian Vega magnitude"
      verbLevel="1" />
    <column name="h_magerr_best"
      tablehead="H_MagErr_best"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band best Vega magnitude"
      verbLevel="1" />
    <column name="h_mag_aper_1"
      tablehead="H_Mag_Aper_1"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band Vega magnitude within 1 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_2"
      tablehead="H_Mag_Aper_2"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band Vega magnitude within 1.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_3"
      tablehead="H_Mag_Aper_3"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band Vega magnitude within 2 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_4"
      tablehead="H_Mag_Aper_4"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 2.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_5"
      tablehead="H_Mag_Aper_5"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 3 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_6"
      tablehead="H_Mag_Aper_6"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 4 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_7"
      tablehead="H_Mag_Aper_7"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_8"
      tablehead="H_Mag_Aper_8"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 6 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_9"
      tablehead="H_Mag_Aper_9"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 7 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_10"
      tablehead="H_Mag_Aper_10"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 8 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_11"
      tablehead="H_Mag_Aper_11"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 9 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_12"
      tablehead="H_Mag_Aper_12"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 10 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_mag_aper_13"
      tablehead="H_Mag_Aper_13"
      type="real"
      ucd="phot.mag;em.IR.H"
      unit="mag"
      description="H band magnitude within 20 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_1"
      tablehead="H_MagErr_Aper_1"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band Vega magnitude within 1 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_2"
      tablehead="H_MagErr_Aper_2"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band Vega magnitude within 1.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_3"
      tablehead="H_MagErr_Aper_3"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band Vega magnitude within 2 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_4"
      tablehead="H_MagErr_Aper_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 2.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_5"
      tablehead="H_MagErr_Aper_5"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 3 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_6"
      tablehead="H_MagErr_Aper_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 4 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_7"
      tablehead="H_MagErr_Aper_7"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_8"
      tablehead="H_MagErr_Aper_8"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 6 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_9"
      tablehead="H_MagErr_Aper_9"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 7 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_10"
      tablehead="H_MagErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 8 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_11"
      tablehead="H_MagErr_Aper_11"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 9 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_12"
      tablehead="H_MagErr_Aper_12"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 10 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_magerr_aper_13"
      tablehead="H_MagErr_Aper_13"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.H"
      unit="mag"
      description="RMS error for H band magnitude within 20 arc-second diameter aperture"
      verbLevel="1" />
    <column name="h_flux_auto"
      tablehead="H_Flux_Auto"
      type="double precision"
      ucd="phot.count;em.IR.H"
      unit="count"
      description="H band flux within a Kron-like elliptical aperture"
      verbLevel="30" />
    <column name="h_fluxerr_auto"
      tablehead="H_FluxErr_Auto"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.H"
      unit="count"
      description="RMS error for H band auto flux"
      verbLevel="30" />
    <column name="h_background"
      tablehead="H_Background"
      type="double precision"
      ucd="instr.background;em.IR.H"
      unit="count"
      description="H band background at centroid position"
      verbLevel="30" />
    <column name="h_flux_max"
      tablehead="H_Flux_max"
      type="double precision"
      ucd="phot.count;em.IR.H"
      unit="count"
      description="H band peak flux above background"
      verbLevel="30" />
    <column name="h_isoarea_image"
      tablehead="H_ISOarea_image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area above analysis threshold (H band)"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="h_class_star"
      tablehead="H_Class_Star"
      type="real"
      ucd="src.class.starGalaxy;em.IR.H"
      description="S/G classifier output (H band)"
      verbLevel="1" />
    <column name="k_xwin_image"
      tablehead="K_Xwin_image"
      type="double precision"
      ucd="pos.cartesian.x"
      unit="pixel"
      description="Windowed position estimate along x (Ks band)"
      verbLevel="30" />
    <column name="k_ywin_image"
      tablehead="K_Ywin_image"
      type="double precision"
      ucd="pos.cartesian.y"
      unit="pixel"
      description="Windowed position estimate along y (Ks band)"
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
    <column name="k_fwhm_image"
      tablehead="K_FWHM_image"
      type="real"
      ucd="phys.angSize;em.IR.K"
      unit="pixel"
      description="FWHM assuming a gaussian core (Ks band)"
      verbLevel="30" />
    <column name="k_fwhm_world"
      tablehead="K_FWHM_world"
      type="double precision"
      ucd="phys.angSize;em.IR.K"
      unit="deg"
      description="FWHM assuming a gaussian core (Ks band)"
      verbLevel="30" />
    <column name="k_kron_radius"
      tablehead="K_Kron_radius"
      type="real"
      ucd="phys.angSize;em.IR.K"
      description="Kron aperture in units of A or B (Ks band)"
      verbLevel="1" />
    <column name="k_flux_radius_1"
      tablehead="K_Flux_radius_1"
      type="double precision"
      ucd="phys.angSize;src;em.IR.K"
      unit="pixel"
      description="Fraction-of-light (0.2) radius (Ks band)"
      verbLevel="30" />
    <column name="k_flux_radius_2"
      tablehead="K_Flux_radius_2"
      type="double precision"
      ucd="phys.angSize;src;em.IR.K"
      unit="pixel"
      description="Fraction-of-light (0.5) radius (Ks band)"
      verbLevel="30" />
    <column name="k_flux_radius_3"
      tablehead="K_Flux_radius_3"
      type="double precision"
      ucd="phys.angSize;src;em.IR.K"
      unit="pixel"
      description="Fraction-of-light (0.8) radius (Ks band)"
      verbLevel="30" />
    <column name="k_mag_iso"
      tablehead="K_Mag_ISO"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="k_mag_isocor"
      tablehead="K_Mag_ISOcor"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Corrected Ks band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="k_mag_auto"
      tablehead="K_Mag_Auto"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band Kron-like elliptical aperture Vega magnitude"
      verbLevel="1" />
    <column name="k_mag_petro"
      tablehead="K_Mag_Petro"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band Petrosian-like elliptical aperture Vega magnitude"
      verbLevel="1" />
    <column name="k_mag_best"
      tablehead="K_Mag_best"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band best of MAG_AUTO and MAG_ISOCOR"
      verbLevel="1" />
    <column name="k_magerr_iso"
      tablehead="K_MagErr_ISO"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band isophotal Vega magnitude"
      verbLevel="1" />
    <column name="k_magerr_isocor"
      tablehead="K_MagErr_ISOcor"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band corrected isophotal Vega magnitude"
      verbLevel="1" />
    <column name="k_magerr_auto"
      tablehead="K_MagErr_Auto"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band auto Vega magnitude"
      verbLevel="1" />
    <column name="k_magerr_petro"
      tablehead="K_MagErr_Petro"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band Petrosian Vega magnitude"
      verbLevel="1" />
    <column name="k_magerr_best"
      tablehead="K_MagErr_best"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band best Vega magnitude"
      verbLevel="1" />
    <column name="k_mag_aper_1"
      tablehead="K_Mag_Aper_1"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band Vega magnitude within 1 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_2"
      tablehead="K_Mag_Aper_2"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band Vega magnitude within 1.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_3"
      tablehead="K_Mag_Aper_3"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band Vega magnitude within 2 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_4"
      tablehead="K_Mag_Aper_4"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 2.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_5"
      tablehead="K_Mag_Aper_5"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 3 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_6"
      tablehead="K_Mag_Aper_6"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 4 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_7"
      tablehead="K_Mag_Aper_7"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_8"
      tablehead="K_Mag_Aper_8"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 6 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_9"
      tablehead="K_Mag_Aper_9"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 7 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_10"
      tablehead="K_Mag_Aper_10"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 8 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_11"
      tablehead="K_Mag_Aper_11"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 9 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_12"
      tablehead="K_Mag_Aper_12"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 10 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_mag_aper_13"
      tablehead="K_Mag_Aper_13"
      type="real"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Ks band magnitude within 20 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_1"
      tablehead="K_MagErr_Aper_1"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band Vega magnitude within 1 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_2"
      tablehead="K_MagErr_Aper_2"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band Vega magnitude within 1.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_3"
      tablehead="K_MagErr_Aper_3"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band Vega magnitude within 2 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_4"
      tablehead="K_MagErr_Aper_4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 2.5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_5"
      tablehead="K_MagErr_Aper_5"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 3 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_6"
      tablehead="K_MagErr_Aper_6"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 4 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_7"
      tablehead="K_MagErr_Aper_7"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 5 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_8"
      tablehead="K_MagErr_Aper_8"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 6 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_9"
      tablehead="K_MagErr_Aper_9"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 7 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_10"
      tablehead="K_MagErr_Aper_10"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 8 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_11"
      tablehead="K_MagErr_Aper_11"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 9 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_12"
      tablehead="K_MagErr_Aper_12"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 10 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_magerr_aper_13"
      tablehead="K_MagErr_Aper_13"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="RMS error for Ks band magnitude within 20 arc-second diameter aperture"
      verbLevel="1" />
    <column name="k_flux_auto"
      tablehead="K_Flux_Auto"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="Ks band flux within a Kron-like elliptical aperture"
      verbLevel="30" />
    <column name="k_fluxerr_auto"
      tablehead="K_FluxErr_Auto"
      type="double precision"
      ucd="stat.error;phot.count;em.IR.K"
      unit="count"
      description="RMS error for Ks band auto flux"
      verbLevel="30" />
    <column name="k_background"
      tablehead="K_Background"
      type="double precision"
      ucd="instr.background;em.IR.K"
      unit="count"
      description="Ks band background at centroid position"
      verbLevel="30" />
    <column name="k_flux_max"
      tablehead="K_Flux_max"
      type="double precision"
      ucd="phot.count;em.IR.K"
      unit="count"
      description="Ks band peak flux above background"
      verbLevel="30" />
    <column name="k_isoarea_image"
      tablehead="K_ISOarea_image"
      type="integer"
      ucd="phys.area;instr.sensitivity"
      unit="pixel**2"
      description="Isophotal area above analysis threshold (Ks band)"
      verbLevel="30">
        <values nullLiteral="-99"/>
    </column>
    <column name="k_class_star"
      tablehead="K_Class_Star"
      type="real"
      ucd="src.class.starGalaxy;em.IR.K"
      description="S/G classifier output (Ks band)"
      verbLevel="1" />
    <column name="subfield"
      tablehead="Subfield"
      type="text"
      ucd="meta.id;obs.field"
      description="Subfield the source was identified in"
      required="True"
      verbLevel="1" />
    <column name="number"
      tablehead="Number"
      type="bigint"
      ucd="meta.id"
      description="Source identifier in each subfield"
      verbLevel="1">
        <values nullLiteral="-99"/>
    </column>
    <column name="internal_id"
      tablehead="Internal_Id"
      type="text"
      ucd="meta.id"
      description="Identifier from the pristine catalogue"
      required="True"
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
  <data id="import">
    <sources>data/ibis_masterlist_selected.csv</sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
          number:number,
          alpha_j2000:alpha_j2000,
          delta_j2000:delta_j2000,
          j_x_image:j_x_image,
          j_y_image:j_y_image,
          j_xwin_image:j_xwin_image,
          j_ywin_image:j_ywin_image,
          j_flags:j_flags,
          j_imaflags_iso:j_imaflags_iso,
          j_nimaflags_iso:j_nimaflags_iso,
          j_fwhm_image:j_fwhm_image,
          j_fwhm_world:j_fwhm_world,
          j_kron_radius:j_kron_radius,
          j_flux_radius_1:j_flux_radius_1,
          j_flux_radius_2:j_flux_radius_2,
          j_flux_radius_3:j_flux_radius_3,
          j_mag_iso:j_mag_iso,
          j_mag_isocor:j_mag_isocor,
          j_mag_auto:j_mag_auto,
          j_mag_petro:j_mag_petro,
          j_mag_best:j_mag_best,
          j_magerr_iso:j_magerr_iso,
          j_magerr_isocor:j_magerr_isocor,
          j_magerr_auto:j_magerr_auto,
          j_magerr_petro:j_magerr_petro,
          j_magerr_best:j_magerr_best,
          j_mag_aper_1:j_mag_aper_1,
          j_mag_aper_2:j_mag_aper_2,
          j_mag_aper_3:j_mag_aper_3,
          j_mag_aper_4:j_mag_aper_4,
          j_mag_aper_5:j_mag_aper_5,
          j_mag_aper_6:j_mag_aper_6,
          j_mag_aper_7:j_mag_aper_7,
          j_mag_aper_8:j_mag_aper_8,
          j_mag_aper_9:j_mag_aper_9,
          j_mag_aper_10:j_mag_aper_10,
          j_mag_aper_11:j_mag_aper_11,
          j_mag_aper_12:j_mag_aper_12,
          j_mag_aper_13:j_mag_aper_13,
          j_magerr_aper_1:j_magerr_aper_1,
          j_magerr_aper_2:j_magerr_aper_2,
          j_magerr_aper_3:j_magerr_aper_3,
          j_magerr_aper_4:j_magerr_aper_4,
          j_magerr_aper_5:j_magerr_aper_5,
          j_magerr_aper_6:j_magerr_aper_6,
          j_magerr_aper_7:j_magerr_aper_7,
          j_magerr_aper_8:j_magerr_aper_8,
          j_magerr_aper_9:j_magerr_aper_9,
          j_magerr_aper_10:j_magerr_aper_10,
          j_magerr_aper_11:j_magerr_aper_11,
          j_magerr_aper_12:j_magerr_aper_12,
          j_magerr_aper_13:j_magerr_aper_13,
          j_flux_auto:j_flux_auto,
          j_fluxerr_auto:j_fluxerr_auto,
          j_background:j_background,
          j_threshold:j_threshold,
          j_flux_max:j_flux_max,
          j_isoarea_image:j_isoarea_image,
          j_x2_image:j_x2_image,
          j_y2_image:j_y2_image,
          j_xy_image:j_xy_image,
          j_x2_world:j_x2_world,
          j_y2_world:j_y2_world,
          j_xy_world:j_xy_world,
          j_cxx_image:j_cxx_image,
          j_cyy_image:j_cyy_image,
          j_cxy_image:j_cxy_image,
          j_cxx_world:j_cxx_world,
          j_cyy_world:j_cyy_world,
          j_cxy_world:j_cxy_world,
          j_errcxx_image:j_errcxx_image,
          j_errcyy_image:j_errcyy_image,
          j_errcxy_image:j_errcxy_image,
          j_errcxx_world:j_errcxx_world,
          j_errcyy_world:j_errcyy_world,
          j_errcxy_world:j_errcxy_world,
          j_a_world:j_a_world,
          j_b_world:j_b_world,
          j_erra_world:j_erra_world,
          j_errb_world:j_errb_world,
          j_theta_world:j_theta_world,
          j_theta_j2000:j_theta_j2000,
          j_errtheta_world:j_errtheta_world,
          j_errtheta_j2000:j_errtheta_j2000,
          j_elongation:j_elongation,
          j_ellipticity:j_ellipticity,
          j_class_star:j_class_star,
          h_xwin_image:h_xwin_image,
          h_ywin_image:h_ywin_image,
          h_flags:h_flags,
          h_fwhm_image:h_fwhm_image,
          h_fwhm_world:h_fwhm_world,
          h_kron_radius:h_kron_radius,
          h_flux_radius_1:h_flux_radius_1,
          h_flux_radius_2:h_flux_radius_2,
          h_flux_radius_3:h_flux_radius_3,
          h_mag_iso:h_mag_iso,
          h_mag_isocor:h_mag_isocor,
          h_mag_auto:h_mag_auto,
          h_mag_petro:h_mag_petro,
          h_mag_best:h_mag_best,
          h_magerr_iso:h_magerr_iso,
          h_magerr_isocor:h_magerr_isocor,
          h_magerr_auto:h_magerr_auto,
          h_magerr_petro:h_magerr_petro,
          h_magerr_best:h_magerr_best,
          h_mag_aper_1:h_mag_aper_1,
          h_mag_aper_2:h_mag_aper_2,
          h_mag_aper_3:h_mag_aper_3,
          h_mag_aper_4:h_mag_aper_4,
          h_mag_aper_5:h_mag_aper_5,
          h_mag_aper_6:h_mag_aper_6,
          h_mag_aper_7:h_mag_aper_7,
          h_mag_aper_8:h_mag_aper_8,
          h_mag_aper_9:h_mag_aper_9,
          h_mag_aper_10:h_mag_aper_10,
          h_mag_aper_11:h_mag_aper_11,
          h_mag_aper_12:h_mag_aper_12,
          h_mag_aper_13:h_mag_aper_13,
          h_magerr_aper_1:h_magerr_aper_1,
          h_magerr_aper_2:h_magerr_aper_2,
          h_magerr_aper_3:h_magerr_aper_3,
          h_magerr_aper_4:h_magerr_aper_4,
          h_magerr_aper_5:h_magerr_aper_5,
          h_magerr_aper_6:h_magerr_aper_6,
          h_magerr_aper_7:h_magerr_aper_7,
          h_magerr_aper_8:h_magerr_aper_8,
          h_magerr_aper_9:h_magerr_aper_9,
          h_magerr_aper_10:h_magerr_aper_10,
          h_magerr_aper_11:h_magerr_aper_11,
          h_magerr_aper_12:h_magerr_aper_12,
          h_magerr_aper_13:h_magerr_aper_13,
          h_flux_auto:h_flux_auto,
          h_fluxerr_auto:h_fluxerr_auto,
          h_background:h_background,
          h_flux_max:h_flux_max,
          h_isoarea_image:h_isoarea_image,
          h_class_star:h_class_star,
          k_xwin_image:k_xwin_image,
          k_ywin_image:k_ywin_image,
          k_flags:k_flags,
          k_fwhm_image:k_fwhm_image,
          k_fwhm_world:k_fwhm_world,
          k_kron_radius:k_kron_radius,
          k_flux_radius_1:k_flux_radius_1,
          k_flux_radius_2:k_flux_radius_2,
          k_flux_radius_3:k_flux_radius_3,
          k_mag_iso:k_mag_iso,
          k_mag_isocor:k_mag_isocor,
          k_mag_auto:k_mag_auto,
          k_mag_petro:k_mag_petro,
          k_mag_best:k_mag_best,
          k_magerr_iso:k_magerr_iso,
          k_magerr_isocor:k_magerr_isocor,
          k_magerr_auto:k_magerr_auto,
          k_magerr_petro:k_magerr_petro,
          k_magerr_best:k_magerr_best,
          k_mag_aper_1:k_mag_aper_1,
          k_mag_aper_2:k_mag_aper_2,
          k_mag_aper_3:k_mag_aper_3,
          k_mag_aper_4:k_mag_aper_4,
          k_mag_aper_5:k_mag_aper_5,
          k_mag_aper_6:k_mag_aper_6,
          k_mag_aper_7:k_mag_aper_7,
          k_mag_aper_8:k_mag_aper_8,
          k_mag_aper_9:k_mag_aper_9,
          k_mag_aper_10:k_mag_aper_10,
          k_mag_aper_11:k_mag_aper_11,
          k_mag_aper_12:k_mag_aper_12,
          k_mag_aper_13:k_mag_aper_13,
          k_magerr_aper_1:k_magerr_aper_1,
          k_magerr_aper_2:k_magerr_aper_2,
          k_magerr_aper_3:k_magerr_aper_3,
          k_magerr_aper_4:k_magerr_aper_4,
          k_magerr_aper_5:k_magerr_aper_5,
          k_magerr_aper_6:k_magerr_aper_6,
          k_magerr_aper_7:k_magerr_aper_7,
          k_magerr_aper_8:k_magerr_aper_8,
          k_magerr_aper_9:k_magerr_aper_9,
          k_magerr_aper_10:k_magerr_aper_10,
          k_magerr_aper_11:k_magerr_aper_11,
          k_magerr_aper_12:k_magerr_aper_12,
          k_magerr_aper_13:k_magerr_aper_13,
          k_flux_auto:k_flux_auto,
          k_fluxerr_auto:k_fluxerr_auto,
          k_background:k_background,
          k_flux_max:k_flux_max,
          k_isoarea_image:k_isoarea_image,
          k_class_star:k_class_star,
          subfield:subfield,
          internal_id:internal_id,
          help_id:help_id
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">Infrared Bootes Imaging Survey catalogue (masterlist
    selected)</meta>
    <meta name="shortName">IBIS_MLselected</meta>
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
      <condDesc buildFrom="help_id" />
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

<!--
vim:et:sta:sw=2
-->
