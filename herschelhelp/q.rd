<resource schema="herschelhelp">
  <meta name="title">Herschel Extragalactic Legacy Programme (HELP)</meta>
  <meta name="creationDate">2017-10-06</meta>
  <meta name="description">
    HELP master catalogue.
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
    This resource contains the master catalogue from the Herschel Extragalactic
    Legacy Programme (HELP).
  ]]></meta>

  <meta name="source"></meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="help_id">
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
    <column name="help_id"
      tablehead="HELP_Id"
      type="text"
      ucd="meta.id;meta.main"
      description="HELP identifier, based on J2000 position"
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
    <column name="hp_idx"
      tablehead="HP_Idx"
      type="bigint"
      ucd="pos.healpix"
      description="HEALPix index of the source position at order 13 using the
      nested scheme."
      required="True"
      verbLevel="30" />
    <column name="ebv"
      tablehead="EBV"
      type="double precision"
      ucd="phot.color.excess"
      description="Galactic extinction (Schlegel et al. 1998) at the object
      position"
      verbLevel="1" />
    <column name="redshift"
      tablehead="Redshift"
      type="real"
      ucd="src.redshift.phot"
      description="Photometric redshift obtained with EAZY."
      verbLevel="1" />
    <column name="zspec"
      tablehead="zSpec"
      type="real"
      ucd="src.redsfhit"
      description="Spectroscopic redshift collated from the literature."
      verbLevel="1" />
    <column name="zspec_qual"
      tablehead="zSpec_qual"
      type="smallint"
      ucd="meta.code.qual;src.redshift"
      description="Spectroscopic redshift quality flag. FIXME code meaning."
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="zspec_association_flag"
      tablehead="zSpec_Association_Flag"
      type="boolean"
      ucd="meta.code;src.redshift"
      description="Boolean flag set to true when the association of a source to
      it's redshift may be problematic (possible mis-cross-association)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="pointsourceness"
      tablehead="Pointsourceness"
      type="real"
      ucd="src.class.starGalaxy"
      description="Index evaluation is the source is point-source: for 0 (not
      point source) to 1 (point source). Generally name stellarity index."
      verbLevel="1" />

    <column name="f_wfc_u"
      tablehead="F_WFC_u"
      type="double precision"
      ucd="phot.flux;em.opt.U"
      unit="uJy"
      description="Total flux density in the u band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_wfc_u"
      tablehead="Ferr_WFC_u"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="Uncertainty on F_WFC_u."
      verbLevel="1" />
    <column name="f_ap_wfc_u"
      tablehead="F_ap_WFC_u"
      type="double precision"
      ucd="phot.flux;em.opt.U"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the u band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_ap_wfc_u"
      tablehead="Ferr_ap_WFC_u"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="Uncertainty on F_ap_WFC_u."
      verbLevel="1" />
    <column name="m_wfc_u"
      tablehead="M_WFC_u"
      type="double precision"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="Total AB magnitude in the u band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_wfc_u"
      tablehead="Merr_WFC_u"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Mean error on M_WFC_u."
      verbLevel="1" />
    <column name="m_ap_wfc_u"
      tablehead="M_ap_WFC_u"
      type="double precision"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the u band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_ap_wfc_u"
      tablehead="Merr_ap_WFC_u"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Mean error on M_ap_WFC_u"
      verbLevel="1" />

    <column name="f_megacam_u"
      tablehead="F_MegaCAM_u"
      type="double precision"
      ucd="phot.flux;em.opt.U"
      unit="uJy"
      description="Total flux density in the u band of MegaCAM on the Canada
      France Hawaii Telescope (CFHT)."
      verbLevel="1" />
    <column name="ferr_megacam_u"
      tablehead="Ferr_MegaCAM_u"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="Uncertainty on F_MegaCAM_u."
      verbLevel="1" />
    <column name="f_ap_megacam_u"
      tablehead="F_ap_MegaCAM_u"
      type="double precision"
      ucd="phot.flux;em.opt.U"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the u band of MegaCAM on the Canada France Hawaii
      Telescope (CFHT)."
      verbLevel="1" />
    <column name="ferr_ap_megacam_u"
      tablehead="Ferr_ap_MegaCAM_u"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.U"
      unit="uJy"
      description="Uncertainty on F_ap_MegaCAM_u."
      verbLevel="1" />
    <column name="m_megacam_u"
      tablehead="M_MegaCAM_u"
      type="double precision"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="Total AB magnitude in the u band of MegaCAM on the Canada
      France Hawaii Telescope (CFHT)."
      verbLevel="1" />
    <column name="merr_megacam_u"
      tablehead="Merr_MegaCAM_u"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Mean error on M_MegaCAM_u."
      verbLevel="1" />
    <column name="m_ap_megacam_u"
      tablehead="M_ap_MegaCAM_u"
      type="double precision"
      ucd="phot.mag;em.opt.U"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the u band of MegaCAM on the Canada France Hawaii
      Telescope (CFHT)."
      verbLevel="1" />
    <column name="merr_ap_megacam_u"
      tablehead="Merr_ap_MegaCAM_u"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.U"
      unit="mag"
      description="Mean error on M_ap_MegaCAM_u"
      verbLevel="1" />

    <column name="f_suprime_g"
      tablehead="F_Suprime_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Total flux density in the g band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="ferr_surpime_g"
      tablehead="Ferr_Suprime_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on F_Suprime_g."
      verbLevel="1" />
    <column name="f_ap_suprime_g"
      tablehead="F_ap_Suprime_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the g band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="ferr_ap_suprime_g"
      tablehead="Ferr_ap_Suprime_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on F_ap_Suprime_g."
      verbLevel="1" />
    <column name="m_suprime_g"
      tablehead="M_Suprime_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Total AB magnitude in the g band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="merr_suprime_g"
      tablehead="Merr_Suprime_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Mean error on M_Suprime_g."
      verbLevel="1" />
    <column name="m_ap_suprime_g"
      tablehead="M_ap_Suprime_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the g band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="merr_ap_suprime_g"
      tablehead="Merr_ap_Suprime_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Mean error on M_ap_Suprime_g"
      verbLevel="1" />

    <column name="f_megacam_g"
      tablehead="F_MegaCAM_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Total flux density in the g band of MegaCAM on the Canada
      France Hawaii Telescope (CFHT)."
      verbLevel="1" />
    <column name="ferr_megacam_g"
      tablehead="Ferr_MegaCAM_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on F_MegaCAM_g."
      verbLevel="1" />
    <column name="f_ap_megacam_g"
      tablehead="F_ap_MegaCAM_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the g band of MegaCAM on the Canada France Hawaii
      Telescope (CFHT)."
      verbLevel="1" />
    <column name="ferr_ap_megacam_g"
      tablehead="Ferr_ap_MegaCAM_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on F_ap_MegaCAM_g."
      verbLevel="1" />
    <column name="m_megacam_g"
      tablehead="M_MegaCAM_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Total AB magnitude in the g band of MegaCAM on the Canada
      France Hawaii Telescope (CFHT)."
      verbLevel="1" />
    <column name="merr_megacam_g"
      tablehead="Merr_MegaCAM_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Mean error on M_MegaCAM_g."
      verbLevel="1" />
    <column name="m_ap_megacam_g"
      tablehead="M_ap_MegaCAM_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the g band of MegaCAM on the Canada France Hawaii
      Telescope (CFHT)."
      verbLevel="1" />
    <column name="merr_ap_megacam_g"
      tablehead="Merr_ap_MegaCAM_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Mean error on M_ap_MegaCAM_g"
      verbLevel="1" />

    <column name="f_gpc1_g"
      tablehead="F_GPC1_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Total flux density in the g band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="ferr_gpc1_g"
      tablehead="Ferr_GPC1_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on F_GPC1_g."
      verbLevel="1" />
    <column name="f_ap_gpc1_g"
      tablehead="F_ap_gpc1_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the g band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_g"
      tablehead="Ferr_ap_GPC1_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on F_ap_GPC1_g."
      verbLevel="1" />
    <column name="m_gpc1_g"
      tablehead="M_GPC1_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Total AB magnitude in the g band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="merr_gpc1_g"
      tablehead="Merr_GPC1_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Mean error on M_GPC1_g."
      verbLevel="1" />
    <column name="m_ap_gpc11_g"
      tablehead="M_ap_GPC1_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the g band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="merr_ap_gpc1_g"
      tablehead="Merr_ap_GPC1_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Mean error on M_ap_GPC1_g"
      verbLevel="1" />

    <column name="f_wfc_g"
      tablehead="F_WFC_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Total flux density in the g band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_wfc_g"
      tablehead="Ferr_WFC_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on F_WFC_g."
      verbLevel="1" />
    <column name="f_ap_wfc_g"
      tablehead="F_ap_WFC_g"
      type="double precision"
      ucd="phot.flux;em.opt.B"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the g band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_ap_wfc_g"
      tablehead="Ferr_ap_WFC_g"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.B"
      unit="uJy"
      description="Uncertainty on F_ap_WFC_g."
      verbLevel="1" />
    <column name="m_wfc_g"
      tablehead="M_WFC_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Total AB magnitude in the g band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_wfc_g"
      tablehead="Merr_WFC_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Mean error on M_WFC_g."
      verbLevel="1" />
    <column name="m_ap_wfc_g"
      tablehead="M_ap_WFC_g"
      type="double precision"
      ucd="phot.mag;em.opt.B"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the g band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_ap_wfc_g"
      tablehead="Merr_ap_WFC_g"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.B"
      unit="mag"
      description="Mean error on M_ap_WFC_g"
      verbLevel="1" />

    <column name="f_suprime_r"
      tablehead="F_Suprime_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Total flux density in the r band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="ferr_surpime_r"
      tablehead="Ferr_Suprime_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on F_Suprime_r."
      verbLevel="1" />
    <column name="f_ap_suprime_r"
      tablehead="F_ap_Suprime_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the r band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="ferr_ap_suprime_r"
      tablehead="Ferr_ap_Suprime_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on F_ap_Suprime_r."
      verbLevel="1" />
    <column name="m_suprime_r"
      tablehead="M_Suprime_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Total AB magnitude in the r band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="merr_suprime_r"
      tablehead="Merr_Suprime_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Mean error on M_Suprime_r."
      verbLevel="1" />
    <column name="m_ap_suprime_r"
      tablehead="M_ap_Suprime_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the r band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="merr_ap_suprime_r"
      tablehead="Merr_ap_Suprime_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Mean error on M_ap_Suprime_r"
      verbLevel="1" />

    <column name="f_gpc1_r"
      tablehead="F_GPC1_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Total flux density in the r band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="ferr_gpc1_r"
      tablehead="Ferr_GPC1_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on F_GPC1_r."
      verbLevel="1" />
    <column name="f_ap_gpc1_r"
      tablehead="F_ap_gpc1_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the r band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_r"
      tablehead="Ferr_ap_GPC1_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on F_ap_GPC1_r."
      verbLevel="1" />
    <column name="m_gpc1_r"
      tablehead="M_GPC1_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Total AB magnitude in the r band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="merr_gpc1_r"
      tablehead="Merr_GPC1_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Mean error on M_GPC1_r."
      verbLevel="1" />
    <column name="m_ap_gpc11_r"
      tablehead="M_ap_GPC1_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the r band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="merr_ap_gpc1_r"
      tablehead="Merr_ap_GPC1_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Mean error on M_ap_GPC1_r"
      verbLevel="1" />

    <column name="f_wfc_r"
      tablehead="F_WFC_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Total flux density in the r band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_wfc_r"
      tablehead="Ferr_WFC_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on F_WFC_r."
      verbLevel="1" />
    <column name="f_ap_wfc_r"
      tablehead="F_ap_WFC_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the r band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_ap_wfc_r"
      tablehead="Ferr_ap_WFC_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on F_ap_WFC_r."
      verbLevel="1" />
    <column name="m_wfc_r"
      tablehead="M_WFC_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Total AB magnitude in the r band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_wfc_r"
      tablehead="Merr_WFC_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Mean error on M_WFC_r."
      verbLevel="1" />
    <column name="m_ap_wfc_r"
      tablehead="M_ap_WFC_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the r band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_ap_wfc_r"
      tablehead="Merr_ap_WFC_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Mean error on M_ap_WFC_r"
      verbLevel="1" />

    <column name="f_megacam_r"
      tablehead="F_MegaCAM_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Total flux density in the r band of MegaCAM on the Canada
      France Hawaii Telescope (CFHT)."
      verbLevel="1" />
    <column name="ferr_megacam_r"
      tablehead="Ferr_MegaCAM_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on F_MegaCAM_r."
      verbLevel="1" />
    <column name="f_ap_megacam_r"
      tablehead="F_ap_MegaCAM_r"
      type="double precision"
      ucd="phot.flux;em.opt.R"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the r band of MegaCAM on the Canada France Hawaii
      Telescope (CFHT)."
      verbLevel="1" />
    <column name="ferr_ap_megacam_r"
      tablehead="Ferr_ap_MegaCAM_r"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.R"
      unit="uJy"
      description="Uncertainty on F_ap_MegaCAM_r."
      verbLevel="1" />
    <column name="m_megacam_r"
      tablehead="M_MegaCAM_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Total AB magnitude in the r band of MegaCAM on the Canada
      France Hawaii Telescope (CFHT)."
      verbLevel="1" />
    <column name="merr_megacam_r"
      tablehead="Merr_MegaCAM_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Mean error on M_MegaCAM_r."
      verbLevel="1" />
    <column name="m_ap_megacam_r"
      tablehead="M_ap_MegaCAM_r"
      type="double precision"
      ucd="phot.mag;em.opt.R"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the r band of MegaCAM on the Canada France Hawaii
      Telescope (CFHT)."
      verbLevel="1" />
    <column name="merr_ap_megacam_r"
      tablehead="Merr_ap_MegaCAM_r"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.R"
      unit="mag"
      description="Mean error on M_ap_MegaCAM_r"
      verbLevel="1" />

    <column name="f_gpc1_i"
      tablehead="F_GPC1_i"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the i band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="ferr_gpc1_i"
      tablehead="Ferr_GPC1_i"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_GPC1_i."
      verbLevel="1" />
    <column name="f_ap_gpc1_i"
      tablehead="F_ap_gpc1_i"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the i band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_i"
      tablehead="Ferr_ap_GPC1_i"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_GPC1_i."
      verbLevel="1" />
    <column name="m_gpc1_i"
      tablehead="M_GPC1_i"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the i band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="merr_gpc1_i"
      tablehead="Merr_GPC1_i"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_GPC1_i."
      verbLevel="1" />
    <column name="m_ap_gpc11_i"
      tablehead="M_ap_GPC1_i"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the i band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="merr_ap_gpc1_i"
      tablehead="Merr_ap_GPC1_i"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_GPC1_i"
      verbLevel="1" />

    <column name="f_suprime_i"
      tablehead="F_Suprime_i"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the i band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="ferr_surpime_i"
      tablehead="Ferr_Suprime_i"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_Suprime_i."
      verbLevel="1" />
    <column name="f_ap_suprime_i"
      tablehead="F_ap_Suprime_i"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the i band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="ferr_ap_suprime_i"
      tablehead="Ferr_ap_Suprime_i"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_Suprime_i."
      verbLevel="1" />
    <column name="m_suprime_i"
      tablehead="M_Suprime_i"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the i band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="merr_suprime_i"
      tablehead="Merr_Suprime_i"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_Suprime_i."
      verbLevel="1" />
    <column name="m_ap_suprime_i"
      tablehead="M_ap_Suprime_i"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the i band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="merr_ap_suprime_i"
      tablehead="Merr_ap_Suprime_i"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_Suprime_i"
      verbLevel="1" />

    <column name="f_wfc_i"
      tablehead="F_WFC_i"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the i band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_wfc_i"
      tablehead="Ferr_WFC_i"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_WFC_i."
      verbLevel="1" />
    <column name="f_ap_wfc_i"
      tablehead="F_ap_WFC_i"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the i band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_ap_wfc_i"
      tablehead="Ferr_ap_WFC_i"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_WFC_i."
      verbLevel="1" />
    <column name="m_wfc_i"
      tablehead="M_WFC_i"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the i band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_wfc_i"
      tablehead="Merr_WFC_i"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_WFC_i."
      verbLevel="1" />
    <column name="m_ap_wfc_i"
      tablehead="M_ap_WFC_i"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the i band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_ap_wfc_i"
      tablehead="Merr_ap_WFC_i"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_WFC_i"
      verbLevel="1" />

    <column name="f_gpc1_z"
      tablehead="F_GPC1_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the z band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="ferr_gpc1_z"
      tablehead="Ferr_GPC1_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_GPC1_z."
      verbLevel="1" />
    <column name="f_ap_gpc1_z"
      tablehead="F_ap_gpc1_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the z band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_z"
      tablehead="Ferr_ap_GPC1_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_GPC1_z."
      verbLevel="1" />
    <column name="m_gpc1_z"
      tablehead="M_GPC1_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the z band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="merr_gpc1_z"
      tablehead="Merr_GPC1_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_GPC1_z."
      verbLevel="1" />
    <column name="m_ap_gpc11_z"
      tablehead="M_ap_GPC1_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the z band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="merr_ap_gpc1_z"
      tablehead="Merr_ap_GPC1_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_GPC1_z"
      verbLevel="1" />

    <column name="f_wfc_z"
      tablehead="F_WFC_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the z band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_wfc_z"
      tablehead="Ferr_WFC_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_WFC_z."
      verbLevel="1" />
    <column name="f_ap_wfc_z"
      tablehead="F_ap_WFC_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the z band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="ferr_ap_wfc_z"
      tablehead="Ferr_ap_WFC_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_WFC_z."
      verbLevel="1" />
    <column name="m_wfc_z"
      tablehead="M_WFC_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the z band of the Wide Field Camera on
      the Isaac Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_wfc_z"
      tablehead="Merr_WFC_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_WFC_z."
      verbLevel="1" />
    <column name="m_ap_wfc_z"
      tablehead="M_ap_WFC_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the z band of the Wide Field Camera on the Isaac
      Newton Telescope (INT/WFC)."
      verbLevel="1" />
    <column name="merr_ap_wfc_z"
      tablehead="Merr_ap_WFC_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_WFC_z"
      verbLevel="1" />

    <column name="f_megacam_z"
      tablehead="F_MegaCAM_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the z band of MegaCAM on the Canada
      France Hawaii Telescope (CFHT)."
      verbLevel="1" />
    <column name="ferr_megacam_z"
      tablehead="Ferr_MegaCAM_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_MegaCAM_z."
      verbLevel="1" />
    <column name="f_ap_megacam_z"
      tablehead="F_ap_MegaCAM_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the z band of MegaCAM on the Canada France Hawaii
      Telescope (CFHT)."
      verbLevel="1" />
    <column name="ferr_ap_megacam_z"
      tablehead="Ferr_ap_MegaCAM_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_MegaCAM_z."
      verbLevel="1" />
    <column name="m_megacam_z"
      tablehead="M_MegaCAM_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the z band of MegaCAM on the Canada
      France Hawaii Telescope (CFHT)."
      verbLevel="1" />
    <column name="merr_megacam_z"
      tablehead="Merr_MegaCAM_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_MegaCAM_z."
      verbLevel="1" />
    <column name="m_ap_megacam_z"
      tablehead="M_ap_MegaCAM_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the z band of MegaCAM on the Canada France Hawaii
      Telescope (CFHT)."
      verbLevel="1" />
    <column name="merr_ap_megacam_z"
      tablehead="Merr_ap_MegaCAM_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_MegaCAM_z"
      verbLevel="1" />

    <column name="f_suprime_z"
      tablehead="F_Suprime_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the z band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="ferr_surpime_z"
      tablehead="Ferr_Suprime_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_Suprime_z."
      verbLevel="1" />
    <column name="f_ap_suprime_z"
      tablehead="F_ap_Suprime_z"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the z band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="ferr_ap_suprime_z"
      tablehead="Ferr_ap_Suprime_z"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_Suprime_z."
      verbLevel="1" />
    <column name="m_suprime_z"
      tablehead="M_Suprime_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the z band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="merr_suprime_z"
      tablehead="Merr_Suprime_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_Suprime_z."
      verbLevel="1" />
    <column name="m_ap_suprime_z"
      tablehead="M_ap_Suprime_z"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the z band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="merr_ap_suprime_z"
      tablehead="Merr_ap_Suprime_z"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_Suprime_z"
      verbLevel="1" />

    <column name="f_suprime_n921"
      tablehead="F_Suprime_n921"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the filter NB921 of the Subaru Prime
      Focus Camera."
      verbLevel="1" />
    <column name="ferr_surpime_n921"
      tablehead="Ferr_Suprime_n921"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_Suprime_n921."
      verbLevel="1" />
    <column name="f_ap_suprime_n921"
      tablehead="F_ap_Suprime_n921"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the filter NB921 of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="ferr_ap_suprime_n921"
      tablehead="Ferr_ap_Suprime_n921"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_Suprime_n921."
      verbLevel="1" />
    <column name="m_suprime_n921"
      tablehead="M_Suprime_n921"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the filter NB921 of the Subaru Prime
      Focus Camera."
      verbLevel="1" />
    <column name="merr_suprime_n921"
      tablehead="Merr_Suprime_n921"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_Suprime_n921."
      verbLevel="1" />
    <column name="m_ap_suprime_n921"
      tablehead="M_ap_Suprime_n921"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the filter NB921 of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="merr_ap_suprime_n921"
      tablehead="Merr_ap_Suprime_n921"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_Suprime_n921"
      verbLevel="1" />

    <column name="f_gpc1_y"
      tablehead="F_GPC1_y"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the y band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="ferr_gpc1_y"
      tablehead="Ferr_GPC1_y"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_GPC1_y."
      verbLevel="1" />
    <column name="f_ap_gpc1_y"
      tablehead="F_ap_gpc1_y"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the y band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="ferr_ap_gpc1_y"
      tablehead="Ferr_ap_GPC1_y"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_GPC1_y."
      verbLevel="1" />
    <column name="m_gpc1_y"
      tablehead="M_GPC1_y"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the y band of the PanSTARRS GigaPixel
      Camera 1."
      verbLevel="1" />
    <column name="merr_gpc1_y"
      tablehead="Merr_GPC1_y"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_GPC1_y."
      verbLevel="1" />
    <column name="m_ap_gpc11_y"
      tablehead="M_ap_GPC1_y"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the y band of the PanSTARRS GigaPixel Camera 1."
      verbLevel="1" />
    <column name="merr_ap_gpc1_y"
      tablehead="Merr_ap_GPC1_y"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_GPC1_y"
      verbLevel="1" />

    <column name="f_suprime_y"
      tablehead="F_Suprime_y"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Total flux density in the y band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="ferr_surpime_y"
      tablehead="Ferr_Suprime_y"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_Suprime_y."
      verbLevel="1" />
    <column name="f_ap_suprime_y"
      tablehead="F_ap_Suprime_y"
      type="double precision"
      ucd="phot.flux;em.opt.I"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the y band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="ferr_ap_suprime_y"
      tablehead="Ferr_ap_Suprime_y"
      type="double precision"
      ucd="stat.error;phot.flux;em.opt.I"
      unit="uJy"
      description="Uncertainty on F_ap_Suprime_y."
      verbLevel="1" />
    <column name="m_suprime_y"
      tablehead="M_Suprime_y"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Total AB magnitude in the y band of the Subaru Prime Focus
      Camera."
      verbLevel="1" />
    <column name="merr_suprime_y"
      tablehead="Merr_Suprime_y"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_Suprime_y."
      verbLevel="1" />
    <column name="m_ap_suprime_y"
      tablehead="M_ap_Suprime_y"
      type="double precision"
      ucd="phot.mag;em.opt.I"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the y band of the Subaru Prime Focus Camera."
      verbLevel="1" />
    <column name="merr_ap_suprime_y"
      tablehead="Merr_ap_Suprime_y"
      type="double precision"
      ucd="stat.error;phot.mag;em.opt.I"
      unit="mag"
      description="Mean error on M_ap_Suprime_y"
      verbLevel="1" />

    <column name="f_ukidss_j"
      tablehead="F_UKIDSS_J"
      type="double precision"
      ucd="phot.flux;em.IR.J"
      unit="uJy"
      description="Total flux density in the J band of the United Kingdom
      Infrared Telescope (UKIRT)."
      verbLevel="1" />
    <column name="ferr_ukidss_j"
      tablehead="Ferr_UKIDSS_J"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="Uncertainty on F_UKIDSS_J."
      verbLevel="1" />
    <column name="f_ap_ukidss_j"
      tablehead="F_ap_UKIDSS_J"
      type="double precision"
      ucd="phot.flux;em.IR.J"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the J band of the United Kingdom Infrared
      Telescope (UKIRT)."
      verbLevel="1" />
    <column name="ferr_ap_ukidss_j"
      tablehead="Ferr_ap_UKIDSS_J"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.J"
      unit="uJy"
      description="Uncertainty on F_ap_UKIDSS_J."
      verbLevel="1" />
    <column name="m_ukidss_j"
      tablehead="M_UKIDSS_J"
      type="double precision"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Total AB magnitude in the J band of the United Kingdom
      Infrared Telescope (UKIRT)."
      verbLevel="1" />
    <column name="merr_ukidss_j"
      tablehead="Merr_UKIDSS_J"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Mean error on M_UKIDSS_J."
      verbLevel="1" />
    <column name="m_ap_ukidss_j"
      tablehead="M_ap_UKIDSS_J"
      type="double precision"
      ucd="phot.mag;em.IR.J"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the J band of the United Kingdom Infrared
      Telescope (UKIRT)."
      verbLevel="1" />
    <column name="merr_ap_ukidss_j"
      tablehead="Merr_ap_UKIDSS_J"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.J"
      unit="mag"
      description="Mean error on M_ap_UKIDSS_J"
      verbLevel="1" />

    <column name="f_ukidss_k"
      tablehead="F_UKIDSS_K"
      type="double precision"
      ucd="phot.flux;em.IR.K"
      unit="uJy"
      description="Total flux density in the K band of the United Kingdom
      Infrared Telescope (UKIRT)."
      verbLevel="1" />
    <column name="ferr_ukidss_k"
      tablehead="Ferr_UKIDSS_K"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="Uncertainty on F_UKIDSS_K."
      verbLevel="1" />
    <column name="f_ap_ukidss_k"
      tablehead="F_ap_UKIDSS_K"
      type="double precision"
      ucd="phot.flux;em.IR.K"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the K band of the United Kingdom Infrared
      Telescope (UKIRT)."
      verbLevel="1" />
    <column name="ferr_ap_ukidss_k"
      tablehead="Ferr_ap_UKIDSS_K"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.K"
      unit="uJy"
      description="Uncertainty on F_ap_UKIDSS_K."
      verbLevel="1" />
    <column name="m_ukidss_k"
      tablehead="M_UKIDSS_K"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Total AB magnitude in the K band of the United Kingdom
      Infrared Telescope (UKIRT)."
      verbLevel="1" />
    <column name="merr_ukidss_k"
      tablehead="Merr_UKIDSS_K"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Mean error on M_UKIDSS_K."
      verbLevel="1" />
    <column name="m_ap_ukidss_k"
      tablehead="M_ap_UKIDSS_K"
      type="double precision"
      ucd="phot.mag;em.IR.K"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the K band of the United Kingdom Infrared
      Telescope (UKIRT)."
      verbLevel="1" />
    <column name="merr_ap_ukidss_k"
      tablehead="Merr_ap_UKIDSS_K"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.K"
      unit="mag"
      description="Mean error on M_ap_UKIDSS_K"
      verbLevel="1" />

    <column name="f_irac_i1"
      tablehead="F_IRAC_I1"
      type="double precision"
      ucd="phot.flux;em.IR.3-4um"
      unit="uJy"
      description="Total flux density in the IRAC1 band."
      verbLevel="1" />
    <column name="ferr_irac_i1"
      tablehead="Ferr_IRAC_I1"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on F_IRAC_I1."
      verbLevel="1" />
    <column name="f_ap_irac_i1"
      tablehead="F_ap_IRAC_I1"
      type="double precision"
      ucd="phot.flux;em.IR.3-4um"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the IRAC1 band."
      verbLevel="1" />
    <column name="ferr_ap_irac_i1"
      tablehead="Ferr_ap_IRAC_I1"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.3-4um"
      unit="uJy"
      description="Uncertainty on F_ap_IRAC_I1."
      verbLevel="1" />
    <column name="m_irac_i1"
      tablehead="M_IRAC_I1"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="Total AB magnitude in the IRAC1 band."
      verbLevel="1" />
    <column name="merr_irac_i1"
      tablehead="Merr_IRAC_I1"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Mean error on M_IRAC_I1."
      verbLevel="1" />
    <column name="m_ap_irac_i1"
      tablehead="M_ap_IRAC_I1"
      type="double precision"
      ucd="phot.mag;em.IR.3-4um"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the IRAC1 band."
      verbLevel="1" />
    <column name="merr_ap_irac_i1"
      tablehead="Merr_ap_IRAC_I1"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.3-4um"
      unit="mag"
      description="Mean error on M_ap_IRAC_I1"
      verbLevel="1" />

    <column name="f_irac_i2"
      tablehead="F_IRAC_I2"
      type="double precision"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Total flux density in the IRAC2 band."
      verbLevel="1" />
    <column name="ferr_irac_i2"
      tablehead="Ferr_IRAC_I2"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on F_IRAC_I2."
      verbLevel="1" />
    <column name="f_ap_irac_i2"
      tablehead="F_ap_IRAC_I2"
      type="double precision"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the IRAC2 band."
      verbLevel="1" />
    <column name="ferr_ap_irac_i2"
      tablehead="Ferr_ap_IRAC_I2"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on F_ap_IRAC_I2."
      verbLevel="1" />
    <column name="m_irac_i2"
      tablehead="M_IRAC_I2"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Total AB magnitude in the IRAC2 band."
      verbLevel="1" />
    <column name="merr_irac_i2"
      tablehead="Merr_IRAC_I2"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Mean error on M_IRAC_I2."
      verbLevel="1" />
    <column name="m_ap_irac_i2"
      tablehead="M_ap_IRAC_I2"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the IRAC2 band."
      verbLevel="1" />
    <column name="merr_ap_irac_i2"
      tablehead="Merr_ap_IRAC_I2"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Mean error on M_ap_IRAC_I2"
      verbLevel="1" />

    <column name="f_irac_i3"
      tablehead="F_IRAC_I3"
      type="double precision"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Total flux density in the IRAC3 band."
      verbLevel="1" />
    <column name="ferr_irac_i3"
      tablehead="Ferr_IRAC_I3"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on F_IRAC_I3."
      verbLevel="1" />
    <column name="f_ap_irac_i3"
      tablehead="F_ap_IRAC_I3"
      type="double precision"
      ucd="phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the IRAC3 band."
      verbLevel="1" />
    <column name="ferr_ap_irac_i3"
      tablehead="Ferr_ap_IRAC_I3"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.4-8um"
      unit="uJy"
      description="Uncertainty on F_ap_IRAC_I3."
      verbLevel="1" />
    <column name="m_irac_i3"
      tablehead="M_IRAC_I3"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Total AB magnitude in the IRAC3 band."
      verbLevel="1" />
    <column name="merr_irac_i3"
      tablehead="Merr_IRAC_I3"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Mean error on M_IRAC_I3."
      verbLevel="1" />
    <column name="m_ap_irac_i3"
      tablehead="M_ap_IRAC_I3"
      type="double precision"
      ucd="phot.mag;em.IR.4-8um"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the IRAC3 band."
      verbLevel="1" />
    <column name="merr_ap_irac_i3"
      tablehead="Merr_ap_IRAC_I3"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.4-8um"
      unit="mag"
      description="Mean error on M_ap_IRAC_I3"
      verbLevel="1" />

    <column name="f_irac_i4"
      tablehead="F_IRAC_I4"
      type="double precision"
      ucd="phot.flux;em.IR.8-15um"
      unit="uJy"
      description="Total flux density in the IRAC4 band."
      verbLevel="1" />
    <column name="ferr_irac_i4"
      tablehead="Ferr_IRAC_I4"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.8-15um"
      unit="uJy"
      description="Uncertainty on F_IRAC_I4."
      verbLevel="1" />
    <column name="f_ap_irac_i4"
      tablehead="F_ap_IRAC_I4"
      type="double precision"
      ucd="phot.flux;em.IR.8-15um"
      unit="uJy"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) flux density in the IRAC4 band."
      verbLevel="1" />
    <column name="ferr_ap_irac_i4"
      tablehead="Ferr_ap_IRAC_I4"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.8-15um"
      unit="uJy"
      description="Uncertainty on F_ap_IRAC_I4."
      verbLevel="1" />
    <column name="m_irac_i4"
      tablehead="M_IRAC_I4"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="mag"
      description="Total AB magnitude in the IRAC4 band."
      verbLevel="1" />
    <column name="merr_irac_i4"
      tablehead="Merr_IRAC_I4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="mag"
      description="Mean error on M_IRAC_I4."
      verbLevel="1" />
    <column name="m_ap_irac_i4"
      tablehead="M_ap_IRAC_I4"
      type="double precision"
      ucd="phot.mag;em.IR.8-15um"
      unit="mag"
      description="Aperture (nearest aperture to 2 arcsec, aperture correction
      applied) AB magnitude in the IRAC4 band."
      verbLevel="1" />
    <column name="merr_ap_irac_i4"
      tablehead="Merr_ap_IRAC_I4"
      type="double precision"
      ucd="stat.error;phot.mag;em.IR.8-15um"
      unit="mag"
      description="Mean error on M_ap_IRAC_I4"
      verbLevel="1" />

    <column name="f_mips_24"
      tablehead="F_MIPS_24"
      type="double precision"
      ucd="phot.flux;em.IR.15-30um"
      unit="uJy"
      description="Total flux density in the MIPS24 band."
      verbLevel="1" />
    <column name="ferr_mips_24"
      tablehead="Ferr_MIPS_24"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.15-30um"
      unit="uJy"
      description="Uncertainty on F_MIPS_24"
      verbLevel="1" />
    <column name="flag_mips_24"
      tablehead="Flag_MIPS_24"
      type="boolean"
      ucd="meta.code.qual;em.IR.15-30um"
      description="Flag set to true for sources for which the MIPS24 flux should
      not be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>

    <column name="f_pacs_green"
      tablehead="F_PACS_Green"
      type="double precision"
      ucd="phot.flux;em.IR.60-100um"
      unit="uJy"
      description="Total flux density in the PACS green band."
      verbLevel="1" />
    <column name="ferr_pacs_green"
      tablehead="Ferr_PACS_Green"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.60-100um"
      unit="uJy"
      description="Uncertainty on F_PACS_Green"
      verbLevel="1" />
    <column name="flag_pacs_green"
      tablehead="Flag_PACS_Green"
      type="boolean"
      ucd="meta.code.qual;em.IR.60-100um"
      description="Flag set to true for sources for which the PACS Green flux
      should not be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>

    <column name="f_pacs_red"
      tablehead="F_PACS_Red"
      type="double precision"
      ucd="phot.flux;em.IR.1500-3000GHz"
      unit="uJy"
      description="Total flux density in the PACS red band."
      verbLevel="1" />
    <column name="ferr_pacs_red"
      tablehead="Ferr_PACS_Red"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.1500-3000GHz"
      unit="uJy"
      description="Uncertainty on F_PACS_Red"
      verbLevel="1" />
    <column name="flag_pacs_red"
      tablehead="Flag_PACS_Red"
      type="boolean"
      ucd="meta.code.qual;em.IR.1500-3000GHz"
      description="Flag set to true for sources for which the PACS Red flux
      should not be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>

    <column name="f_spire_250"
      tablehead="F_SPIRE_250"
      type="double precision"
      ucd="phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="Total flux density in the SPIRE 250um band."
      verbLevel="1" />
    <column name="ferr_spire_250"
      tablehead="Ferr_SPIRE_250"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="Uncertainty on F_SPIRE_250."
      verbLevel="1" />
    <column name="flag_spire_250"
      tablehead="Flag_SPIRE_250"
      type="boolean"
      ucd="meta.code.qual;em.IR.750-1500GHz"
      description="Flag set to true for sources for which the SPIRE 250 flux
      should not be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>

    <column name="f_spire_350"
      tablehead="F_SPIRE_350"
      type="double precision"
      ucd="phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="Total flux density in the SPIRE 350um band."
      verbLevel="1" />
    <column name="ferr_spire_350"
      tablehead="Ferr_SPIRE_350"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.750-1500GHz"
      unit="uJy"
      description="Uncertainty on F_SPIRE_350."
      verbLevel="1" />
    <column name="flag_spire_350"
      tablehead="Flag_SPIRE_350"
      type="boolean"
      ucd="meta.code.qual;em.IR.750-1500GHz"
      description="Flag set to true for sources for which the SPIRE 350 flux
      should not be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>

    <column name="f_spire_500"
      tablehead="F_SPIRE_500"
      type="double precision"
      ucd="phot.flux;em.IR.400-750GHz"
      unit="uJy"
      description="Total flux density in the SPIRE 500um band."
      verbLevel="1" />
    <column name="ferr_spire_500"
      tablehead="Ferr_SPIRE_500"
      type="double precision"
      ucd="stat.error;phot.flux;em.IR.400-750GHz"
      unit="uJy"
      description="Uncertainty on F_SPIRE_500."
      verbLevel="1" />
    <column name="flag_spire_500"
      tablehead="Flag_SPIRE_500"
      type="boolean"
      ucd="meta.code.qual;em.IR.400-750GHz"
      description="Flag set to true for sources for which the SPIRE 500 flux
      should not be used for SED fitting (see documentation)."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>

    <column name="cigale_sfr"
      tablehead="CIGALE_SFR"
      type="double precision"
      ucd="phys.SFR"
      unit="Msun/yr"
      description="Star Formation Rate estimated by SED fitting with CIGALE."
      verbLevel="1" />
    <column name="cigale_sfr_err"
      tablehead="CIGALE_SFR_err"
      type="double precision"
      ucd="stat.error;phys.SFR"
      unit="Msun/yr"
      description="Uncertainty on CIGALE_SFR."
      verbLevel="1" />
    <column name="cigale_mstar"
      tablehead="CIGALE_Mstar"
      type="double precision"
      ucd="phys.mass"
      unit="Msun"
      description="Stellar Mass estimated by SED fitting with CIGALE."
      verbLevel="1" />
    <column name="cigale_mstar_err"
      tablehead="CIGALE_Mstar_err"
      type="double precision"
      ucd="stat.error;phys.mass"
      unit="Msun"
      description="Uncertainty on CIGALE_Mstar"
      verbLevel="1" />
    <column name="cigale_dustlumin"
      tablehead="CIGALE_DustLumin"
      type="double precision"
      ucd="phys.dust;phys.luminosity"
      unit="W"
      description="Dust luminosity estimated by SED fitting with CIGALE using
      both optical and infra-red information."
      verbLevel="1" />
    <column name="cigale_dustlumin_err"
      tablehead="CIGALE_DustLumin_err"
      type="double precision"
      ucd="stat.error;phys.dust;phys.luminosity"
      unit="W"
      description="Uncertainty on CIGALE_DustLumin."
      verbLevel="1" />
    <column name="cigale_dustlumin_ironly"
      tablehead="CIGALE_DustLumin_IRonly"
      type="double precision"
      ucd="phys.dust;phys.luminosity"
      unit="W"
      description="Dust luminosity estimated by SED fitting with CIGALE using
      only the infra-red information."
      verbLevel="1" />
    <column name="cigale_dustlumin_ironly_err"
      tablehead="CIGALE_DustLumin_IRonly_err"
      type="double precision"
      ucd="stat.error;phys.dust;phys.luminosity"
      unit="W"
      description="Uncertainty on CIGALE_DustLumin_IRonly"
      verbLevel="1" />
    <column name="flag_cigale"
      tablehead="Flag_CIGALE"
      type="smallint"
      ucd="meta.code.qual"
      description="Flag qualifying the global fitting with CIGALE: 1 for a good
      fit, 0 for a bad fit, -1 if the source was not fitted."
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="flag_cigale_opt"
      tablehead="Flag_CIGALE_Opt"
      type="smallint"
      ucd="meta.code.qual"
      description="Flag qualifying the fitting of the optical part of the
      spectrum during the global fit with CIGALE: 1 for a good fit, 0 for a bad
      fit, -1 if the source was not fitted."
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="flag_cigale_ir"
      tablehead="Flag_CIGALE_IR"
      type="smallint"
      ucd="meta.code.qual"
      description="Flag qualifying the fitting of the infra-red part of the
      spectrum during the global fit with CIGALE: 1 for a good fit, 0 for a bad
      fit, -1 if the source was not fitted."
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="flag_cigale_ironly"
      tablehead="Flag_CIGALE_IRonly"
      type="smallint"
      ucd="meta.code.qual"
      description="Flag qualifying the fitting using only infra-red data with
      CIGALE: 1 for a good fit, 0 for a bad fit, -1 if the source was not
      fitted."
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>

    <column name="flag_gaia"
      tablehead="Flag_Gaia"
      type="smallint"
      ucd="meta.code"
      description="Flag indicating the increasing probability of the source
      being a Gaia object (see note)."
      note="1"
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="flag_cleaned"
      tablehead="Flag_Cleaned"
      type="boolean"
      ucd="meta.code"
      description="Boolean flag denoting that the source was associated to
      really near object that were removed during the cleaning procedure."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="flag_merged"
      tablehead="Flag_Merged"
      type="boolean"
      ucd="meta.code"
      description="Boolean flag denoting a possible mis-association during the
      cross-matching of the various catalogues."
      verbLevel="1">
        <values nullLiteral="False" />
    </column>
    <column name="flag_optnir_obs"
      tablehead="Flag_OptNIR_Obs"
      type="smallint"
      ucd="meta.code"
      description="Flag indicating in which wavelength regimes the source was
      observed (see note)."
      note="2"
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>
    <column name="flag_optnir_det"
      tablehead="Flag_OptNIR_Det"
      type="smallint"
      ucd="meta.code"
      description="Flag indicating in which wavelength regimes the source was
      detected (see note)."
      note="2"
      verbLevel="1">
        <values nullLiteral="-1" />
    </column>

    <meta name="note" tag="1"><![CDATA[
      The Flag_Gaia is computed by cross-matching the catalogue with the Gaia
      catalogue:

      +-------+---------------------------------------------------------------+
      | Value | Meaning                                                       |
      +-------+---------------------------------------------------------------+
      | 1     | The object if possibly a Gaia object: the nearest Gaia source |
      |       | is between 1.5 arcsec and 2 arcsec.                           |
      +-------+---------------------------------------------------------------+
      | 2     | The object if probably a Gaia object: the nearest Gaia source |
      |       | is between 0.6 arcsec and 1.5 arcsec.                         |
      +-------+---------------------------------------------------------------+
      | 3     | The object is definitely a Gaia object: the nearest Gaia      |
      |       | source is nearer than 0.6 arcsec.                             |
      +-------+---------------------------------------------------------------+
      | 0     | Otherwise (the nearest Gaia source is farer than 2 arcsec).   |
      +-------+---------------------------------------------------------------+

      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      The Flag_OptNIR_Obs and Flag_OptNIR_Det are computed while cross-matching
      the optical and near/mid infrared catalogues and indicate if a source was
      observed (i.e. is on the coverage of surveys at the given regime) or
      detected (i.e. is present in the catalogue) in various wavelength regime.
      The detection is based on the detection wavelengths of the catalogues, and
      to be counted as detected, a source must be present in at least two
      catalogues.

      The flag is a composed binary flag with these values:

      +-------+-------------------------------------------------------------+
      | Value | Meaning                                                     |
      +-------+-------------------------------------------------------------+
      | 1     | Observation/detection in optical wavelengths.               |
      +-------+-------------------------------------------------------------+
      | 2     | Observation/detection in near-infrared wavelengths.         |
      +-------+-------------------------------------------------------------+
      | 4     | Observation/detection in mid-infrared wavelengths.          |
      +-------+-------------------------------------------------------------+

      ]]></meta>
  </table>

  <data id="import">
    <sources>
      <pattern>data/main/*.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps></simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">HELP main catalogue</meta>
    <meta name="shortName">HELP main</meta>
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
