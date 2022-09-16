*Table 5
clear
cls
import delimited "C:\Users\pbergmann\sciebo\Research\own_paper\Regression_2\files\Dataset.csv", delimiter(";")
*insheet using "C:\Users\philip\sciebo\Research\own_paper\Regression_2\files\Dataset.csv", delimiter(",")
gen newt = tq(1970q1) + time - 1
tsset location_dummy newt, quarterly
set more off
*set matsize 2000
set matsize 800

local start_time 1
local end_time 188
local countries "AUS BEL CAN FIN FRA GBR GER JPN NLD NOR SWE USA"
*local countries "GER"

local dummy "1"
local robust "tmt_gdp_ tmt_dgdp_ tmt_cpi_ tmt_dcpi_ tmt_interest_ tmt_dinterest_ tmt_unemployment_ tmt_dunemployment_ tmt_ipig7_ tmt_dipig7_ tmt_oildivgdp_ tmt_doildivgdp_ tmt_oil_ tmt_doil_ tmt_energy_share_est_ tmt_denergy_share_est_ mt_gdp_ mt_dgdp_ mt_cpi_ mt_dcpi_ mt_interest_ mt_dinterest_ mt_unemployment_ mt_dunemployment_ mt_ipig7_ mt_dipig7_ mt_oildivgdp_ mt_doildivgdp_ mt_oil_ mt_doil_ mt_energy_share_est_ mt_denergy_share_est_ nmt_gdp_ nmt_dgdp_ nmt_cpi_ nmt_dcpi_ nmt_interest_ nmt_dinterest_ nmt_unemployment_ nmt_dunemployment_ nmt_ipig7_ nmt_dipig7_ nmt_oildivgdp_ nmt_doildivgdp_ nmt_oil_ nmt_doil_ nmt_energy_share_est_ nmt_denergy_share_est_"

*******************
***********************
gen drop_var = 1
foreach droploc in `countries' {
drop if time<`start_time'
drop if time>`end_time'
replace drop_var = 0 if location == "`droploc'"
}

drop if drop_var == 1
drop drop_var
********************************************************************************

***Generation log and difference-log variables
gen d_gdp = gdp_p

gen l_oil_price_loc = .
gen l_ipi = .
gen l_ipi_g7 = .
gen l_cpi = .
gen l_interest = .
gen l_unemployment = .
gen l_energy_share_est = .
gen l_oil_div_gdp = .


gen d_l_oil_price_loc = .
gen d_l_ipi = .
gen d_l_ipi_g7 = .
gen d_l_cpi = .
gen d_l_interest = .
gen d_l_unemployment = .
gen d_l_mod_share = .
gen pos_d_l_oil_price_opec_real = 0
gen neg_d_l_oil_price_opec_real = 0
gen pos_d_l_mod_share = .
gen neg_d_l_mod_share = .
gen d_l_energy_share_est = .
gen d_l_oil_div_gdp = .

gen d_interest = .
gen d_unemployment = .

gen prod_demand = .



*gen sqrt_energy_share_est = sqrt(energy_share_est)
gen d_l_oil_price_opec_real = .

drop energy_share_est
gen energy_share_est = .

*** Edit of data
foreach loc in `countries' {
replace energy_share_est = oil_supply/tot_energy if location=="`loc'"

replace l_oil_price_loc = log(oil_price_loc_p) if location=="`loc'"
replace l_ipi = log(ipi) if location=="`loc'"
replace l_ipi_g7 = log(ipi_g7_p) if location=="`loc'"
replace l_cpi = log(cpi_p) if location=="`loc'"
replace l_interest = log(interest_p) if location=="`loc'"
replace l_unemployment = log(unemployment_p) if location=="`loc'"

replace l_energy_share_est = log(energy_share_est) if location=="`loc'"
replace l_oil_div_gdp = log(oil_div_gdp) if location=="`loc'"


