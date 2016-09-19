<resource schema="gaia">
  <meta name="title">Global Astrometric Interferometer for Astrophysics (GAIA)</meta>
  <meta name="creationDate">2016-09-19T17:04:50+0200</meta>
  <meta name="description">
    Catalogue of stars from the first data release (DR1) of the Global Astrometric Interferometer
    for Astrophysics (Gaia).
  </meta>
  <meta name="creator.name">Roehlly, Y.; et al</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Stars</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Optical</meta>
  </meta>

  <meta name="_longdoc" format="rst"> <![CDATA[

    This resource contains the first data release (DR1) of Gaia (Global Astrometric Interferometer
    for Astrophysics). The *gaia_source* catalogue was downloaded from the `Gaia Archive`__ and
    limited to HELP coverage. We also added a `field` column containing the name of the HELP field
    associated to each source for easy filtering.

    __ http://gea.esac.esa.int/archive/

    The complete description of the catalogue columns is available there:
    https://gaia.esac.esa.int/documentation/GDR1/datamodel/Ch1/gaia_source.html

    Survey identification
    ---------------------

    +-----------------+----------------------------------------------------------------------------+
    | Survey          | GAIA (Global Astrometric Interferometer for Astrophysics)                  |
    +-----------------+----------------------------------------------------------------------------+
    | Telescope       | GAIA                                                                       |
    +-----------------+----------------------------------------------------------------------------+
    | P.I.            | Timo Prusti                                                                |
    +-----------------+----------------------------------------------------------------------------+
    | Reference       | 2016arXiv160904172G                                                        |
    +-----------------+----------------------------------------------------------------------------+
    | URL             | http://sci.esa.int/gaia/                                                   |
    +-----------------+----------------------------------------------------------------------------+
    | Acknowledgement | This work has made use of data from the European Space Agency (ESA)        |
    |                 | mission Gaia (http://www.cosmos.esa.int/gaia), processed by the Gaia       |
    |                 | Data Processing and Analysis Consortium (DPAC,                             |
    |                 | http://www.cosmos.esa.int/web/gaia/dpac/consortium). Funding for the DPAC  |
    |                 | has been provided by national institutions, in particular the institutions |
    |                 | participating in the Gaia Multilateral Agreement.                          |
    +-----------------+----------------------------------------------------------------------------+

    History
    -------

    ======== ============================================
    20160920 First ingestion of the catalogue
    ======== ============================================

    RAW data
    --------

    You may also download `raw catalogues and MOC coverages`__.

    __ /gaia/q/cone/static

  ]]> </meta>

  <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex"
      primary="source_id">
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

    <column name="solution_id"
      tablehead="solution_id"
      type="bigint"
      ucd="meta.id;meta.version"
      description="Solution identifier (see documentation)"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="source_id"
      tablehead="source_id"
      type="bigint"
      ucd="meta.id;meta.main"
      description="A unique single numerical identifier of the source (see documentation)"
      required="True"
      verbLevel="1" />
    <column name="random_index"
      tablehead="random_index"
      type="bigint"
      ucd="meta.code"
      description="Random index (see note)"
      required="True"
      note="1"
      verbLevel="1" />
    <column name="ref_epoch"
      tablehead="ref_epoch"
      type="double precision"
      ucd="meta.ref;time.epoch"
      unit="a"
      description="Reference epoch to which the astrometic source parameters are referred,
      expressed as a Julian Year in TCB."
      verbLevel="30" />
    <column name="ra"
      tablehead="ra"
      type="double precision"
      ucd="pos.eq.ra;meta.main"
      unit="deg"
      description="Barycentric right ascension \alpha of the source in ICRS at the reference epoch
      refEpoch"
      required="True"
      verbLevel="1" />
    <column name="ra_error"
      tablehead="ra_error"
      type="double precision"
      ucd="stat.error;pos.eq.ra"
      unit="mas"
      description="Standard error \sigma_{\alpha *} \equiv \sigma_\alpha\cos\delta of the right
      ascension of the source in ICRS at the reference epoch refEpoch."
      verbLevel="1" />
    <column name="dec"
      tablehead="dec"
      type="double precision"
      ucd="pos.eq.dec;meta.main"
      unit="deg"
      description="Barycentric declination \delta of the source in ICRS at the reference epoch
      refEpoch"
      required="True"
      verbLevel="1" />
    <column name="dec_error"
      tablehead="dec_error"
      type="double precision"
      ucd="stat.error;pos.eq.dec"
      unit="mas"
      description="Standard error \sigma_\delta of the declination of the source in ICRS at the
      reference epoch refEpoch"
      verbLevel="1" />
    <column name="parallax"
      tablehead="parallax"
      type="double precision"
      ucd="pos.parallax"
      unit="mas"
      description="Absolute barycentric stellar parallax \varpi of the soure at the reference epoch
      refEpoch"
      verbLevel="1" />
    <column name="parallax_error"
      tablehead="parallax_error"
      type="double precision"
      ucd="stat.error;pos.parallax"
      unit="mas"
      description="Standard error \sigma_\varpi of the stellar parallax at the reference epoch
      refEpoch"
      verbLevel="30" />
    <column name="pmra"
      tablehead="pmra"
      type="double precision"
      ucd="pos.pm;pos.eq.ra"
      unit="mas/yr"
      description="Proper motion in right ascension \mu_{\alpha *} of the source in ICRS at the
      reference epoch refEpoch. This is the projection of the proper motion vector in the direction
      of increasing right ascension."
      verbLevel="1" />
    <column name="pmra_error"
      tablehead="pmra_error"
      type="double precision"
      ucd="stat.error;pos.pm;pos.eq.ra"
      unit="mas/yr"
      description="Standard error \sigma_{\mu\alpha *} of the proper motion vector in right
      ascension at the reference epoch refEpoch"
      verbLevel="30" />
    <column name="pmdec"
      tablehead="pmdec"
      type="double precision"
      ucd="pos.pm;pos.eq.dec"
      unit="mas/yr"
      description="Proper motion in declination \mu_\delta of the source at the reference epoch
      refEpoch. This is the projection of the proper motion vector in the direction of increasing
      declination."
      verbLevel="1" />
    <column name="pmdec_error"
      tablehead="pmdec_error"
      type="double precision"
      ucd="stat.error;pos.pm;pos.eq.dec"
      unit="mas/yr"
      description="Standard error \sigma_{\mu\delta} of the proper motion in declination at the
      reference epoch refEpoch"
      verbLevel="30" />
    <column name="ra_dec_corr"
      tablehead="ra_dec_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between right ascension and declination, in dimensionless units
      [-1:+1]"
      verbLevel="30" />
    <column name="ra_parallax_corr"
      tablehead="ra_parallax_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between right ascension and parallax, in dimensionless units [-1:+1]"
      verbLevel="30" />
    <column name="ra_pmra_corr"
      tablehead="ra_pmra_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between right ascension and proper motion in right ascension, in
      dimensionless units [-1:+1]"
      verbLevel="30" />
    <column name="ra_pmdec_corr"
      tablehead="ra_pmdec_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between right ascension and proper motion in declination, in
      dimensionless units [-1:+1]"
      verbLevel="30" />
    <column name="dec_parallax_corr"
      tablehead="dec_parallax_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between declination and parallax, in dimensionless units [-1:+1]"
      verbLevel="30" />
    <column name="dec_pmra_corr"
      tablehead="dec_pmra_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between declination and proper motion in right ascension, in
      dimensionless units [-1:+1]"
      verbLevel="30" />
    <column name="dec_pmdec_corr"
      tablehead="dec_pmdec_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between declination and proper motion in declination, in
      dimensionless units [-1:+1]"
      verbLevel="30" />
    <column name="parallax_pmra_corr"
      tablehead="parallax_pmra_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between parallax and proper motion in right ascension, in
      dimensionless units [-1:+1]"
      verbLevel="30" />
    <column name="parallax_pmdec_corr"
      tablehead="parallax_pmdec_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between parallax and proper motion in declination, in dimensionless
      units [-1:+1]"
      verbLevel="30" />
    <column name="pmra_pmdec_corr"
      tablehead="pmra_pmdec_corr"
      type="real"
      ucd="stat.correlation"
      description="Correlation between proper motion in right ascension and proper motion in
      declination, in dimensionless units [-1:+1]"
      verbLevel="30" />
    <column name="astrometric_n_obs_al"
      tablehead="astrometric_n_obs_al"
      type="integer"
      ucd="meta.number"
      description="Total number of AL observations (see documentation)"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="astrometric_n_obs_ac"
      tablehead="astrometric_n_obs_ac"
      type="integer"
      ucd="meta.number"
      description="Total number of AC observations (see documentation)"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="astrometric_n_good_obs_al"
      tablehead="astrometric_n_good_obs_al"
      type="integer"
      ucd="meta.number"
      description="Number of good AL observations (see documentation)"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="astrometric_n_good_obs_ac"
      tablehead="astrometric_n_good_obs_ac"
      type="integer"
      ucd="meta.number"
      description="Number of good AC observations (see documentation)"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="astrometric_n_bad_obs_al"
      tablehead="astrometric_n_bad_obs_al"
      type="integer"
      ucd="meta.number"
      description="Number of bad AL observations (see documentation)"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="astrometric_n_bad_obs_ac"
      tablehead="astrometric_n_bad_obs_ac"
      type="integer"
      ucd="meta.number"
      description="Number of bad AC observations (see documentation)"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="astrometric_delta_q"
      tablehead="astrometric_delta_q"
      type="real"
      ucd="stat.value"
      description="Hipparcos/Gaia data discrepancy - Hipparcos subset of TGAS only (see
      documentation)"
      verbLevel="30" />
    <column name="astrometric_excess_noise"
      tablehead="astrometric_excess_noise"
      type="double precision"
      ucd="stat.value"
      unit="mas"
      description="Excess noise of the source (see documentation)"
      verbLevel="30" />
    <column name="astrometric_excess_noise_sig"
      tablehead="astrometric_excess_noise_sig"
      type="double precision"
      ucd="stat.value"
      description="Significance of excess noise (see documentation)"
      verbLevel="30" />
    <column name="astrometric_primary_flag"
      tablehead="astrometric_primary_flag"
      type="boolean"
      ucd="meta.code"
      description="Primary or secondary (see documentation)"
      required="True"
      verbLevel="30" />
    <column name="astrometric_relegation_factor"
      tablehead="astrometric_relegation_factor"
      type="real"
      ucd="arith.factor"
      description="Relegation factor (see documentation)"
      verbLevel="30" />
    <column name="astrometric_weight_al"
      tablehead="astrometric_weight_al"
      type="real"
      ucd="stat.weight;stat.mean"
      unit="mas**-2"
      description="Mean astrometric weight of the source in AL direction (see documentation)"
      verbLevel="30" />
    <column name="astrometric_weight_ac"
      tablehead="astrometric_weight_ac"
      type="real"
      ucd="stat.weight;stat.mean"
      unit="mas**-2"
      description="Mean astrometric weight of the source in AC direction (see documentation)"
      verbLevel="30" />
    <column name="astrometric_priors_used"
      tablehead="astrometric_priors_used"
      type="integer"
      ucd="meta.code"
      description="Type of prior used (see note and documentation)"
      note="2"
      verbLevel="30">
        <values nullLiteral="-9999" />
    </column>
    <column name="matched_observations"
      tablehead="matched_observations"
      type="smallint"
      ucd="meta.number"
      description="This field indicates the number of observations (detection transits) that have
      been matched to a given source during the last internal crossmatch revision."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="duplicated_source"
      tablehead="duplicated_source"
      type="boolean"
      ucd="meta.code"
      description="Source with duplicate sources (see documentation)"
      required="True"
      verbLevel="30" />
    <column name="scan_direction_strength_k1"
      tablehead="scan_direction_strength_k1"
      type="real"
      ucd="meta.code"
      description="Degree of concentration of scan directions across the source (see documentation)"
      verbLevel="30" />
    <column name="scan_direction_strength_k2"
      tablehead="scan_direction_strength_k2"
      type="real"
      ucd="meta.code"
      description="Degree of concentration of scan directions across the source (see documentation)"
      verbLevel="30" />
    <column name="scan_direction_strength_k3"
      tablehead="scan_direction_strength_k3"
      type="real"
      ucd="meta.code"
      description="Degree of concentration of scan directions across the source (see documentation)"
      verbLevel="30" />
    <column name="scan_direction_strength_k4"
      tablehead="scan_direction_strength_k4"
      type="real"
      ucd="meta.code"
      description="Degree of concentration of scan directions across the source (see documentation)"
      verbLevel="30" />
    <column name="scan_direction_mean_k1"
      tablehead="scan_direction_mean_k1"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Mean position angle of scan directions across the source (see documentation)"
      verbLevel="30" />
    <column name="scan_direction_mean_k2"
      tablehead="scan_direction_mean_k2"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Mean position angle of scan directions across the source (see documentation)"
      verbLevel="30" />
    <column name="scan_direction_mean_k3"
      tablehead="scan_direction_mean_k3"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Mean position angle of scan directions across the source (see documentation)"
      verbLevel="30" />
    <column name="scan_direction_mean_k4"
      tablehead="scan_direction_mean_k4"
      type="real"
      ucd="pos.posAng"
      unit="deg"
      description="Mean position angle of scan directions across the source (see documentation)"
      verbLevel="30" />
    <column name="phot_g_n_obs"
      tablehead="phot_g_n_obs"
      type="integer"
      ucd="meta.number"
      description="Number of observations (CCD transits) that contributed to the G mean flux and
      mean flux error."
      verbLevel="30">
        <values nullLiteral="-99" />
    </column>
    <column name="phot_g_mean_flux"
      tablehead="phot_g_mean_flux"
      type="double precision"
      ucd="phot.flux;stat.mean;em.opt.B"
      unit="s**-1"
      description="Mean flux in the G-band [e-/s]"
      verbLevel="1" />
    <column name="phot_g_mean_flux_error"
      tablehead="phot_g_mean_flux_error"
      type="double precision"
      ucd="stat.error;phot.flux;stat.mean;em.opt.B"
      unit="s**-1"
      description="Error on the mean flux in the G-band [e-/s]"
      verbLevel="1" />
    <column name="phot_g_mean_mag"
      tablehead="phot_g_mean_mag"
      type="double precision"
      ucd="phot.mag;stat.mean;em.opt.B"
      unit="mag"
      description="Mean magnitude in the G band. This is computed from the G-band mean flux
      applying the magnitude zero-point in the Vega scale."
      verbLevel="1" />
    <column name="phot_variable_flag"
      tablehead="phot_variable_flag"
      type="text"
      ucd="meta.code;src.var"
      description="Flag indicating if variability was identified in the photometric G band (see
      note and documentation)"
      note="3"
      verbLevel="1" />
    <column name="l"
      tablehead="l"
      type="double precision"
      ucd="pos.galactic.lon"
      unit="deg"
      description="Galactic longitude at epoch 2015.0"
      verbLevel="30" />
    <column name="b"
      tablehead="b"
      type="double precision"
      ucd="pos.galactic.lat"
      unit="deg"
      description="Galactic latitude at epoch 2015.0"
      verbLevel="30" />
    <column name="ecl_lon"
      tablehead="ecl_lon"
      type="double precision"
      ucd="pos.ecliptic.lon"
      unit="deg"
      description="Ecliptic longitude at epoch 2015.0"
      verbLevel="30" />
    <column name="ecl_lat"
      tablehead="ecl_lat"
      type="double precision"
      ucd="pos.ecliptic.lat"
      unit="deg"
      description="Ecliptic latitude at epoch 2015.0"
      verbLevel="30" />

    <meta name="note" tag="1"><![CDATA[
      Random index which can be used to select smaller subsets of the data that are still
      representative. The column contains a random permutation of the numbers from 0 to N-1, where
      N is the number of rows.  The random index can be useful for validation (testing on 10
      different random subsets), visualization (displaying 1% of the data), and statistical
      exploration of the data, without the need to download all the data.
      ]]></meta>
    <meta name="note" tag="2"><![CDATA[
      Type of prior used in the astrometric solution:

      = =========================================================================
      O No prior used
      1 Galaxy Bayesian Prior for parallax and proper motion
      2 Galaxy Bayesian Prior for parallax and proper motion relaxed by factor 10
      3 Hipparcos prior for position
      4 Hipparcos prior for position and proper motion
      5 Tycho2 prior for position
      6 Quasar prior for proper motion
      = =========================================================================

      ]]></meta>
    <meta name="note" tag="3"><![CDATA[
      Flag indicating if variability was identified in the photometric G band:

      ============= =================================================
      NOT_AVAILABLE Source not processed and/or exported to catalogue
      CONSTANT      Source not identified as variable
      VARIABLE      Source identified and processed as variable
      ============= =================================================

      ]]></meta>
  </table>
  <data id="import">
    <sources>
      <pattern>data/gaia_help.csv</pattern>
    </sources>
    <csvGrammar />
    <make table="main">
      <rowmaker idmaps="*">
        <simplemaps>
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form,static">
    <meta name="title">Gaia DR1</meta>
    <meta name="shortName">Gaia</meta>
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