replace d_l_oil_price_loc = (l_oil_price_loc-l_oil_price_loc[_n-1])*100 if location=="`loc'"
replace d_l_oil_price_loc = . if location=="`loc'" & time==`start_time'
replace d_l_ipi = (l_ipi-l_ipi[_n-1])*100 if location=="`loc'"
replace d_l_ipi = . if location=="`loc'" & time==`start_time'
replace d_l_ipi_g7 = (l_ipi_g7-l_ipi_g7[_n-1])*100 if location=="`loc'"
replace d_l_ipi_g7 = . if location=="`loc'" & time==`start_time'
replace d_l_cpi = (l_cpi-l_cpi[_n-1])*100 if location=="`loc'"
replace d_l_cpi = . if location=="`loc'" & time==`start_time'
replace d_l_interest = (l_interest-l_interest[_n-1])*100 if location=="`loc'"
replace d_l_interest = . if location=="`loc'" & time==`start_time'
replace d_l_unemployment = (l_unemployment-l_unemployment[_n-1])*100 if location=="`loc'"
replace d_l_unemployment = . if location=="`loc'" & time==`start_time'

replace d_l_energy_share_est = (l_energy_share_est-l_energy_share_est[_n-1])*100 if location=="`loc'"
replace d_l_energy_share_est = . if location=="`loc'" & time==`start_time'
replace d_l_oil_div_gdp = (l_oil_div_gdp-l_oil_div_gdp[_n-1])*100 if location=="`loc'"
replace d_l_oil_div_gdp = . if location=="`loc'" & time==`start_time'


replace d_interest = interest_p-interest_p[_n-1] if location=="`loc'"
replace d_interest = . if location=="`loc'" & time==`start_time'
replace d_unemployment = unemployment_p-unemployment_p[_n-1] if location=="`loc'"
replace d_unemployment = . if location=="`loc'" & time==`start_time'


replace d_l_oil_price_opec_real = d_l_oil_price_loc-ppi_p if location=="`loc'"

replace d_l_mod_share = d_l_oil_price_opec_real*energy_share_est if location=="`loc'"


replace prod_demand = oil_production/oil_demand

replace pos_d_l_oil_price_opec_real = d_l_oil_price_opec_real if location=="`loc'" & d_l_oil_price_opec_real>0
replace neg_d_l_oil_price_opec_real = d_l_oil_price_opec_real if location=="`loc'" & d_l_oil_price_opec_real<0

replace pos_d_l_mod_share = pos_d_l_oil_price_opec_real*energy_share_est if location=="`loc'"
replace neg_d_l_mod_share = neg_d_l_oil_price_opec_real*energy_share_est if location=="`loc'"

}

*** Drop Variables
foreach loc in `dummy' {

*drop l_oil_price_loc
drop l_ipi
drop l_ipi_g7
drop l_cpi
*drop oil_price_aic
*drop oil_price_rindex
drop cpi_change
*drop exchange_eur
*drop inflation

*drop gdp
*drop oil_price_loc
*drop cpi
*drop ipi
*drop ipi_g7
*drop ppi
*drop exchange_usd_loc
*drop oil_supply
*drop tot_energy
*drop oil_div_gdp
*drop oil_production_est
*drop oil_demand_est
*drop prod_demand
*drop tpes_div_gdp

*drop d_l_oil_price_loc


*drop timedummyfd
*drop timedummyhd
*drop test
}


********************************************************************************
********************************************************************************
*** Calculation NOPI ***
gen maxoil_lag4 = 0
gen dmaxoil_lag4 = 0
gen nopi = .
replace maxoil_lag4 = max(oil_price_loc_p[_n-1],oil_price_loc_p[_n-2],oil_price_loc_p[_n-3],oil_price_loc_p[_n-4])
replace dmaxoil_lag4 = 100*(log(oil_price_loc_p) - log(maxoil_lag4))
replace nopi = max(0,dmaxoil_lag4)
gen nopi_mod = nopi * energy_share_est

************************
*** Calculation SOPID ***

local start_time_b 1

drop if time<`start_time_b'

gen sopc = .
gen sopi = 0
gen sopd = 0
foreach n in `countries'{
arch d_l_oil_price_opec_real if location == "`n'", arima(4,0,0) tarch(1) garch(1)
*arch d_l_oil_price_opec_real if location == "`n'", ar(1/4) arch(1) garch(1)
*arch d_l_oil_price_opec_real if location == "`n'", arch(1) garch(1) 
predict res, resid
predict h, var
replace sopc=100*res/h
*replace sopc = res/(resid)^(1/2) if location == "`n'"
replace sopi = sopc if sopc>0 & location == "`n'"
replace sopd = sopc if sopc<0 & location == "`n'"
drop res
drop h
}

gen sopc_mod = sopc * energy_share_est
gen sopi_mod = sopi * energy_share_est
gen sopd_mod = sopd * energy_share_est


gen nopd = min(0,dmaxoil_lag4)

*
local start_time_b 5

drop if time<`start_time_b'
*******************

********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
**********************
**********************
**********************
**********************

matrix A = (1,0,0,0,0,0,0\0,1,0,0,0,0,0\.,0,1,0,0,0,0\.,0,.,1,0,0,0\.,0,.,.,1,0,0\.,0,.,.,.,1,0\.,0,.,.,.,.,1)
matrix B = (.,0,0,0,0,0,0\0,.,0,0,0,0,0\0,0,.,0,0,0,0\0,0,0,.,0,0,0\0,0,0,0,.,0,0\0,0,0,0,0,.,0\0,0,0,0,0,0,.)


*Three periods IRFs
*OIRF only
*w/o Moderator and right order and exogeneous variable


*Symmetric
foreach loc in `countries'{
*svar d_gdp d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<65, lags(1/4) aeq(A) beq(B)
*svar d_gdp d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<121 & time>61, lags(1/4) aeq(A) beq(B)
*svar d_gdp d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time>117, lags(1/4) aeq(A) beq(B)
svar d_gdp d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'", lags(1/4) aeq(A) beq(B)
}
/*

*Asymmetric Pos
foreach loc in `countries'{
svar d_gdp pos_d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'", lags(1/4) aeq(A) beq(B)
svar d_gdp pos_d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<65, lags(1/4) aeq(A) beq(B)
svar d_gdp pos_d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<121 & time>61, lags(1/4) aeq(A) beq(B)
svar d_gdp pos_d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time>117, lags(1/4) aeq(A) beq(B)
}

*Asymmetric Neg
foreach loc in `countries'{
svar d_gdp neg_d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'", lags(1/4) aeq(A) beq(B)
svar d_gdp neg_d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<65, lags(1/4) aeq(A) beq(B)
svar d_gdp neg_d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<121 & time>61, lags(1/4) aeq(A) beq(B)
svar d_gdp neg_d_l_oil_price_opec_real d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time>117, lags(1/4) aeq(A) beq(B)
}

*SOPI
foreach loc in `countries'{
svar d_gdp sopi d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'", lags(1/4) aeq(A) beq(B)
svar d_gdp sopi d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<65, lags(1/4) aeq(A) beq(B)
svar d_gdp sopi d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<121 & time>61, lags(1/4) aeq(A) beq(B)
svar d_gdp sopi d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time>117, lags(1/4) aeq(A) beq(B)
}

*SOPD
foreach loc in `countries'{
svar d_gdp sopd d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'", lags(1/4) aeq(A) beq(B)
svar d_gdp sopd d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<65, lags(1/4) aeq(A) beq(B)
svar d_gdp sopd d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<121 & time>61, lags(1/4) aeq(A) beq(B)
svar d_gdp sopd d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time>117, lags(1/4) aeq(A) beq(B)
}

*NOPI
foreach loc in `countries'{
svar d_gdp nopi d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'", lags(1/4) aeq(A) beq(B)
svar d_gdp nopi d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<65, lags(1/4) aeq(A) beq(B)
svar d_gdp nopi d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time<121 & time>61, lags(1/4) aeq(A) beq(B)
svar d_gdp nopi d_l_cpi d_interest d_unemployment d_l_ipi_g7 oil_div_gdp if location == "`loc'" & time>117, lags(1/4) aeq(A) beq(B)
}
