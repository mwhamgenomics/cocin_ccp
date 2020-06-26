﻿#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('CCPUKSARI-OneRandomRecordToChe_DATA_2020-06-26_1323.csv')
#Setting Labels

label(data$subjid)="Participant Identification Number (PIN) spe...e.g Y0401-0001."
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$tiers_faorres___1)="Please acknowledge that you have understood...entering data. (choice=TIER 0 (data...required.)"
label(data$tiers_faorres___2)="Please acknowledge that you have understood...entering data. (choice=TIER 1 (singl...required.)"
label(data$tiers_faorres___3)="Please acknowledge that you have understood...entering data. (choice=TIER 2 (multi...required.)"
label(data$tiers_consent_complete)="Complete?"
label(data$participant_identification_number_pin_complete)="Complete?"
label(data$covid19_new)="SELECT..."
label(data$dsstdat)="Date of Enrolment"
label(data$sitename)="Site name"
label(data$corona_ieorres)="Suspected or proven infection with pathogen...Health Interest"
label(data$coriona_ieorres2)="Proven or high likelihood of infection with...alth Interest  "
label(data$fever)="A history of self reported feverishness or...er of ≥ 38°C"
label(data$cough)="Cough "
label(data$dyspnoe)="Dyspnoea (shortness of breath) OR Tachypnoea*"
label(data$ari)="Clinical suspicion of ARI despite not meeting criteria above"
label(data$symptoms_epi_travel)="2.A history of travel to an area with docum...virus infection"
label(data$symptoms_epi_physical)="3.Close contact* with a confirmed or probab...was symptomatic"
label(data$symptoms_epi_healthfac)="4.Presence in a healthcare facility where n...ve been managed"
label(data$symptoms_epi_lab)="5. Presence in a laboratory handling sample...nterest present"
label(data$symptoms_epi_pathogen)="6.An otherwise unexplained respiratory illn...health interest"
label(data$symptoms_epi_animal)="7.Direct contact with animals in countries...ic transmission"
label(data$inclusion_criteria_complete)="Complete?"
label(data$sex)="Sex at Birth:"
label(data$agedatyn)="Is birth date known"
label(data$agedat)="Birth date (has approval for entry)"
label(data$calc_age)="Calculated Age (comparing Date of birth wit...uary 29 is used"
label(data$age_estimateyears)="Age/Estimated age"
label(data$age_estimateyearsu)="Age/Estimated age Unit"
label(data$postcode)="Postcode (has approval for entry)"
label(data$nhs_chi)="England & Wales NHS number, Scotland CHI nu...ed at this time"
label(data$ethnic___1)="Ethnic group (check all that apply) (choice=Arab)"
label(data$ethnic___2)="Ethnic group (check all that apply) (choice=Black)"
label(data$ethnic___3)="Ethnic group (check all that apply) (choice=East Asian)"
label(data$ethnic___4)="Ethnic group (check all that apply) (choice=South Asian)"
label(data$ethnic___5)="Ethnic group (check all that apply) (choice=West Asian)"
label(data$ethnic___6)="Ethnic group (check all that apply) (choice=Latin American)"
label(data$ethnic___7)="Ethnic group (check all that apply) (choice=White)"
label(data$ethnic___8)="Ethnic group (check all that apply) (choice=Aboriginal/First Nations)"
label(data$ethnic___9)="Ethnic group (check all that apply) (choice=Other)"
label(data$ethnic___10)="Ethnic group (check all that apply) (choice=N/A)"
label(data$other_ethnic)="If Other: Specify"
label(data$healthwork_erterm)="Employed as a healthcare worker?"
label(data$labwork_erterm)="Employed in a microbiology laboratory?"
label(data$pregyn_rptestcd)="Pregnant ?"
label(data$egestage_rptestcd)="If YES: Gestational weeks assessment:"
label(data$postpart_rptestcd)="Post Partum (within six weeks of delivery)"
label(data$pregout_rptestcd)="Pregnancy Outcome"
label(data$dlvrdtc_rptestcd)="Delivery date"
label(data$aplb_lbperf)="Baby tested for mothers ARI infection"
label(data$aplb_lborres)=" If YES"
label(data$aplb_lbmethod)="Method"
label(data$aplb_lbmethodoth)="If OTHER method; Specify"
label(data$apdm_age)="INFANT - Less than 1 year old?"
label(data$apvs_weight)="Birth weight"
label(data$apvs_weightu)="Birth weight unit"
label(data$apvs_weightnk)="Birth weight N/K"
label(data$apsc_gestout)="Gestational outcome"
label(data$estgest)="If < 37wk  confirm estimated gestation   "
label(data$apsc_brfedind)="Breastfed"
label(data$apsc_brfedindy)="If  YES"
label(data$apsc_brdisdat)="Discontinued breastfeeding at "
label(data$apsc_dvageind)="Appropriate development for age?"
label(data$apsc_vcageind)="Vaccinations appropriate for age/country?"
label(data$demographics_complete)="Complete?"
label(data$cestdat)="Onset date of first/earliest symptom"
label(data$hostdat)="Admission date at this facility"
label(data$hosttim)="Admission time at this facility"
label(data$readm_cov19)="Is the patient being readmitted with Covid-19?"
label(data$readminreas)="Please provide reason for readmission: "
label(data$readminreasnk)="Reason for readmission N/K"
label(data$surgefacil)="Is this a NIGHTINGALE or other SURGE FACILITY?"
label(data$hooccur)="Transfer from other facility?"
label(data$siteid_transfer)="If YES: Name of transfer facility:"
label(data$siteid_transfernk)="If YES: Name of transfer facility N/K"
label(data$hostdat_transfer)="If YES: Admission date at previous facility "
label(data$hostdat_transfernk)="If YES: Admission date at previous facility N/K"
label(data$subjidcat_transfer)="If YES - Study Site: Participant ID # at transfer facility"
label(data$subjid_transfer)="If DIFFERENT; Participant number Specify CP...e.g Y0401-0001."
label(data$travel_erterm)="Travel in the 14 days prior to first symptom onset?"
label(data$supper_trcntry)="If YES, state location: Country"
label(data$supper_trcity)="2.6.2 If YES, state location: City/Geographic Area:"
label(data$erendat)="If YES, return date:"
label(data$travel_erterm_2)="Travelled to another country in the 14 days...symptom onset?"
label(data$supper_trcntry_2)="If YES, state location: Country"
label(data$supper_trcity_2)="If YES, state location: City/Geographic Area:"
label(data$erendat_2)="If YES, return date:"
label(data$animal_eryn)="Contact with animals, raw meat or insect bi...symptom onset?"
label(data$animal_erterm)="If YES, specify the animal/insect"
label(data$animal_erdat)="If YES, specify the animal/insect date of exposure "
label(data$animal_eryn_2)="Contact with another animals, raw meat or i...symptom onset?"
label(data$animal_erterm_2)="If YES, specify the animal/insect"
label(data$animal_erdat_2)="If YES, specify the animal/insect date of exposure "
label(data$onset_and_admission_complete)="Complete?"
label(data$temp_vsyn)="Temperature on admission available?"
label(data$temp_vsorres)="Temperature"
label(data$temp_vsorresu)="Temperature Units"
label(data$hr_vsyn)="Heart rate on admission available?"
label(data$hr_vsorres)="Heart Rate"
label(data$rr_vsyn)="Respiratory rate on admission available?"
label(data$rr_vsorres)="Respiratory Rate"
label(data$sysbp_vsyn)="Systolic blood pressure on admission available? "
label(data$sysbp_vsorres)="Systolic blood pressure"
label(data$diabp_vsyn)="Diastolic blood pressure on admission available?"
label(data$admission_diabp_vsorres)="Diastolic blood pressure"
label(data$dehydration_vsorres)="Severe dehydration: "
label(data$stercap_vsyn)="Sternal capillary refill time  on admission available?"
label(data$stercap_vsorres)="Sternal capillary refill time >2 seconds ?"
label(data$oxy_vsyn)="Oxygen saturation on admission available: "
label(data$oxy_vsorres)="Oxygen saturation"
label(data$oxy_vsorresu)="Oxygen saturation on:"
label(data$fever_ceoccur_v2)="History of fever"
label(data$cough_ceoccur_v2)="Cough"
label(data$coughsput_ceoccur_v2)="Cough: with sputum production"
label(data$coughhb_ceoccur_v2)="Cough: bloody sputum / haemoptysis"
label(data$sorethroat_ceoccur_v2)="Sore throat"
label(data$runnynose_ceoccur_v2)="Runny nose (Rhinorrhoea)"
label(data$earpain_ceoccur_v2)="Ear pain"
label(data$wheeze_ceoccur_v2)="Wheezing"
label(data$chestpain_ceoccur_v2)="Chest pain"
label(data$myalgia_ceoccur_v2)="Muscle aches (Myalgia)"
label(data$jointpain_ceoccur_v2)="Joint pain (Arthralgia)"
label(data$fatigue_ceoccur_v2)="Fatigue / Malaise"
label(data$shortbreath_ceoccur_v2)="Shortness of breath (Dyspnea)"
label(data$ageusia_ceoccur_v2)="Disturbance or loss of taste (Ageusia )"
label(data$lowerchest_ceoccur_v2)="Lower chest wall indrawing"
label(data$headache_ceoccur_v2)="Headache"
label(data$confusion_ceoccur_v2)="Altered consciousness / confusion"
label(data$seizures_cecoccur_v2)="Seizures"
label(data$abdopain_ceoccur_v2)="Abdominal pain"
label(data$vomit_ceoccur_v2)="Vomiting / Nausea"
label(data$diarrhoea_ceoccur_v2)="Diarrhoea"
label(data$conjunct_ceoccur_v2)="Conjunctivitis"
label(data$rash_ceoccur_v2)="Skin rash"
label(data$skinulcers_ceoccur_v2)="Skin ulcers"
label(data$lymp_ceoccur_v2)="Lymphadenopathy"
label(data$bleed_ceoccur_v2)="Bleeding (Haemorrhage)"
label(data$bleed_ceterm_v2)="If Bleeding (others)"
label(data$anosmia_ceoccur_v2)="Disturbance or loss of smell (Anosmia)"
label(data$bleed_cetermy_v2)="If Yes to Bleeding, specify site(s)"
label(data$admission_signs_and_symptoms_complete)="Complete?"
label(data$chrincard)="Chronic cardiac disease, including congenit...t hypertension)"
label(data$hypertension_mhyn)="Hypertension (physician diagnosed)"
label(data$chronicpul_mhyn)="Chronic pulmonary disease (not asthma)"
label(data$asthma_mhyn)="Asthma (physician diagnosed) "
label(data$renal_mhyn)="Chronic kidney disease"
label(data$modliv)="Moderate or severe liver disease"
label(data$mildliver)="Mild Liver disease "
label(data$chronicneu_mhyn)="Chronic neurological disorder "
label(data$malignantneo_mhyn)="Malignant neoplasm "
label(data$chronichaemo_mhyn)="Chronic hematologic disease "
label(data$aidshiv_mhyn)="AIDS/HIV "
label(data$obesity_mhyn)="Obesity (as defined by clinical staff)"
label(data$diabetes_type_mhyn)="Diabetes and Type"
label(data$diabetescom_mhyn)="Diabetes with complications"
label(data$diabetes_mhyn)="Diabetes without complications "
label(data$rheumatologic_mhyn)="Rheumatologic disorder "
label(data$dementia_mhyn)="Dementia"
label(data$malnutrition_mhyn)="Malnutrition"
label(data$smoking_mhyn)="Smoking"
label(data$other_mhyn)="Other relevant risk factors?"
label(data$otherrisktext)="Other  relevant risk factor; Specify"
label(data$vulnerable_transplant)="Solid organ transplant recipients:   "
label(data$vulnerable_cancers)="People with specific cancers: • people wi...pression drugs "
label(data$vulnerable_copd)="People with severe respiratory conditions i...oxygen (COPD):"
label(data$vulnerable_scid)="People with rare diseases and inborn errors...ickle cell):   "
label(data$vulnerable_immuno)="People on immunosuppression therapies suffi...of infection: "
label(data$vulnerable_preg)="Women who are pregnant with significant hea...al or acquired:"
label(data$comorbidities_complete)="Complete?"
label(data$immno_cmtrt)="Treated with immunosuppressants, including..."
label(data$infect_cmtrt)="Treated with anti-infectives  for illness e...r to admission?"
label(data$infect)="If yes,  please specify anti infectives"
label(data$chronic_ace_cmoccur)="Angiotensin converting enzyme inhibitors (ACEI)?"
label(data$chronic_arb_cmoccur)="Angiotensin II receptor blockers (ARBs)?"
label(data$chronic_nsaid_cmoccur)="Non-steroidal anti-inflammatory (NSAID)?"
label(data$clinical_frailty)="Clinical frailty score"
label(data$preadmission_treatment_complete)="Complete?"
label(data$cmtrt)="Medication name (generic name preferred)  "
label(data$cmdose)="Dose"
label(data$cmdose_unit)="Dose unit"
label(data$cmdose_unitoth)="Specify other Dose unit"
label(data$cmdosfrq)="Dose Frequency"
label(data$cmdosfrqoth)="Specify other dose frequency"
label(data$cmroute)="Route"
label(data$cmrouteoth)="Specify other route"
label(data$preadmission_medication_complete)="Complete?"
label(data$daily_dsstdat)="DATE OF ASSESSMENT "
label(data$daily_hoterm)="Current admission to ICU/ITU/IMC/HDU"
label(data$daily_temp_vsorres)="Highest Temperature"
label(data$daily_temp_vsorresu)="Highest Temperature Unit"
label(data$daily_temp_vsorresnk)="Highest Temperature N/K"
label(data$daily_fi02_lbyn)="FiO2  available / Any supplemental oxygen?"
label(data$daily_fio2_lborres)="FiO2 (0.21-1.0)"
label(data$daily_fio2b_lborres)="FiO2 %"
label(data$daily_fio2c_lborres)="FiO2 L/min (highest)"
label(data$daily_sa02_lbyn)="SaO2 (Oxygen saturation in newer CRF) available?"
label(data$daily_sao2_lborres)="SaO2 (SpO2 on the newer CRF)"
label(data$daily_pao2_lbyn)="PaO2 available?"
label(data$daily_pao2_lborres)="PaO2:"
label(data$daily_pao2_lborresu)="PaO2 unit:"
label(data$daily_pao2_lbspec)="PaO2 sample type"
label(data$daily_pco2_lbyn)="PCO2 available?"
label(data$daily_pco2_lborres)="PCO2 "
label(data$daily_pco2_lborresu)="PCO2 Unit"
label(data$daily_ph_lbyn)="pH available"
label(data$daily_ph_lborres)="pH"
label(data$daily_hco3_lbyn)="HCO3-  available"
label(data$daily_hco3_lborres)="HCO3- "
label(data$daily_baseex_lbyn)="Base excess available"
label(data$daily_baseex_lborres)="Base excess"
label(data$avpu_vsorres)="AVPU"
label(data$daily_gcs_lbyn)="Glasgow Coma Score available?"
label(data$daily_gcs_vsorres)="Glasgow Coma Score:"
label(data$systolic_vsyn)="Systolic Blood Pressure available?"
label(data$systolic_vsorres)="Systolic Pressure"
label(data$diastolic_vsyn)="Diastolic Blood Pressure available?"
label(data$diastolic_vsorres)="Diastolic Pressure"
label(data$daily_meanart_lbyn)="Mean Arterial Pressure available?"
label(data$daily_meanart_vsorres)="Mean Arterial Pressure:"
label(data$daily_urine_lbyn)="Urine flow rate available?"
label(data$daily_urine_lborres)="Urine flow rate:"
label(data$daily_noninvasive_prtrt)="Non-invasive ventilation (e.g. NIV (if shor..., BIPAP, CPAP)?"
label(data$daily_invasive_prtrt)="Invasive ventilation?"
label(data$daily_nasaloxy_cmtrt)="High-flow nasal canula oxygen therapy? (>2L...if shorter CRF)"
label(data$daily_ecmo_prtrt)="ECLS/ECMO"
label(data$daily_rrt_cmtrt)="Dialysis / Hemofiltration?"
label(data$daily_inotrope_cmyn)="Any vasopressor / inotropic support?"
label(data$daily_dopless5_cmtrt)="Dopamine <  5 µg/min OR Dobutamine OR Milr...R Levosimendan:"
label(data$daily_dop5to15_cmtrt)="Dopamine 5-15 µg/min OR Epinephrine/Norepi...Phenylephrine:"
label(data$daily_dopgr15_cmtrt)="Dopamine > 15 µg/min OR Epinephrine/Norepi...0.1 µg/kg/min:"
label(data$daily_neuro_cmtrt)="Neuromuscular blocking agents?"
label(data$daily_nitritc_cmtrt)="Inhaled Nitric Oxide ?"
label(data$daily_prone_cmtrt)="Prone Positioning"
label(data$daily_trach_prperf)="Tracheostomy inserted?"
label(data$daily_prperf)="Other intervention or procedure?"
label(data$daily_other_prtrt)="If YES other intervention, Specify,"
label(data$daily_lbperf)="Results available for sample taken on the d...ction 1 above ?"
label(data$daily_lbdat)="Date of  assessment"
label(data$daily_hb_lbyn)="Haemoglobin available"
label(data$daily_hbop_lborres)="Haemoglobin < or > (optional)"
label(data$daily_hb_lborres)="Haemoglobin"
label(data$daily_hb_lborresu)="Haemoglobin Unit"
label(data$daily_wbc_lbyn)="WBC count available"
label(data$daily_wbcop_lborres)="WBC count < or > (optional)"
label(data$daily_wbc_lborres)="WBC count"
label(data$daily_wbc_lborresu)="WBC Unit"
label(data$daily_lymp_lbyn)="Lymphocyte count available"
label(data$daily_lympop_lbyn)="Lymphocyte count < or > (optional)"
label(data$daily_lymp_lborres)="Lymphocyte count"
label(data$daily_lymp_lborresu)="Lymphocyte count Unit"
label(data$daily_neutro_lbyn)="Neutrophil count available"
label(data$daily_neutroop_lbyn)="Neutrophil count < or > (optional)"
label(data$daily_neutro_lborres)="Neutrophil count"
label(data$daily_neutro_lborresu)="Neutrophil count Unit"
label(data$daily_haematocrit_lbyn)="Haematocrit available"
label(data$daily_haematocrit_lborres)="Haematocrit"
label(data$daily_plt_lbyn)="Platelets available"
label(data$daily_pltop_lborres)="Platelet count < or > (optional)"
label(data$daily_plt_lborres)="Platelet Count"
label(data$daily_plt_lborresu)="Platelets Unit"
label(data$daily_aptt_lbyn)="APTT/APTR available"
label(data$daily_apttop_lborres)="APTT/APTR < or > (optional)"
label(data$daily_aptt_lborres)="APTT/APTR"
label(data$daily_pt_inr_lbyn)="PT or INR available"
label(data$daily_ptop_lborres)="PT < or > (optional)"
label(data$daily_pt_lborres)="PT "
label(data$daily_inrop_lborres)="INR < or > (optional)"
label(data$daily_inr_lborres)="INR"
label(data$daily_alt_lbyn)="ALT / SGPT available"
label(data$daily_altop_lbyn)="ALT / SGPT < or > (optional)"
label(data$daily_alt_lborres)="ALT / SGPT"
label(data$daily_bil_lbyn)="Total Bilirubin available"
label(data$daily_bilop_lborres)="Total Bilirubin < or > (optional)"
label(data$daily_bil_lborres)="Total Bilirubin"
label(data$daily_bil_lborresu)="Total Bilirubin Unit"
label(data$daily_ast_lbyn)="AST/SGOT available"
label(data$daily_astop_lborres)="AST/SGOT < or > (optional)"
label(data$daily_ast_lborres)="AST/SGOT"
label(data$daily_glucose_lbyn)="Glucose available"
label(data$daily_glucoseop_lborres)="Glucose < or > (optional)"
label(data$daily_glucose_lborres)="Glucose"
label(data$daily_glucose_lborresu)="Glucose Unit "
label(data$daily_bun_lbyn)="Blood Urea Nitrogen (urea) available"
label(data$daily_bunop_lborres)="Blood Urea Nitrogen (urea) < or > (optional)"
label(data$daily_bun_lborres)="Blood Urea Nitrogen (urea)"
label(data$daily_bun_lborresu)="Blood Urea Nitrogen (urea) Unit"
label(data$daily_lactate_lbyn)="Lactate available"
label(data$daily_lactateop_lbyn)="Lactate < or > (optional)"
label(data$daily_lactate_lborres)="Lactate"
label(data$daily_lactate_lborresu)="Lactate Unit"
label(data$daily_ldh_lbyn)="Lactate dehydrogenase (LDH) available?"
label(data$daily_ldhop_lborres)="LDH < or > (optional)"
label(data$daily_ldh_lborres)="Lactate dehydrogenase (LDH) "
label(data$daily_cpk_lby)="Creatine Phosphokinase (CPK) available?"
label(data$daily_cpkop_lbyn_2)="Creatine Phosphokinase (CPK)  < or > (optional)"
label(data$daily_cpk_lbyn_2)="Creatine Phosphokinase (CPK) "
label(data$daily_creat_lbyn)="Creatinine available"
label(data$daily_creatop_lborres)="Creatinine  < or > (optional)"
label(data$daily_creat_lborres)="Creatinine"
label(data$daily_creat_lborresu)="Creatinine Unit"
label(data$daily_sodium_lbyn)="Sodium  available "
label(data$daily_sodiumop_lborres)="Sodium < or > (optional)"
label(data$daily_sodium_lborres)="Sodium"
label(data$daily_sodium_lborresu)="Sodium Unit"
label(data$daily_potassium_lbyn)="Potassium available "
label(data$daily_potassiumop_lborres)="Potassium < or > (optional)"
label(data$daily_potassium_lborres)="Potassium"
label(data$daily_potassium_lborresu)="Potassium Unit"
label(data$daily_procal_lbyn)="Procalcitonin available"
label(data$daily_procalop_lborres)="Procalcitonin < or > (optional)"
label(data$daily_procal_lborres)="Procalcitonin"
label(data$daily_crp_lbyn)="C-reactive protein (CRP) available"
label(data$daily_crpop_lborres)="C-reactive protein (CRP) < or > (optional)"
label(data$daily_crp_lborres)="C-reactive protein (CRP) For shorter CRF a...to be completed"
label(data$daily_crp_lborresu)="C-reactive protein (CRP) Unit"
label(data$daily_hba1cop_lborres)="Most recent HbA1c < or > (optional)"
label(data$daily_hba1c_lborres)="Most recent HbA1c"
label(data$daily_hba1c_lborresnk)="Most recent HbA1c N/K"
label(data$xray_prperf)="X-Ray/CT performed (this is chest X-ray if shorter CRF)?"
label(data$infiltrates_faorres)="If yes, were infiltrates present?"
label(data$daily_samples_kitno)="Where biological samples have been taken fo...IT number here."
label(data$daily_form_complete)="Complete?"
label(data$arm_participant)="Arm participant is in"
label(data$ni_site)="Northern Ireland? If entering data for Nor...PLEASE SELECT:"
label(data$inflammatory_mss)="Adult or child who meets Case Definition fo...system Syndrome"
label(data$asymptomatic)="Asymptomatic"
label(data$no_symptoms)="None"
label(data$no_medication)="No medication currently or within the last 14 days"
label(data$daily_hco3_lborresu)="HCO3- Unit"
label(data$remdesivir)="Is patient receiving Remdesivir through EAM...criteria?     "
label(data$remdesivir_day)="Which day of Remdesivir therapy is this: (number)         "
label(data$remdesivir_last_dose)="Is this the intended last dose?"
label(data$daily_haematocrit_lborresu)="Haematocrit Unit"
label(data$daily_esr_lbyn)="ESR available"
label(data$daily_esrop_lbyn)="ESR < or > (optional)"
label(data$daily_esr_lborres)="ESR"
label(data$daily_ferr_lbyn)="Ferritin available"
label(data$daily_ferrop_lbyn)="Ferritin < or > (optional)"
label(data$daily_ferr_lborres)="Ferritin"
label(data$daily_ferr_lborresu)="Ferritin Unit"
label(data$daily_egfr_lbyn)="eGFR available"
label(data$daily_egfrop_lborres)="eGFR < or > (optional)"
label(data$daily_egfr_lborres)="eGFR"
label(data$daily_egfr_equation___1)="eGFR equation/formula (choice=CKD-EPI)"
label(data$daily_egfr_equation___2)="eGFR equation/formula (choice=MDRD)"
label(data$daily_egfr_equation___3)="eGFR equation/formula (choice=CG)"
label(data$daily_hba1c_lborresu)="Most recent HbA1c Unit"
label(data$mbperf)="Was pathogen testing done during this illness episode?"
label(data$influ_mbyn)="Influenza: "
label(data$influ_mbcat)="If Yes to Influenza"
label(data$influothera_mborres)="Other influenza A, specify:"
label(data$influother_mborres)="Other influenza, specify:"
label(data$corna_mbcat)="Coronavirus: "
label(data$corna_mbcaty)="If Yes to Coronavirus:"
label(data$coronaother_mborres)="IF Other coronavirus; Specify:"
label(data$rsv_mbcat)="RSV"
label(data$adeno_mbcat)="Adenovirus"
label(data$bact_mborres)="Bacteria"
label(data$bacteria_mborres)="If yes, specify bacteria (list all below)"
label(data$other_mbyn)="Other Infectious Respiratory Diagnosis: "
label(data$other_mborres)=" If YES: Other infectious respiratory diagnosis, specify:"
label(data$clinicalpneu_mborres)="Clinical pneumonia: "
label(data$infectuk_mborres)="IF NONE OF THE ABOVE: Suspected Non-infective:"
label(data$infectious_respiratory_disease_pathogen_diagnosis_complete)="Complete?"
label(data$daily_mbperf)="Pathogen testing done"
label(data$llimsno_bnum)="LIMS number"
label(data$mbdat)="Collection Date"
label(data$mbspec)="Bio specimen type"
label(data$other_mbspec)="If  OTHER; Specify"
label(data$mbmethod)="Laboratory Test Method"
label(data$other_mbmethod)="If Other Laboratory test method; Specify"
label(data$mborres)="Result"
label(data$mbtestcd)="Pathogen Tested / Detected"
label(data$infectious_respiratory_disease_pathogen_testing_complete)="Complete?"
label(data$antiviral_cmyn)="Antiviral agent?"
label(data$antiviral_cmtrt___1)="IF YES to antiviral agent (choice=Ribavirin)"
label(data$antiviral_cmtrt___2)="IF YES to antiviral agent (choice=Lopinavir/Ritonvir)"
label(data$antiviral_cmtrt___3)="IF YES to antiviral agent (choice=Interferon alpha)"
label(data$antiviral_cmtrt___4)="IF YES to antiviral agent (choice=Interferon beta)"
label(data$antiviral_cmtrt___7)="IF YES to antiviral agent (choice=Chloroquine /...hloroquine)"
label(data$antiviral_cmtrt___8)="IF YES to antiviral agent (choice=Remdesivir)"
label(data$antiviral_cmtrt___9)="IF YES to antiviral agent (choice=IL6 inhibitor)"
label(data$antiviral_cmtrt___5)="IF YES to antiviral agent (choice=Neuraminidase inhibitors)"
label(data$antiviral_cmtrt___6)="IF YES to antiviral agent (choice=Other)"
label(data$remdes_cmtrt_first)="If  YES to Remdesivir: first dose"
label(data$remdes_cmtrt_last)="If  YES to Remdesivir: last dose"
label(data$il6_cmtrt)="If  YES to IL6 inhibitor: which"
label(data$il6_cmtrt_other)="Specify other IL6 inhibitor:"
label(data$il6_cmtrt_first)="If  YES to  IL6 inhibitor: first dose"
label(data$il6_cmtrt_last)="If  YES to IL6 inhibitor: last dose"
label(data$neuro_cmtrt)="If  Neuraminidase inhibitors; Specify which"
label(data$othantiviral_cmtrt)="If  Other antiviral agent; Specify type"
label(data$othantiviral2_cmyn)="Would you like to add another antiviral?"
label(data$othhantiviral2_cmtrt)="If  Other antiviral agent; Specify type"
label(data$othantiviral3_cmyn)="Would you like to add another antiviral?"
label(data$othantiviral3_cmtrt)="If  Other antiviral agent; Specify type"
label(data$othantiviral4_cmyn)="Would you like to add another antiviral?"
label(data$othantiviral4_cmtrt)="If  Other antiviral agent; Specify type"
label(data$othantiviral5_cmyn)="Would you like to add another antiviral?"
label(data$othantiviral5_cmtrt)="If  Other antiviral agent; Specify type"
label(data$antibiotic_cmyn)="Antibiotic agent?"
label(data$antibiotic_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic2_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic2_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic3_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic3_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic4_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic4_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic5_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic5_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic6_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic6_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic7_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic7_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$corticost_cmyn)="Corticosteroid agent?"
label(data$corticost_cmroute)="If YES to Corticosteroid, specify Route"
label(data$corticost_cmtrt)="If YES to Corticosteroid, specify type"
label(data$corticost_cmdose)="If YES to Corticosteroid, specify dose"
label(data$corticost2_cmyn)="Would you like to add another Corticosteroid agent?"
label(data$corticost2_cmroute)="If YES to Corticosteroid, specify Route"
label(data$corticost2_cmtrt)="If YES to Corticosteroid, specify type"
label(data$corticost2_cmdose)="If YES to Corticosteroid, specify dose"
label(data$corticost3_cmyn)="Would you like to add another Corticosteroid agent?"
label(data$corticost3_cmroute)="If YES to Corticosteroid, specify Route"
label(data$corticost3_cmtrt)="If YES to Corticosteroid, specify type"
label(data$corticost3_cmdose)="If YES to Corticosteroid, specify dose"
label(data$dexamethasone)="Dexamethasone 6mg once per day?"
label(data$dexamethasone_route)="If Yes to Dexamethasone, specify Route:"
label(data$antifung_cmyn)="Antifungal agent?"
label(data$antifungal_cmtrt)="IF YES to antifungal agent; Specify which"
label(data$offlabel_cmyn)="Off-label / Compassionate Use medications?  "
label(data$offlabel_cmtrt)="IF YES to Off-label / Compassionate Use med...; Specify which"
label(data$interleukin_cmyn)="Interleukin inhibitors    "
label(data$interleukin_cmtrt)="IF YES to Interleukin inhibitors; Specify which   "
label(data$conv_plasma_cmyn)="Convalescent plasma     "
label(data$icu_hoterm)="ICU or High Dependency admission"
label(data$hodur)="If YES, total duration (days)"
label(data$icu_hostdat)="Date of ICU/HDU admission:"
label(data$icu_hoendat)="Date of ICU/HDU discharge:"
label(data$oxygen_cmoccur)="Oxygen therapy"
label(data$oxygenhf_cmoccur)="High Flow Oxygen therapy?  (>2l/min )"
label(data$noninvasive_proccur)="Non-invasive ventilation ? (e.g. BIPAP, CPAP)"
label(data$invasive_proccur)="Invasive ventilation (Any intubation) ?"
label(data$pronevent_prtrt)="Prone ventilation"
label(data$inhalednit_cmtrt)="Inhaled Nitric Oxide"
label(data$tracheo_prtrt)="Tracheostomy inserted"
label(data$extracorp_prtrt)="Extracorporeal (ECMO) support"
label(data$rrt_prtrt)="Renal replacement therapy (RRT) or dialysis"
label(data$inotrop_cmtrt)="Inotropes / vasopressors"
label(data$invasive_prdur)="If yes to Invasive ventilation; confirm duration "
label(data$excorp_prdur)="If YES to Extracorporeal (ECMO) support; confirm duration"
label(data$inotrope_cmdur)="If YES to Inotropes/vasopressors; confirm duration"
label(data$other_cmyn)="OTHER intervention or procedure"
label(data$other_cm)="IF  YES OTHER intervention or procedure; Specify"
label(data$bloodgroup)="Blood Group (please check past as well as c...medical record)"
label(data$treatment_complete)="Complete?"
label(data$vrialpneu_ceoccur)="Viral Pneumonia"
label(data$bactpneu_ceoccur)="Bacterial pneumonia"
label(data$ards_ceoccur)="Acute Respiratory Syndrome"
label(data$cryptogenic_ceterm)="Cryptogenic organizing pneumonia (COP)"
label(data$pneumothorax_ceterm)="Pneumothorax"
label(data$pleuraleff_ceterm)="Pleural effusion"
label(data$bronchio_ceterm)="Bronchiolitis"
label(data$meningitis_ceterm)="Meningitis / Encephalitis"
label(data$seizure_ceterm)="Seizure"
label(data$stroke_ceterm)="Stroke / Cerebrovascular accident"
label(data$neuro_comp)="Other neurological complication"
label(data$heartfailure_ceterm)="Congestive heart failure"
label(data$endocarditis_aeterm)="Endocarditis / Myocarditis Pericarditis (fo...ocarditis only)"
label(data$myocarditis_ceterm)="Myocarditis / Pericarditis"
label(data$cardiomyopathy_ceterm)="Cardiomyopathy"
label(data$arrhythmia_ceterm)="Cardiac arrhythmia"
label(data$ischaemia_ceterm)="Cardiac ischemia"
label(data$cardiacarrest_ceterm)="Cardiac arrest"
label(data$bacteraemia_ceterm)="Bacteraemia"
label(data$coagulo_ceterm)="Coagulation disorder / Disseminated intrava...lar coagulation"
label(data$aneamia_ceterm)="Anaemia"
label(data$rhabdomyolsis_ceterm)="Rhabdomyolysis / Myositis"
label(data$renalinjury_ceterm)="Acute renal injury / Acute renal failure"
label(data$gastro_ceterm)="Gastrointestinal hemorrhage"
label(data$pancreat_ceterm)="Pancreatitis"
label(data$liverdysfunction_ceterm)="Liver dysfunction"
label(data$hyperglycemia_aeterm)="Hyperglycaemia"
label(data$hypoglycemia_ceterm)="Hypoglycaemia"
label(data$other_ceoccur)="Other"
label(data$other_ceterm)="If  Other; Specify"
label(data$complications_complete)="Complete?"
label(data$recruitment)="Is/Has the participant being recruited to a...and hospital)?"
label(data$study_1_name)="If YES, specify name of study:   "
label(data$study_1_id)="Study Participant ID:   "
label(data$study_2)="Add another study?"
label(data$study_2_name)="If YES, specify name of study: "
label(data$study_2_id)="Study Participant ID: "
label(data$study_3)="Add another study? "
label(data$study_3_name)="If YES, specify name of study: "
label(data$study_3_id)="Study Participant ID: "
label(data$study_participation_complete)="Complete?"
label(data$dsterm)="Outcome:"
label(data$dshosp)="If hospitalised:"
label(data$dsstdtcyn)="Is the Outcome date known"
label(data$dsstdtc)="Outcome date"
label(data$suppds_qval)="If Discharged alive: Ability to self-care a...before illness"
label(data$oxygen_proccur)="Oxygen therapy"
label(data$renal_proccur)="Dialysis / renal treatment?"
label(data$other_cmoccur)="Other intervention or procedure?"
label(data$other_cmtrt)="If YES: Specify (multiple permitted)"
label(data$siteid)="If Transferred: Facility name"
label(data$siteidnk)="If Transferred: Facility name N/K"
label(data$siteyn)="If Transferred: Is the transfer facility a study site?"
label(data$subjidcat)="If a Study Site: Participant number at new facility"
label(data$transfer_subjid)="If Different, Participant number at the new....g Y0401-0001)."
label(data$outcome_complete)="Complete?"
label(data$core_addinfo)="Additional Information"
label(data$core_additional_information_complete)="Complete?"
label(data$withddat)="Date of withdrawal:"
label(data$withdtype)="Type of withdrawal:"
label(data$withdreas)="Reason for withdrawal:"
label(data$withdrawal_form_complete)="Complete?"
label(data$consent_given)="Any mode of Consent or Assent Given : "
label(data$consent_daterec)="Date received:"
label(data$consent_mode___1)="Mode of consent (check all that apply):  (choice=Adult)"
label(data$consent_mode___2)="Mode of consent (check all that apply):  (choice=Adult Extra C...t Sampling)"
label(data$consent_mode___3)="Mode of consent (check all that apply):  (choice=Adult BioAID)"
label(data$consent_mode___4)="Mode of consent (check all that apply):  (choice=Consultee)"
label(data$consent_mode___5)="Mode of consent (check all that apply):  (choice=Witnessed)"
label(data$consent_mode___6)="Mode of consent (check all that apply):  (choice=Telephone)"
label(data$consent_mode___7)="Mode of consent (check all that apply):  (choice=Next of Kin (...land only))"
label(data$consent_mode___8)="Mode of consent (check all that apply):  (choice=Adult Regaine...land only))"
label(data$consent_mode___9)="Mode of consent (check all that apply):  (choice=Young Person 12-18y)"
label(data$consent_mode___10)="Mode of consent (check all that apply):  (choice=Child under 12y)"
label(data$consent_mode___11)="Mode of consent (check all that apply):  (choice=Parent/Guardian)"
label(data$consent_optcondit___1)="Agreement to optional conditions of consent...l that apply):  (choice=Other unrelated use)"
label(data$consent_optcondit___2)="Agreement to optional conditions of consent...l that apply):  (choice=Manufacture a...rcial lack)"
label(data$consent_optcondit___3)="Agreement to optional conditions of consent...l that apply):  (choice=DNA RNA sequence sharing)"
label(data$consent_optcondit___4)="Agreement to optional conditions of consent...l that apply):  (choice=Future contac...sage (SMS))"
label(data$consent_phone)="If yes to future contact by mobile phone, e...phone number: "
label(data$consent_ctu_dms_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("day_1_hospital_adm_arm_1","day_3_arm_1","day_6_arm_1","day_9_arm_1","additional_days_arm_1","dischargedeath_arm_1","day_1_hospitalicu_arm_2","day_3_arm_2","day_6_arm_2","day_9_arm_2","additional_days_arm_2","dischargedeath_arm_2","day_1_arm_3","day_2_arm_3","day_3_arm_3","day_4_arm_3","day_5_arm_3","day_6_arm_3","day_7_arm_3","day_8_arm_3","day_9_arm_3","day_10_arm_3","day_11_arm_3","day_12_arm_3","day_13_arm_3","day_14_arm_3","additional_days_arm_3","dischargedeath_arm_3"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("preadmission_medication","infectious_respiratory_disease_pathogen_testing","daily_form"))
data$tiers_faorres___1.factor = factor(data$tiers_faorres___1,levels=c("0","1"))
data$tiers_faorres___2.factor = factor(data$tiers_faorres___2,levels=c("0","1"))
data$tiers_faorres___3.factor = factor(data$tiers_faorres___3,levels=c("0","1"))
data$tiers_consent_complete.factor = factor(data$tiers_consent_complete,levels=c("0","1","2"))
data$participant_identification_number_pin_complete.factor = factor(data$participant_identification_number_pin_complete,levels=c("0","1","2"))
data$covid19_new.factor = factor(data$covid19_new,levels=c("1"))
data$corona_ieorres.factor = factor(data$corona_ieorres,levels=c("1","0"))
data$coriona_ieorres2.factor = factor(data$coriona_ieorres2,levels=c("1","0"))
data$fever.factor = factor(data$fever,levels=c("1","0"))
data$cough.factor = factor(data$cough,levels=c("1","0"))
data$dyspnoe.factor = factor(data$dyspnoe,levels=c("1","0"))
data$ari.factor = factor(data$ari,levels=c("1","0"))
data$symptoms_epi_travel.factor = factor(data$symptoms_epi_travel,levels=c("1","2","3"))
data$symptoms_epi_physical.factor = factor(data$symptoms_epi_physical,levels=c("1","2","3"))
data$symptoms_epi_healthfac.factor = factor(data$symptoms_epi_healthfac,levels=c("1","2","3"))
data$symptoms_epi_lab.factor = factor(data$symptoms_epi_lab,levels=c("1","2","3"))
data$symptoms_epi_pathogen.factor = factor(data$symptoms_epi_pathogen,levels=c("1","2","3"))
data$symptoms_epi_animal.factor = factor(data$symptoms_epi_animal,levels=c("1","2","3"))
data$inclusion_criteria_complete.factor = factor(data$inclusion_criteria_complete,levels=c("0","1","2"))
data$sex.factor = factor(data$sex,levels=c("1","2","3"))
data$agedatyn.factor = factor(data$agedatyn,levels=c("1","0"))
data$age_estimateyearsu.factor = factor(data$age_estimateyearsu,levels=c("1","2"))
data$ethnic___1.factor = factor(data$ethnic___1,levels=c("0","1"))
data$ethnic___2.factor = factor(data$ethnic___2,levels=c("0","1"))
data$ethnic___3.factor = factor(data$ethnic___3,levels=c("0","1"))
data$ethnic___4.factor = factor(data$ethnic___4,levels=c("0","1"))
data$ethnic___5.factor = factor(data$ethnic___5,levels=c("0","1"))
data$ethnic___6.factor = factor(data$ethnic___6,levels=c("0","1"))
data$ethnic___7.factor = factor(data$ethnic___7,levels=c("0","1"))
data$ethnic___8.factor = factor(data$ethnic___8,levels=c("0","1"))
data$ethnic___9.factor = factor(data$ethnic___9,levels=c("0","1"))
data$ethnic___10.factor = factor(data$ethnic___10,levels=c("0","1"))
data$healthwork_erterm.factor = factor(data$healthwork_erterm,levels=c("1","2","3"))
data$labwork_erterm.factor = factor(data$labwork_erterm,levels=c("1","2","3"))
data$pregyn_rptestcd.factor = factor(data$pregyn_rptestcd,levels=c("1","0","998","999"))
data$postpart_rptestcd.factor = factor(data$postpart_rptestcd,levels=c("1","0","3"))
data$pregout_rptestcd.factor = factor(data$pregout_rptestcd,levels=c("1","2"))
data$aplb_lbperf.factor = factor(data$aplb_lbperf,levels=c("1","2","3"))
data$aplb_lborres.factor = factor(data$aplb_lborres,levels=c("1","2"))
data$aplb_lbmethod.factor = factor(data$aplb_lbmethod,levels=c("1","2"))
data$apdm_age.factor = factor(data$apdm_age,levels=c("1","0"))
data$apvs_weightu.factor = factor(data$apvs_weightu,levels=c("1","2"))
data$apvs_weightnk.factor = factor(data$apvs_weightnk,levels=c("1"))
data$apsc_gestout.factor = factor(data$apsc_gestout,levels=c("1","2","3"))
data$apsc_brfedind.factor = factor(data$apsc_brfedind,levels=c("1","2","3"))
data$apsc_brfedindy.factor = factor(data$apsc_brfedindy,levels=c("1","2","3"))
data$apsc_dvageind.factor = factor(data$apsc_dvageind,levels=c("1","2","3"))
data$apsc_vcageind.factor = factor(data$apsc_vcageind,levels=c("1","2","3","4"))
data$demographics_complete.factor = factor(data$demographics_complete,levels=c("0","1","2"))
data$readm_cov19.factor = factor(data$readm_cov19,levels=c("1","0","3"))
data$readminreasnk.factor = factor(data$readminreasnk,levels=c("1"))
data$surgefacil.factor = factor(data$surgefacil,levels=c("1","0","3"))
data$hooccur.factor = factor(data$hooccur,levels=c("1","2","3","4"))
data$siteid_transfernk.factor = factor(data$siteid_transfernk,levels=c("1"))
data$hostdat_transfernk.factor = factor(data$hostdat_transfernk,levels=c("1"))
data$subjidcat_transfer.factor = factor(data$subjidcat_transfer,levels=c("1","2","3"))
data$travel_erterm.factor = factor(data$travel_erterm,levels=c("1","2","3"))
data$supper_trcntry.factor = factor(data$supper_trcntry,levels=c("4","5","6","7","8","9","10","11","12","13","14","15","1","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","2","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","3","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","202","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","201","193","194","195","196","197","198","199","200"))
data$travel_erterm_2.factor = factor(data$travel_erterm_2,levels=c("1","2","3"))
data$supper_trcntry_2.factor = factor(data$supper_trcntry_2,levels=c("4","5","6","7","8","9","10","11","12","13","14","15","1","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","2","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","3","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","202","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","201","193","194","195","196","197","198","199","200"))
data$animal_eryn.factor = factor(data$animal_eryn,levels=c("1","2","3","4"))
data$animal_eryn_2.factor = factor(data$animal_eryn_2,levels=c("1","2","3","4"))
data$onset_and_admission_complete.factor = factor(data$onset_and_admission_complete,levels=c("0","1","2"))
data$temp_vsyn.factor = factor(data$temp_vsyn,levels=c("1","0"))
data$temp_vsorresu.factor = factor(data$temp_vsorresu,levels=c("1","2"))
data$hr_vsyn.factor = factor(data$hr_vsyn,levels=c("1","0"))
data$rr_vsyn.factor = factor(data$rr_vsyn,levels=c("1","0"))
data$sysbp_vsyn.factor = factor(data$sysbp_vsyn,levels=c("1","0"))
data$diabp_vsyn.factor = factor(data$diabp_vsyn,levels=c("1","0"))
data$dehydration_vsorres.factor = factor(data$dehydration_vsorres,levels=c("1","2","3"))
data$stercap_vsyn.factor = factor(data$stercap_vsyn,levels=c("1","0"))
data$stercap_vsorres.factor = factor(data$stercap_vsorres,levels=c("1","2","3"))
data$oxy_vsyn.factor = factor(data$oxy_vsyn,levels=c("1","0"))
data$oxy_vsorresu.factor = factor(data$oxy_vsorresu,levels=c("1","2","3"))
data$fever_ceoccur_v2.factor = factor(data$fever_ceoccur_v2,levels=c("1","2","3"))
data$cough_ceoccur_v2.factor = factor(data$cough_ceoccur_v2,levels=c("1","2","3"))
data$coughsput_ceoccur_v2.factor = factor(data$coughsput_ceoccur_v2,levels=c("1","2","3"))
data$coughhb_ceoccur_v2.factor = factor(data$coughhb_ceoccur_v2,levels=c("1","2","3"))
data$sorethroat_ceoccur_v2.factor = factor(data$sorethroat_ceoccur_v2,levels=c("1","2","3"))
data$runnynose_ceoccur_v2.factor = factor(data$runnynose_ceoccur_v2,levels=c("1","2","3"))
data$earpain_ceoccur_v2.factor = factor(data$earpain_ceoccur_v2,levels=c("1","2","3"))
data$wheeze_ceoccur_v2.factor = factor(data$wheeze_ceoccur_v2,levels=c("1","2","3"))
data$chestpain_ceoccur_v2.factor = factor(data$chestpain_ceoccur_v2,levels=c("1","2","3"))
data$myalgia_ceoccur_v2.factor = factor(data$myalgia_ceoccur_v2,levels=c("1","2","3"))
data$jointpain_ceoccur_v2.factor = factor(data$jointpain_ceoccur_v2,levels=c("1","2","3"))
data$fatigue_ceoccur_v2.factor = factor(data$fatigue_ceoccur_v2,levels=c("1","2","3"))
data$shortbreath_ceoccur_v2.factor = factor(data$shortbreath_ceoccur_v2,levels=c("1","2","3"))
data$ageusia_ceoccur_v2.factor = factor(data$ageusia_ceoccur_v2,levels=c("1","2","3"))
data$lowerchest_ceoccur_v2.factor = factor(data$lowerchest_ceoccur_v2,levels=c("1","2","3"))
data$headache_ceoccur_v2.factor = factor(data$headache_ceoccur_v2,levels=c("1","2","3"))
data$confusion_ceoccur_v2.factor = factor(data$confusion_ceoccur_v2,levels=c("1","2","3"))
data$seizures_cecoccur_v2.factor = factor(data$seizures_cecoccur_v2,levels=c("1","2","3"))
data$abdopain_ceoccur_v2.factor = factor(data$abdopain_ceoccur_v2,levels=c("1","2","3"))
data$vomit_ceoccur_v2.factor = factor(data$vomit_ceoccur_v2,levels=c("1","2","3"))
data$diarrhoea_ceoccur_v2.factor = factor(data$diarrhoea_ceoccur_v2,levels=c("1","2","3"))
data$conjunct_ceoccur_v2.factor = factor(data$conjunct_ceoccur_v2,levels=c("1","2","3"))
data$rash_ceoccur_v2.factor = factor(data$rash_ceoccur_v2,levels=c("1","2","3"))
data$skinulcers_ceoccur_v2.factor = factor(data$skinulcers_ceoccur_v2,levels=c("1","2","3"))
data$lymp_ceoccur_v2.factor = factor(data$lymp_ceoccur_v2,levels=c("1","2","3"))
data$bleed_ceoccur_v2.factor = factor(data$bleed_ceoccur_v2,levels=c("1","2","3"))
data$bleed_ceterm_v2.factor = factor(data$bleed_ceterm_v2,levels=c("1","2","3"))
data$anosmia_ceoccur_v2.factor = factor(data$anosmia_ceoccur_v2,levels=c("1","2","3"))
data$admission_signs_and_symptoms_complete.factor = factor(data$admission_signs_and_symptoms_complete,levels=c("0","1","2"))
data$chrincard.factor = factor(data$chrincard,levels=c("1","2","3"))
data$hypertension_mhyn.factor = factor(data$hypertension_mhyn,levels=c("1","2","3"))
data$chronicpul_mhyn.factor = factor(data$chronicpul_mhyn,levels=c("1","2","3"))
data$asthma_mhyn.factor = factor(data$asthma_mhyn,levels=c("1","0","2"))
data$renal_mhyn.factor = factor(data$renal_mhyn,levels=c("1","2","3"))
data$modliv.factor = factor(data$modliv,levels=c("1","0","2"))
data$mildliver.factor = factor(data$mildliver,levels=c("1","0","2"))
data$chronicneu_mhyn.factor = factor(data$chronicneu_mhyn,levels=c("1","2","3"))
data$malignantneo_mhyn.factor = factor(data$malignantneo_mhyn,levels=c("1","2","3"))
data$chronichaemo_mhyn.factor = factor(data$chronichaemo_mhyn,levels=c("1","2","3"))
data$aidshiv_mhyn.factor = factor(data$aidshiv_mhyn,levels=c("1","2","3"))
data$obesity_mhyn.factor = factor(data$obesity_mhyn,levels=c("1","2","3"))
data$diabetes_type_mhyn.factor = factor(data$diabetes_type_mhyn,levels=c("0","1","2","3"))
data$diabetescom_mhyn.factor = factor(data$diabetescom_mhyn,levels=c("1","2","3"))
data$diabetes_mhyn.factor = factor(data$diabetes_mhyn,levels=c("1","2","3"))
data$rheumatologic_mhyn.factor = factor(data$rheumatologic_mhyn,levels=c("1","2","3"))
data$dementia_mhyn.factor = factor(data$dementia_mhyn,levels=c("1","2","3"))
data$malnutrition_mhyn.factor = factor(data$malnutrition_mhyn,levels=c("1","2","3"))
data$smoking_mhyn.factor = factor(data$smoking_mhyn,levels=c("1","2","3","4"))
data$other_mhyn.factor = factor(data$other_mhyn,levels=c("1","2","3"))
data$vulnerable_transplant.factor = factor(data$vulnerable_transplant,levels=c("1","2","3"))
data$vulnerable_cancers.factor = factor(data$vulnerable_cancers,levels=c("1","2","3"))
data$vulnerable_copd.factor = factor(data$vulnerable_copd,levels=c("1","2","3"))
data$vulnerable_scid.factor = factor(data$vulnerable_scid,levels=c("1","2","3"))
data$vulnerable_immuno.factor = factor(data$vulnerable_immuno,levels=c("1","2","3"))
data$vulnerable_preg.factor = factor(data$vulnerable_preg,levels=c("1","2","3"))
data$comorbidities_complete.factor = factor(data$comorbidities_complete,levels=c("0","1","2"))
data$immno_cmtrt.factor = factor(data$immno_cmtrt,levels=c("1","2","3"))
data$infect_cmtrt.factor = factor(data$infect_cmtrt,levels=c("1","2","3"))
data$chronic_ace_cmoccur.factor = factor(data$chronic_ace_cmoccur,levels=c("1","2","3"))
data$chronic_arb_cmoccur.factor = factor(data$chronic_arb_cmoccur,levels=c("1","2","3"))
data$chronic_nsaid_cmoccur.factor = factor(data$chronic_nsaid_cmoccur,levels=c("1","2","3"))
data$clinical_frailty.factor = factor(data$clinical_frailty,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$preadmission_treatment_complete.factor = factor(data$preadmission_treatment_complete,levels=c("0","1","2"))
data$cmdose_unit.factor = factor(data$cmdose_unit,levels=c("1","2","3","4","5","99"))
data$cmdosfrq.factor = factor(data$cmdosfrq,levels=c("1","2","3","4","5","6","7","8","9","10","11","99"))
data$cmroute.factor = factor(data$cmroute,levels=c("1","2","3","4","5"))
data$preadmission_medication_complete.factor = factor(data$preadmission_medication_complete,levels=c("0","1","2"))
data$daily_hoterm.factor = factor(data$daily_hoterm,levels=c("1","2","3"))
data$daily_temp_vsorresu.factor = factor(data$daily_temp_vsorresu,levels=c("1","2"))
data$daily_temp_vsorresnk.factor = factor(data$daily_temp_vsorresnk,levels=c("1"))
data$daily_fi02_lbyn.factor = factor(data$daily_fi02_lbyn,levels=c("1","2","3"))
data$daily_sa02_lbyn.factor = factor(data$daily_sa02_lbyn,levels=c("1","2","3"))
data$daily_pao2_lbyn.factor = factor(data$daily_pao2_lbyn,levels=c("1","0"))
data$daily_pao2_lborresu.factor = factor(data$daily_pao2_lborresu,levels=c("1","2"))
data$daily_pao2_lbspec.factor = factor(data$daily_pao2_lbspec,levels=c("1","2","3","4"))
data$daily_pco2_lbyn.factor = factor(data$daily_pco2_lbyn,levels=c("1","2"))
data$daily_pco2_lborresu.factor = factor(data$daily_pco2_lborresu,levels=c("1","2"))
data$daily_ph_lbyn.factor = factor(data$daily_ph_lbyn,levels=c("1","0"))
data$daily_hco3_lbyn.factor = factor(data$daily_hco3_lbyn,levels=c("1","0"))
data$daily_baseex_lbyn.factor = factor(data$daily_baseex_lbyn,levels=c("1","0"))
data$avpu_vsorres.factor = factor(data$avpu_vsorres,levels=c("1","2","3","4","5"))
data$daily_gcs_lbyn.factor = factor(data$daily_gcs_lbyn,levels=c("1","0","3"))
data$systolic_vsyn.factor = factor(data$systolic_vsyn,levels=c("1","0"))
data$diastolic_vsyn.factor = factor(data$diastolic_vsyn,levels=c("1","0"))
data$daily_meanart_lbyn.factor = factor(data$daily_meanart_lbyn,levels=c("1","0"))
data$daily_urine_lbyn.factor = factor(data$daily_urine_lbyn,levels=c("1","2","0"))
data$daily_noninvasive_prtrt.factor = factor(data$daily_noninvasive_prtrt,levels=c("1","2","3"))
data$daily_invasive_prtrt.factor = factor(data$daily_invasive_prtrt,levels=c("1","2","3"))
data$daily_nasaloxy_cmtrt.factor = factor(data$daily_nasaloxy_cmtrt,levels=c("1","2","3"))
data$daily_ecmo_prtrt.factor = factor(data$daily_ecmo_prtrt,levels=c("1","2","3"))
data$daily_rrt_cmtrt.factor = factor(data$daily_rrt_cmtrt,levels=c("1","2","3"))
data$daily_inotrope_cmyn.factor = factor(data$daily_inotrope_cmyn,levels=c("1","2","3"))
data$daily_dopless5_cmtrt.factor = factor(data$daily_dopless5_cmtrt,levels=c("1","2","3"))
data$daily_dop5to15_cmtrt.factor = factor(data$daily_dop5to15_cmtrt,levels=c("1","2","3"))
data$daily_dopgr15_cmtrt.factor = factor(data$daily_dopgr15_cmtrt,levels=c("1","2","3"))
data$daily_neuro_cmtrt.factor = factor(data$daily_neuro_cmtrt,levels=c("1","2","3"))
data$daily_nitritc_cmtrt.factor = factor(data$daily_nitritc_cmtrt,levels=c("1","2","3"))
data$daily_prone_cmtrt.factor = factor(data$daily_prone_cmtrt,levels=c("1","2","3"))
data$daily_trach_prperf.factor = factor(data$daily_trach_prperf,levels=c("1","2","3"))
data$daily_prperf.factor = factor(data$daily_prperf,levels=c("1","2","3"))
data$daily_lbperf.factor = factor(data$daily_lbperf,levels=c("1","0"))
data$daily_hb_lbyn.factor = factor(data$daily_hb_lbyn,levels=c("1","0","3"))
data$daily_hbop_lborres.factor = factor(data$daily_hbop_lborres,levels=c("1","2"))
data$daily_hb_lborresu.factor = factor(data$daily_hb_lborresu,levels=c("1","2"))
data$daily_wbc_lbyn.factor = factor(data$daily_wbc_lbyn,levels=c("1","0","3"))
data$daily_wbcop_lborres.factor = factor(data$daily_wbcop_lborres,levels=c("1","2"))
data$daily_wbc_lborresu.factor = factor(data$daily_wbc_lborresu,levels=c("1","2"))
data$daily_lymp_lbyn.factor = factor(data$daily_lymp_lbyn,levels=c("1","0","3"))
data$daily_lympop_lbyn.factor = factor(data$daily_lympop_lbyn,levels=c("1","2"))
data$daily_lymp_lborresu.factor = factor(data$daily_lymp_lborresu,levels=c("1","2","3"))
data$daily_neutro_lbyn.factor = factor(data$daily_neutro_lbyn,levels=c("1","0","3"))
data$daily_neutroop_lbyn.factor = factor(data$daily_neutroop_lbyn,levels=c("1","2"))
data$daily_neutro_lborresu.factor = factor(data$daily_neutro_lborresu,levels=c("1","2","3"))
data$daily_haematocrit_lbyn.factor = factor(data$daily_haematocrit_lbyn,levels=c("1","0"))
data$daily_plt_lbyn.factor = factor(data$daily_plt_lbyn,levels=c("1","0","3"))
data$daily_pltop_lborres.factor = factor(data$daily_pltop_lborres,levels=c("1","2"))
data$daily_plt_lborresu.factor = factor(data$daily_plt_lborresu,levels=c("1","2"))
data$daily_aptt_lbyn.factor = factor(data$daily_aptt_lbyn,levels=c("1","0","3"))
data$daily_apttop_lborres.factor = factor(data$daily_apttop_lborres,levels=c("1","2"))
data$daily_pt_inr_lbyn.factor = factor(data$daily_pt_inr_lbyn,levels=c("1","2","3","4"))
data$daily_ptop_lborres.factor = factor(data$daily_ptop_lborres,levels=c("1","2"))
data$daily_inrop_lborres.factor = factor(data$daily_inrop_lborres,levels=c("1","2"))
data$daily_alt_lbyn.factor = factor(data$daily_alt_lbyn,levels=c("1","0","3"))
data$daily_altop_lbyn.factor = factor(data$daily_altop_lbyn,levels=c("1","2"))
data$daily_bil_lbyn.factor = factor(data$daily_bil_lbyn,levels=c("1","0","3"))
data$daily_bilop_lborres.factor = factor(data$daily_bilop_lborres,levels=c("1","2"))
data$daily_bil_lborresu.factor = factor(data$daily_bil_lborresu,levels=c("1","2"))
data$daily_ast_lbyn.factor = factor(data$daily_ast_lbyn,levels=c("1","0","3"))
data$daily_astop_lborres.factor = factor(data$daily_astop_lborres,levels=c("1","2"))
data$daily_glucose_lbyn.factor = factor(data$daily_glucose_lbyn,levels=c("1","0","3"))
data$daily_glucoseop_lborres.factor = factor(data$daily_glucoseop_lborres,levels=c("1","2"))
data$daily_glucose_lborresu.factor = factor(data$daily_glucose_lborresu,levels=c("1","2"))
data$daily_bun_lbyn.factor = factor(data$daily_bun_lbyn,levels=c("1","0","3"))
data$daily_bunop_lborres.factor = factor(data$daily_bunop_lborres,levels=c("1","2"))
data$daily_bun_lborresu.factor = factor(data$daily_bun_lborresu,levels=c("1","2"))
data$daily_lactate_lbyn.factor = factor(data$daily_lactate_lbyn,levels=c("1","0","3"))
data$daily_lactateop_lbyn.factor = factor(data$daily_lactateop_lbyn,levels=c("1","2"))
data$daily_lactate_lborresu.factor = factor(data$daily_lactate_lborresu,levels=c("1","2"))
data$daily_ldh_lbyn.factor = factor(data$daily_ldh_lbyn,levels=c("1","0","3"))
data$daily_ldhop_lborres.factor = factor(data$daily_ldhop_lborres,levels=c("1","2"))
data$daily_cpk_lby.factor = factor(data$daily_cpk_lby,levels=c("1","0","3"))
data$daily_cpkop_lbyn_2.factor = factor(data$daily_cpkop_lbyn_2,levels=c("1","2"))
data$daily_creat_lbyn.factor = factor(data$daily_creat_lbyn,levels=c("1","0","3"))
data$daily_creatop_lborres.factor = factor(data$daily_creatop_lborres,levels=c("1","2"))
data$daily_creat_lborresu.factor = factor(data$daily_creat_lborresu,levels=c("1","2","3"))
data$daily_sodium_lbyn.factor = factor(data$daily_sodium_lbyn,levels=c("1","0","3"))
data$daily_sodiumop_lborres.factor = factor(data$daily_sodiumop_lborres,levels=c("1","2"))
data$daily_sodium_lborresu.factor = factor(data$daily_sodium_lborresu,levels=c("1","2"))
data$daily_potassium_lbyn.factor = factor(data$daily_potassium_lbyn,levels=c("1","0","3"))
data$daily_potassiumop_lborres.factor = factor(data$daily_potassiumop_lborres,levels=c("1","2"))
data$daily_potassium_lborresu.factor = factor(data$daily_potassium_lborresu,levels=c("1","2"))
data$daily_procal_lbyn.factor = factor(data$daily_procal_lbyn,levels=c("1","0","3"))
data$daily_procalop_lborres.factor = factor(data$daily_procalop_lborres,levels=c("1","2"))
data$daily_crp_lbyn.factor = factor(data$daily_crp_lbyn,levels=c("1","0","3"))
data$daily_crpop_lborres.factor = factor(data$daily_crpop_lborres,levels=c("1","2"))
data$daily_crp_lborresu.factor = factor(data$daily_crp_lborresu,levels=c("1","2","3"))
data$daily_hba1cop_lborres.factor = factor(data$daily_hba1cop_lborres,levels=c("1","2"))
data$daily_hba1c_lborresnk.factor = factor(data$daily_hba1c_lborresnk,levels=c("1"))
data$xray_prperf.factor = factor(data$xray_prperf,levels=c("1","2","3"))
data$infiltrates_faorres.factor = factor(data$infiltrates_faorres,levels=c("1","2","3"))
data$daily_form_complete.factor = factor(data$daily_form_complete,levels=c("0","1","2"))
data$ni_site.factor = factor(data$ni_site,levels=c("1"))
data$inflammatory_mss.factor = factor(data$inflammatory_mss,levels=c("1","0"))
data$asymptomatic.factor = factor(data$asymptomatic,levels=c("1"))
data$no_symptoms.factor = factor(data$no_symptoms,levels=c("1","2","3"))
data$no_medication.factor = factor(data$no_medication,levels=c("1"))
data$daily_hco3_lborresu.factor = factor(data$daily_hco3_lborresu,levels=c("1","2"))
data$remdesivir.factor = factor(data$remdesivir,levels=c("1","0","2"))
data$remdesivir_last_dose.factor = factor(data$remdesivir_last_dose,levels=c("1","0","2"))
data$daily_haematocrit_lborresu.factor = factor(data$daily_haematocrit_lborresu,levels=c("1","2"))
data$daily_esr_lbyn.factor = factor(data$daily_esr_lbyn,levels=c("1","0","3"))
data$daily_esrop_lbyn.factor = factor(data$daily_esrop_lbyn,levels=c("1","2"))
data$daily_ferr_lbyn.factor = factor(data$daily_ferr_lbyn,levels=c("1","0","3"))
data$daily_ferrop_lbyn.factor = factor(data$daily_ferrop_lbyn,levels=c("1","2"))
data$daily_ferr_lborresu.factor = factor(data$daily_ferr_lborresu,levels=c("1","2"))
data$daily_egfr_lbyn.factor = factor(data$daily_egfr_lbyn,levels=c("1","0","3"))
data$daily_egfrop_lborres.factor = factor(data$daily_egfrop_lborres,levels=c("1","2"))
data$daily_egfr_equation___1.factor = factor(data$daily_egfr_equation___1,levels=c("0","1"))
data$daily_egfr_equation___2.factor = factor(data$daily_egfr_equation___2,levels=c("0","1"))
data$daily_egfr_equation___3.factor = factor(data$daily_egfr_equation___3,levels=c("0","1"))
data$daily_hba1c_lborresu.factor = factor(data$daily_hba1c_lborresu,levels=c("1","2"))
data$mbperf.factor = factor(data$mbperf,levels=c("1","2","3"))
data$influ_mbyn.factor = factor(data$influ_mbyn,levels=c("2","1","0"))
data$influ_mbcat.factor = factor(data$influ_mbcat,levels=c("1","2","3","4","5","7","6","888"))
data$corna_mbcat.factor = factor(data$corna_mbcat,levels=c("2","1","0"))
data$corna_mbcaty.factor = factor(data$corna_mbcaty,levels=c("1","2","3","888"))
data$rsv_mbcat.factor = factor(data$rsv_mbcat,levels=c("2","1","0"))
data$adeno_mbcat.factor = factor(data$adeno_mbcat,levels=c("2","1","0"))
data$bact_mborres.factor = factor(data$bact_mborres,levels=c("1","2"))
data$other_mbyn.factor = factor(data$other_mbyn,levels=c("2","1","0"))
data$clinicalpneu_mborres.factor = factor(data$clinicalpneu_mborres,levels=c("1","0","2"))
data$infectuk_mborres.factor = factor(data$infectuk_mborres,levels=c("1","2"))
data$infectious_respiratory_disease_pathogen_diagnosis_complete.factor = factor(data$infectious_respiratory_disease_pathogen_diagnosis_complete,levels=c("0","1","2"))
data$daily_mbperf.factor = factor(data$daily_mbperf,levels=c("1","0"))
data$mbspec.factor = factor(data$mbspec,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","15","14"))
data$mbmethod.factor = factor(data$mbmethod,levels=c("1","2","3"))
data$mborres.factor = factor(data$mborres,levels=c("1","2","3"))
data$infectious_respiratory_disease_pathogen_testing_complete.factor = factor(data$infectious_respiratory_disease_pathogen_testing_complete,levels=c("0","1","2"))
data$antiviral_cmyn.factor = factor(data$antiviral_cmyn,levels=c("1","2","3"))
data$antiviral_cmtrt___1.factor = factor(data$antiviral_cmtrt___1,levels=c("0","1"))
data$antiviral_cmtrt___2.factor = factor(data$antiviral_cmtrt___2,levels=c("0","1"))
data$antiviral_cmtrt___3.factor = factor(data$antiviral_cmtrt___3,levels=c("0","1"))
data$antiviral_cmtrt___4.factor = factor(data$antiviral_cmtrt___4,levels=c("0","1"))
data$antiviral_cmtrt___7.factor = factor(data$antiviral_cmtrt___7,levels=c("0","1"))
data$antiviral_cmtrt___8.factor = factor(data$antiviral_cmtrt___8,levels=c("0","1"))
data$antiviral_cmtrt___9.factor = factor(data$antiviral_cmtrt___9,levels=c("0","1"))
data$antiviral_cmtrt___5.factor = factor(data$antiviral_cmtrt___5,levels=c("0","1"))
data$antiviral_cmtrt___6.factor = factor(data$antiviral_cmtrt___6,levels=c("0","1"))
data$il6_cmtrt.factor = factor(data$il6_cmtrt,levels=c("1","2","3","10"))
data$othantiviral2_cmyn.factor = factor(data$othantiviral2_cmyn,levels=c("1","0"))
data$othantiviral3_cmyn.factor = factor(data$othantiviral3_cmyn,levels=c("1","0"))
data$othantiviral4_cmyn.factor = factor(data$othantiviral4_cmyn,levels=c("1","0"))
data$othantiviral5_cmyn.factor = factor(data$othantiviral5_cmyn,levels=c("1","0"))
data$antibiotic_cmyn.factor = factor(data$antibiotic_cmyn,levels=c("1","2","3"))
data$antibiotic2_cmyn.factor = factor(data$antibiotic2_cmyn,levels=c("1","2","3"))
data$antibiotic3_cmyn.factor = factor(data$antibiotic3_cmyn,levels=c("1","2","3"))
data$antibiotic4_cmyn.factor = factor(data$antibiotic4_cmyn,levels=c("1","2","3"))
data$antibiotic5_cmyn.factor = factor(data$antibiotic5_cmyn,levels=c("1","2","3"))
data$antibiotic6_cmyn.factor = factor(data$antibiotic6_cmyn,levels=c("1","2","3"))
data$antibiotic7_cmyn.factor = factor(data$antibiotic7_cmyn,levels=c("1","2","3"))
data$corticost_cmyn.factor = factor(data$corticost_cmyn,levels=c("1","2","3"))
data$corticost_cmroute.factor = factor(data$corticost_cmroute,levels=c("1","2","3"))
data$corticost2_cmyn.factor = factor(data$corticost2_cmyn,levels=c("1","2","3"))
data$corticost2_cmroute.factor = factor(data$corticost2_cmroute,levels=c("1","2","3"))
data$corticost3_cmyn.factor = factor(data$corticost3_cmyn,levels=c("1","2","3"))
data$corticost3_cmroute.factor = factor(data$corticost3_cmroute,levels=c("1","2","3"))
data$dexamethasone.factor = factor(data$dexamethasone,levels=c("1","2","3"))
data$dexamethasone_route.factor = factor(data$dexamethasone_route,levels=c("1","2"))
data$antifung_cmyn.factor = factor(data$antifung_cmyn,levels=c("1","2","3"))
data$offlabel_cmyn.factor = factor(data$offlabel_cmyn,levels=c("1","2","3"))
data$interleukin_cmyn.factor = factor(data$interleukin_cmyn,levels=c("1","2","3"))
data$conv_plasma_cmyn.factor = factor(data$conv_plasma_cmyn,levels=c("1","2","3"))
data$icu_hoterm.factor = factor(data$icu_hoterm,levels=c("1","2","3"))
data$oxygen_cmoccur.factor = factor(data$oxygen_cmoccur,levels=c("1","2","3"))
data$oxygenhf_cmoccur.factor = factor(data$oxygenhf_cmoccur,levels=c("1","2","3"))
data$noninvasive_proccur.factor = factor(data$noninvasive_proccur,levels=c("1","2","3"))
data$invasive_proccur.factor = factor(data$invasive_proccur,levels=c("1","2","3"))
data$pronevent_prtrt.factor = factor(data$pronevent_prtrt,levels=c("1","2","3"))
data$inhalednit_cmtrt.factor = factor(data$inhalednit_cmtrt,levels=c("1","2","3"))
data$tracheo_prtrt.factor = factor(data$tracheo_prtrt,levels=c("1","2","3"))
data$extracorp_prtrt.factor = factor(data$extracorp_prtrt,levels=c("1","2","3"))
data$rrt_prtrt.factor = factor(data$rrt_prtrt,levels=c("1","2","3"))
data$inotrop_cmtrt.factor = factor(data$inotrop_cmtrt,levels=c("1","2","3"))
data$other_cmyn.factor = factor(data$other_cmyn,levels=c("1","2","3"))
data$bloodgroup.factor = factor(data$bloodgroup,levels=c("1","2","3","4","9"))
data$treatment_complete.factor = factor(data$treatment_complete,levels=c("0","1","2"))
data$vrialpneu_ceoccur.factor = factor(data$vrialpneu_ceoccur,levels=c("1","2","3"))
data$bactpneu_ceoccur.factor = factor(data$bactpneu_ceoccur,levels=c("1","2","3"))
data$ards_ceoccur.factor = factor(data$ards_ceoccur,levels=c("1","2","3"))
data$cryptogenic_ceterm.factor = factor(data$cryptogenic_ceterm,levels=c("1","2","3"))
data$pneumothorax_ceterm.factor = factor(data$pneumothorax_ceterm,levels=c("1","2","3"))
data$pleuraleff_ceterm.factor = factor(data$pleuraleff_ceterm,levels=c("1","2","3"))
data$bronchio_ceterm.factor = factor(data$bronchio_ceterm,levels=c("1","2","3"))
data$meningitis_ceterm.factor = factor(data$meningitis_ceterm,levels=c("1","2","3"))
data$seizure_ceterm.factor = factor(data$seizure_ceterm,levels=c("1","2","3"))
data$stroke_ceterm.factor = factor(data$stroke_ceterm,levels=c("1","2","3"))
data$neuro_comp.factor = factor(data$neuro_comp,levels=c("1","2","3"))
data$heartfailure_ceterm.factor = factor(data$heartfailure_ceterm,levels=c("1","2","3"))
data$endocarditis_aeterm.factor = factor(data$endocarditis_aeterm,levels=c("1","2","3"))
data$myocarditis_ceterm.factor = factor(data$myocarditis_ceterm,levels=c("1","2","3"))
data$cardiomyopathy_ceterm.factor = factor(data$cardiomyopathy_ceterm,levels=c("1","2","3"))
data$arrhythmia_ceterm.factor = factor(data$arrhythmia_ceterm,levels=c("1","2","3"))
data$ischaemia_ceterm.factor = factor(data$ischaemia_ceterm,levels=c("1","2","3"))
data$cardiacarrest_ceterm.factor = factor(data$cardiacarrest_ceterm,levels=c("1","2","3"))
data$bacteraemia_ceterm.factor = factor(data$bacteraemia_ceterm,levels=c("1","2","3"))
data$coagulo_ceterm.factor = factor(data$coagulo_ceterm,levels=c("1","2","3"))
data$aneamia_ceterm.factor = factor(data$aneamia_ceterm,levels=c("1","2","3"))
data$rhabdomyolsis_ceterm.factor = factor(data$rhabdomyolsis_ceterm,levels=c("1","2","3"))
data$renalinjury_ceterm.factor = factor(data$renalinjury_ceterm,levels=c("1","2","3"))
data$gastro_ceterm.factor = factor(data$gastro_ceterm,levels=c("1","2","3"))
data$pancreat_ceterm.factor = factor(data$pancreat_ceterm,levels=c("1","2","3"))
data$liverdysfunction_ceterm.factor = factor(data$liverdysfunction_ceterm,levels=c("1","2","3"))
data$hyperglycemia_aeterm.factor = factor(data$hyperglycemia_aeterm,levels=c("1","2","3"))
data$hypoglycemia_ceterm.factor = factor(data$hypoglycemia_ceterm,levels=c("1","2","3"))
data$other_ceoccur.factor = factor(data$other_ceoccur,levels=c("1","2","3"))
data$complications_complete.factor = factor(data$complications_complete,levels=c("0","1","2"))
data$recruitment.factor = factor(data$recruitment,levels=c("1","0"))
data$study_2.factor = factor(data$study_2,levels=c("1","0"))
data$study_3.factor = factor(data$study_3,levels=c("1","0"))
data$study_participation_complete.factor = factor(data$study_participation_complete,levels=c("0","1","2"))
data$dsterm.factor = factor(data$dsterm,levels=c("1","2","3","4","5","6"))
data$dshosp.factor = factor(data$dshosp,levels=c("1","2"))
data$dsstdtcyn.factor = factor(data$dsstdtcyn,levels=c("1","2","3"))
data$suppds_qval.factor = factor(data$suppds_qval,levels=c("1","2","3","4"))
data$oxygen_proccur.factor = factor(data$oxygen_proccur,levels=c("1","2","3"))
data$renal_proccur.factor = factor(data$renal_proccur,levels=c("1","2","3"))
data$other_cmoccur.factor = factor(data$other_cmoccur,levels=c("1","2","3"))
data$siteidnk.factor = factor(data$siteidnk,levels=c("1"))
data$siteyn.factor = factor(data$siteyn,levels=c("1","2","3"))
data$subjidcat.factor = factor(data$subjidcat,levels=c("1","2","3"))
data$outcome_complete.factor = factor(data$outcome_complete,levels=c("0","1","2"))
data$core_additional_information_complete.factor = factor(data$core_additional_information_complete,levels=c("0","1","2"))
data$withdtype.factor = factor(data$withdtype,levels=c("1","10"))
data$withdrawal_form_complete.factor = factor(data$withdrawal_form_complete,levels=c("0","1","2"))
data$consent_given.factor = factor(data$consent_given,levels=c("1","0"))
data$consent_mode___1.factor = factor(data$consent_mode___1,levels=c("0","1"))
data$consent_mode___2.factor = factor(data$consent_mode___2,levels=c("0","1"))
data$consent_mode___3.factor = factor(data$consent_mode___3,levels=c("0","1"))
data$consent_mode___4.factor = factor(data$consent_mode___4,levels=c("0","1"))
data$consent_mode___5.factor = factor(data$consent_mode___5,levels=c("0","1"))
data$consent_mode___6.factor = factor(data$consent_mode___6,levels=c("0","1"))
data$consent_mode___7.factor = factor(data$consent_mode___7,levels=c("0","1"))
data$consent_mode___8.factor = factor(data$consent_mode___8,levels=c("0","1"))
data$consent_mode___9.factor = factor(data$consent_mode___9,levels=c("0","1"))
data$consent_mode___10.factor = factor(data$consent_mode___10,levels=c("0","1"))
data$consent_mode___11.factor = factor(data$consent_mode___11,levels=c("0","1"))
data$consent_optcondit___1.factor = factor(data$consent_optcondit___1,levels=c("0","1"))
data$consent_optcondit___2.factor = factor(data$consent_optcondit___2,levels=c("0","1"))
data$consent_optcondit___3.factor = factor(data$consent_optcondit___3,levels=c("0","1"))
data$consent_optcondit___4.factor = factor(data$consent_optcondit___4,levels=c("0","1"))
data$consent_ctu_dms_complete.factor = factor(data$consent_ctu_dms_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Day 1 Hospital Admission (Arm 1: TIER 0)","Day 3 (Arm 1: TIER 0)","Day 6 (Arm 1: TIER 0)","Day 9 (Arm 1: TIER 0)","Additional days (Arm 1: TIER 0)","Discharge/Death (Arm 1: TIER 0)","Day 1 Hospital&ICU Admission (Arm 2: TIER 1)","Day 3 (Arm 2: TIER 1)","Day 6 (Arm 2: TIER 1)","Day 9 (Arm 2: TIER 1)","Additional days (Arm 2: TIER 1)","Discharge/Death (Arm 2: TIER 1)","Day 1 (Arm 3: TIER 2)","Day 2 (Arm 3: TIER 2)","Day 3 (Arm 3: TIER 2)","Day 4 (Arm 3: TIER 2)","Day 5 (Arm 3: TIER 2)","Day 6 (Arm 3: TIER 2)","Day 7 (Arm 3: TIER 2)","Day 8 (Arm 3: TIER 2)","Day 9 (Arm 3: TIER 2)","Day 10 (Arm 3: TIER 2)","Day 11 (Arm 3: TIER 2)","Day 12 (Arm 3: TIER 2)","Day 13 (Arm 3: TIER 2)","Day 14 (Arm 3: TIER 2)","Additional days (Arm 3: TIER 2)","Discharge/Death (Arm 3: TIER 2)")
levels(data$redcap_repeat_instrument.factor)=c("Pre-admission medication","Infectious Respiratory Disease Pathogen Testing","Daily Form")
levels(data$tiers_faorres___1.factor)=c("Unchecked","Checked")
levels(data$tiers_faorres___2.factor)=c("Unchecked","Checked")
levels(data$tiers_faorres___3.factor)=c("Unchecked","Checked")
levels(data$tiers_consent_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$participant_identification_number_pin_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$covid19_new.factor)=c("Data in new COVID-19 short CRF")
levels(data$corona_ieorres.factor)=c("Yes","No")
levels(data$coriona_ieorres2.factor)=c("Yes","No")
levels(data$fever.factor)=c("Yes","No")
levels(data$cough.factor)=c("Yes","No")
levels(data$dyspnoe.factor)=c("Yes","No")
levels(data$ari.factor)=c("Yes","No")
levels(data$symptoms_epi_travel.factor)=c("YES","NO","Unknown")
levels(data$symptoms_epi_physical.factor)=c("YES","NO","Unknown")
levels(data$symptoms_epi_healthfac.factor)=c("YES","NO","Unknown")
levels(data$symptoms_epi_lab.factor)=c("YES","NO","Unknown")
levels(data$symptoms_epi_pathogen.factor)=c("YES","NO","Unknown")
levels(data$symptoms_epi_animal.factor)=c("YES","NO","Unknown")
levels(data$inclusion_criteria_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$sex.factor)=c("Male","Female","Not specified")
levels(data$agedatyn.factor)=c("Yes","No")
levels(data$age_estimateyearsu.factor)=c("Months","Years")
levels(data$ethnic___1.factor)=c("Unchecked","Checked")
levels(data$ethnic___2.factor)=c("Unchecked","Checked")
levels(data$ethnic___3.factor)=c("Unchecked","Checked")
levels(data$ethnic___4.factor)=c("Unchecked","Checked")
levels(data$ethnic___5.factor)=c("Unchecked","Checked")
levels(data$ethnic___6.factor)=c("Unchecked","Checked")
levels(data$ethnic___7.factor)=c("Unchecked","Checked")
levels(data$ethnic___8.factor)=c("Unchecked","Checked")
levels(data$ethnic___9.factor)=c("Unchecked","Checked")
levels(data$ethnic___10.factor)=c("Unchecked","Checked")
levels(data$healthwork_erterm.factor)=c("YES","NO","N/A")
levels(data$labwork_erterm.factor)=c("YES","NO","N/A")
levels(data$pregyn_rptestcd.factor)=c("YES","NO","Unknown","N/A")
levels(data$postpart_rptestcd.factor)=c("Yes","No","N/K")
levels(data$pregout_rptestcd.factor)=c("Live birth","Still birth")
levels(data$aplb_lbperf.factor)=c("Yes","No","N/A")
levels(data$aplb_lborres.factor)=c("Positive","Negative")
levels(data$aplb_lbmethod.factor)=c("PCR","Other")
levels(data$apdm_age.factor)=c("Yes","No")
levels(data$apvs_weightu.factor)=c("kg","lbs")
levels(data$apvs_weightnk.factor)=c("N/K")
levels(data$apsc_gestout.factor)=c("Term birth ( >= 37wk GA)","Preterm birth (< 37wk GA)","N/A")
levels(data$apsc_brfedind.factor)=c("Yes","No","N/A")
levels(data$apsc_brfedindy.factor)=c("Currently breastfed","Breastfeeding discontinued","N/A")
levels(data$apsc_dvageind.factor)=c("Yes","No","N/A")
levels(data$apsc_vcageind.factor)=c("Yes","No","Unknown","N/A")
levels(data$demographics_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$readm_cov19.factor)=c("Yes","No","N/K")
levels(data$readminreasnk.factor)=c("N/K")
levels(data$surgefacil.factor)=c("Yes","No","N/K")
levels(data$hooccur.factor)=c("Yes-other facility is a study site","Yes-other facility is not a study site","No","N/A")
levels(data$siteid_transfernk.factor)=c("N/K")
levels(data$hostdat_transfernk.factor)=c("N/K")
levels(data$subjidcat_transfer.factor)=c("Same as above","Different","N/A")
levels(data$travel_erterm.factor)=c("Yes","No","N/A")
levels(data$supper_trcntry.factor)=c("Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas (The)","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burma","Burundi","Cambodia","Cameroon","Canada","Cabo Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Congo (Republic of the)","Costa Rica","Cote dIvoire","Croatia","Cuba","Curacao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia (The)","Georgia","Germany","Ghana","Greece","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Holy See","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","Korea (South)","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestinian Territories","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor-Leste","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe")
levels(data$travel_erterm_2.factor)=c("Yes","No","N/A")
levels(data$supper_trcntry_2.factor)=c("Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas (The)","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burma","Burundi","Cambodia","Cameroon","Canada","Cabo Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Congo (Republic of the)","Costa Rica","Cote dIvoire","Croatia","Cuba","Curacao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia (The)","Georgia","Germany","Ghana","Greece","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Holy See","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","Korea (South)","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestinian Territories","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor-Leste","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe")
levels(data$animal_eryn.factor)=c("Yes","No","Unknown","N/A")
levels(data$animal_eryn_2.factor)=c("Yes","No","Unknown","N/A")
levels(data$onset_and_admission_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$temp_vsyn.factor)=c("Yes","No")
levels(data$temp_vsorresu.factor)=c("°C","°F")
levels(data$hr_vsyn.factor)=c("Yes","No")
levels(data$rr_vsyn.factor)=c("Yes","No")
levels(data$sysbp_vsyn.factor)=c("Yes","No")
levels(data$diabp_vsyn.factor)=c("Yes","No")
levels(data$dehydration_vsorres.factor)=c("Yes","No","Unknown")
levels(data$stercap_vsyn.factor)=c("Yes","No")
levels(data$stercap_vsorres.factor)=c("Yes","No","Unknown")
levels(data$oxy_vsyn.factor)=c("Yes","No")
levels(data$oxy_vsorresu.factor)=c("Room air","Oxygen therapy","N/A")
levels(data$fever_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$cough_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$coughsput_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$coughhb_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$sorethroat_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$runnynose_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$earpain_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$wheeze_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$chestpain_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$myalgia_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$jointpain_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$fatigue_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$shortbreath_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$ageusia_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$lowerchest_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$headache_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$confusion_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$seizures_cecoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$abdopain_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$vomit_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$diarrhoea_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$conjunct_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$rash_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$skinulcers_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$lymp_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$bleed_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$bleed_ceterm_v2.factor)=c("YES","NO","Unknown")
levels(data$anosmia_ceoccur_v2.factor)=c("YES","NO","Unknown")
levels(data$admission_signs_and_symptoms_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$chrincard.factor)=c("YES","NO","Unknown")
levels(data$hypertension_mhyn.factor)=c("YES","NO","Unknown")
levels(data$chronicpul_mhyn.factor)=c("YES","NO","Unknown")
levels(data$asthma_mhyn.factor)=c("YES","NO","Unknown")
levels(data$renal_mhyn.factor)=c("YES","NO","Unknown")
levels(data$modliv.factor)=c("YES","NO","Unknown")
levels(data$mildliver.factor)=c("YES","NO","Unknown")
levels(data$chronicneu_mhyn.factor)=c("YES","NO","Unknown")
levels(data$malignantneo_mhyn.factor)=c("YES","NO","Unknown")
levels(data$chronichaemo_mhyn.factor)=c("YES","NO","Unknown")
levels(data$aidshiv_mhyn.factor)=c("YES","NO","Unknown")
levels(data$obesity_mhyn.factor)=c("YES","NO","Unknown")
levels(data$diabetes_type_mhyn.factor)=c("NO","1","2","N/K")
levels(data$diabetescom_mhyn.factor)=c("YES","NO","Unknown")
levels(data$diabetes_mhyn.factor)=c("YES","NO","Unknown")
levels(data$rheumatologic_mhyn.factor)=c("YES","NO","Unknown")
levels(data$dementia_mhyn.factor)=c("YES","NO","Unknown")
levels(data$malnutrition_mhyn.factor)=c("YES","NO","Unknown")
levels(data$smoking_mhyn.factor)=c("Yes","Never Smoked","Former Smoker","N/K")
levels(data$other_mhyn.factor)=c("Yes","No","Unknown")
levels(data$vulnerable_transplant.factor)=c("Yes","No","N/K")
levels(data$vulnerable_cancers.factor)=c("Yes","No","N/K")
levels(data$vulnerable_copd.factor)=c("Yes","No","N/K")
levels(data$vulnerable_scid.factor)=c("Yes","No","N/K")
levels(data$vulnerable_immuno.factor)=c("Yes","No","N/K")
levels(data$vulnerable_preg.factor)=c("Yes","No","N/K")
levels(data$comorbidities_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$immno_cmtrt.factor)=c("Yes","No","N/A")
levels(data$infect_cmtrt.factor)=c("Yes","No","N/A")
levels(data$chronic_ace_cmoccur.factor)=c("Yes","No","N/K")
levels(data$chronic_arb_cmoccur.factor)=c("Yes","No","N/K")
levels(data$chronic_nsaid_cmoccur.factor)=c("Yes","No","N/K")
levels(data$clinical_frailty.factor)=c("1","2","3","4","5","6","7","8","9","N/K")
levels(data$preadmission_treatment_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cmdose_unit.factor)=c("microgram","milligram","gram","int. unit","other","Unknown")
levels(data$cmdosfrq.factor)=c("q.d - once a day","b.i.d - twice a day","t.i.d - three times a day","q.i.d - four times a day","q.h.s - before bed","5X a day - five times a day","q.4h - every four hours","q.6h - every six hours","q.o.d - every other day","prn - as needed","Other frequency","Unknown")
levels(data$cmroute.factor)=c("IV","oral","Inhaled","Unknown","Other")
levels(data$preadmission_medication_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$daily_hoterm.factor)=c("Yes","No","N/A")
levels(data$daily_temp_vsorresu.factor)=c("°C","°F")
levels(data$daily_temp_vsorresnk.factor)=c("N/K")
levels(data$daily_fi02_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_sa02_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_pao2_lbyn.factor)=c("Yes","No")
levels(data$daily_pao2_lborresu.factor)=c("kPa","mmHg")
levels(data$daily_pao2_lbspec.factor)=c("Arterial","Venous","Capillary","N/A")
levels(data$daily_pco2_lbyn.factor)=c("Yes","No")
levels(data$daily_pco2_lborresu.factor)=c("kPa","mmHg")
levels(data$daily_ph_lbyn.factor)=c("Yes","No")
levels(data$daily_hco3_lbyn.factor)=c("Yes","No")
levels(data$daily_baseex_lbyn.factor)=c("Yes","No")
levels(data$avpu_vsorres.factor)=c("Alert","Verbal","Pain","Unresponsive","N/K")
levels(data$daily_gcs_lbyn.factor)=c("Yes","No","N/K")
levels(data$systolic_vsyn.factor)=c("Yes","No")
levels(data$diastolic_vsyn.factor)=c("Yes","No")
levels(data$daily_meanart_lbyn.factor)=c("Yes","No")
levels(data$daily_urine_lbyn.factor)=c("Yes","Estimated","No")
levels(data$daily_noninvasive_prtrt.factor)=c("YES","NO","N/A")
levels(data$daily_invasive_prtrt.factor)=c("YES","NO","N/A")
levels(data$daily_nasaloxy_cmtrt.factor)=c("YES","NO","N/A")
levels(data$daily_ecmo_prtrt.factor)=c("YES","NO","N/A")
levels(data$daily_rrt_cmtrt.factor)=c("YES","NO","N/A")
levels(data$daily_inotrope_cmyn.factor)=c("YES","NO","N/A")
levels(data$daily_dopless5_cmtrt.factor)=c("YES","NO","N/A")
levels(data$daily_dop5to15_cmtrt.factor)=c("YES","NO","N/A")
levels(data$daily_dopgr15_cmtrt.factor)=c("YES","NO","N/A")
levels(data$daily_neuro_cmtrt.factor)=c("YES","NO","N/A")
levels(data$daily_nitritc_cmtrt.factor)=c("YES","NO","N/A")
levels(data$daily_prone_cmtrt.factor)=c("YES","NO","N/A")
levels(data$daily_trach_prperf.factor)=c("YES","NO","N/A")
levels(data$daily_prperf.factor)=c("YES","NO","N/A")
levels(data$daily_lbperf.factor)=c("Yes","No")
levels(data$daily_hb_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_hbop_lborres.factor)=c("")
levels(data$daily_hb_lborresu.factor)=c("g/L","g/dL")
levels(data$daily_wbc_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_wbcop_lborres.factor)=c("")
levels(data$daily_wbc_lborresu.factor)=c("x 10^9 / L","x 103/µL")
levels(data$daily_lymp_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_lympop_lbyn.factor)=c("")
levels(data$daily_lymp_lborresu.factor)=c("cells/ μL","x 10^9 / L","x 10³/μL")
levels(data$daily_neutro_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_neutroop_lbyn.factor)=c("")
levels(data$daily_neutro_lborresu.factor)=c("cells/ μL","x 10^9 / L","x 10³/μL")
levels(data$daily_haematocrit_lbyn.factor)=c("Yes","No")
levels(data$daily_plt_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_pltop_lborres.factor)=c("")
levels(data$daily_plt_lborresu.factor)=c("x 10^9 / L","x 103/μL")
levels(data$daily_aptt_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_apttop_lborres.factor)=c("")
levels(data$daily_pt_inr_lbyn.factor)=c("PT done","INR done","PT or INR not done","N/K")
levels(data$daily_ptop_lborres.factor)=c("")
levels(data$daily_inrop_lborres.factor)=c("")
levels(data$daily_alt_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_altop_lbyn.factor)=c("")
levels(data$daily_bil_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_bilop_lborres.factor)=c("")
levels(data$daily_bil_lborresu.factor)=c("µmol/L","mg/dL")
levels(data$daily_ast_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_astop_lborres.factor)=c("")
levels(data$daily_glucose_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_glucoseop_lborres.factor)=c("")
levels(data$daily_glucose_lborresu.factor)=c("mmol/L","mg/dL")
levels(data$daily_bun_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_bunop_lborres.factor)=c("")
levels(data$daily_bun_lborresu.factor)=c("mmol/L","mg/dL")
levels(data$daily_lactate_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_lactateop_lbyn.factor)=c("")
levels(data$daily_lactate_lborresu.factor)=c("mmol/L","mg/dL")
levels(data$daily_ldh_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_ldhop_lborres.factor)=c("")
levels(data$daily_cpk_lby.factor)=c("Yes","No","N/K")
levels(data$daily_cpkop_lbyn_2.factor)=c("")
levels(data$daily_creat_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_creatop_lborres.factor)=c("")
levels(data$daily_creat_lborresu.factor)=c("μmol/L","mg/dL","umol/L")
levels(data$daily_sodium_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_sodiumop_lborres.factor)=c("")
levels(data$daily_sodium_lborresu.factor)=c("mmol/L","mEq/L")
levels(data$daily_potassium_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_potassiumop_lborres.factor)=c("")
levels(data$daily_potassium_lborresu.factor)=c("mmol/L","mEq/L")
levels(data$daily_procal_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_procalop_lborres.factor)=c("")
levels(data$daily_crp_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_crpop_lborres.factor)=c("")
levels(data$daily_crp_lborresu.factor)=c("mg/L","mg/dL","ug/ml")
levels(data$daily_hba1cop_lborres.factor)=c("")
levels(data$daily_hba1c_lborresnk.factor)=c("N/K")
levels(data$xray_prperf.factor)=c("YES","NO","N/A")
levels(data$infiltrates_faorres.factor)=c("YES","NO","N/A")
levels(data$daily_form_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ni_site.factor)=c("Yes")
levels(data$inflammatory_mss.factor)=c("Yes","No")
levels(data$asymptomatic.factor)=c("Asymptomatic")
levels(data$no_symptoms.factor)=c("YES","NO","Unknown")
levels(data$no_medication.factor)=c("No medication currently or within the last 14 days")
levels(data$daily_hco3_lborresu.factor)=c("mEq/L","mmol/L")
levels(data$remdesivir.factor)=c("YES","NO","N/K")
levels(data$remdesivir_last_dose.factor)=c("YES","NO","N/K")
levels(data$daily_haematocrit_lborresu.factor)=c("%","L/L")
levels(data$daily_esr_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_esrop_lbyn.factor)=c("")
levels(data$daily_ferr_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_ferrop_lbyn.factor)=c("")
levels(data$daily_ferr_lborresu.factor)=c("μg/L","ng/mL")
levels(data$daily_egfr_lbyn.factor)=c("Yes","No","N/K")
levels(data$daily_egfrop_lborres.factor)=c("")
levels(data$daily_egfr_equation___1.factor)=c("Unchecked","Checked")
levels(data$daily_egfr_equation___2.factor)=c("Unchecked","Checked")
levels(data$daily_egfr_equation___3.factor)=c("Unchecked","Checked")
levels(data$daily_hba1c_lborresu.factor)=c("%","mmol/mol")
levels(data$mbperf.factor)=c("YES","NO","N/A")
levels(data$influ_mbyn.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$influ_mbcat.factor)=c("A/H3N2","A/H1N1pdm09","A/H7N9","A/H5N1","A - not typed","Other A","B - not typed","Other")
levels(data$corna_mbcat.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$corna_mbcaty.factor)=c("MERS-CoV","2019nCoV","COVID-19/SARS-CoV-2 2019","Other CoV")
levels(data$rsv_mbcat.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$adeno_mbcat.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$bact_mborres.factor)=c("YES-Confirmed","NO")
levels(data$other_mbyn.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$clinicalpneu_mborres.factor)=c("YES","NO","Unknown")
levels(data$infectuk_mborres.factor)=c("Yes","N/A")
levels(data$infectious_respiratory_disease_pathogen_diagnosis_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$daily_mbperf.factor)=c("Yes","No")
levels(data$mbspec.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Exotoxin A (ETA)","CSF","SAM","Urine","Faeces / rectal swab","Blood serum","Blood EDTA","Blood RNA","Blood","Other")
levels(data$mbmethod.factor)=c("PCR","Culture","Other")
levels(data$mborres.factor)=c("Positive","Negative","N/A")
levels(data$infectious_respiratory_disease_pathogen_testing_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$antiviral_cmyn.factor)=c("Yes","No","N/A")
levels(data$antiviral_cmtrt___1.factor)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___2.factor)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___3.factor)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___4.factor)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___7.factor)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___8.factor)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___9.factor)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___5.factor)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___6.factor)=c("Unchecked","Checked")
levels(data$il6_cmtrt.factor)=c("Tocilizumab","Anakinra","drug X","Other IL6 inhibitor")
levels(data$othantiviral2_cmyn.factor)=c("Yes","No")
levels(data$othantiviral3_cmyn.factor)=c("Yes","No")
levels(data$othantiviral4_cmyn.factor)=c("Yes","No")
levels(data$othantiviral5_cmyn.factor)=c("Yes","No")
levels(data$antibiotic_cmyn.factor)=c("Yes","No","N/A")
levels(data$antibiotic2_cmyn.factor)=c("Yes","No","N/A")
levels(data$antibiotic3_cmyn.factor)=c("Yes","No","N/A")
levels(data$antibiotic4_cmyn.factor)=c("Yes","No","N/A")
levels(data$antibiotic5_cmyn.factor)=c("Yes","No","N/A")
levels(data$antibiotic6_cmyn.factor)=c("Yes","No","N/A")
levels(data$antibiotic7_cmyn.factor)=c("Yes","No","N/A")
levels(data$corticost_cmyn.factor)=c("Yes","No","N/A")
levels(data$corticost_cmroute.factor)=c("Oral","Intravenous","Inhaled")
levels(data$corticost2_cmyn.factor)=c("Yes","No","N/A")
levels(data$corticost2_cmroute.factor)=c("Oral","Intravenous","Inhaled")
levels(data$corticost3_cmyn.factor)=c("Yes","No","N/A")
levels(data$corticost3_cmroute.factor)=c("Oral","Intravenous","Inhaled")
levels(data$dexamethasone.factor)=c("Yes","No","N/K")
levels(data$dexamethasone_route.factor)=c("Oral","Intravenous")
levels(data$antifung_cmyn.factor)=c("Yes","No","N/A")
levels(data$offlabel_cmyn.factor)=c("Yes","No","N/K")
levels(data$interleukin_cmyn.factor)=c("Yes","No","N/K")
levels(data$conv_plasma_cmyn.factor)=c("Yes","No","N/K")
levels(data$icu_hoterm.factor)=c("Yes","No","N/A")
levels(data$oxygen_cmoccur.factor)=c("YES","NO","N/A")
levels(data$oxygenhf_cmoccur.factor)=c("YES","NO","N/A")
levels(data$noninvasive_proccur.factor)=c("YES","NO","N/A")
levels(data$invasive_proccur.factor)=c("YES","NO","N/A")
levels(data$pronevent_prtrt.factor)=c("YES","NO","N/A")
levels(data$inhalednit_cmtrt.factor)=c("YES","NO","N/A")
levels(data$tracheo_prtrt.factor)=c("YES","NO","N/A")
levels(data$extracorp_prtrt.factor)=c("YES","NO","N/A")
levels(data$rrt_prtrt.factor)=c("YES","NO","N/A")
levels(data$inotrop_cmtrt.factor)=c("YES","NO","N/A")
levels(data$other_cmyn.factor)=c("YES","NO","N/A")
levels(data$bloodgroup.factor)=c("A","B","AB","O","N/K")
levels(data$treatment_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$vrialpneu_ceoccur.factor)=c("YES","NO","N/A")
levels(data$bactpneu_ceoccur.factor)=c("YES","NO","N/A")
levels(data$ards_ceoccur.factor)=c("YES","NO","N/A")
levels(data$cryptogenic_ceterm.factor)=c("YES","NO","N/A")
levels(data$pneumothorax_ceterm.factor)=c("YES","NO","N/A")
levels(data$pleuraleff_ceterm.factor)=c("YES","NO","N/A")
levels(data$bronchio_ceterm.factor)=c("YES","NO","N/A")
levels(data$meningitis_ceterm.factor)=c("YES","NO","N/A")
levels(data$seizure_ceterm.factor)=c("YES","NO","N/A")
levels(data$stroke_ceterm.factor)=c("YES","NO","N/A")
levels(data$neuro_comp.factor)=c("YES","NO","N/A")
levels(data$heartfailure_ceterm.factor)=c("YES","NO","N/A")
levels(data$endocarditis_aeterm.factor)=c("YES","NO","N/A")
levels(data$myocarditis_ceterm.factor)=c("YES","NO","N/A")
levels(data$cardiomyopathy_ceterm.factor)=c("YES","NO","N/A")
levels(data$arrhythmia_ceterm.factor)=c("YES","NO","N/A")
levels(data$ischaemia_ceterm.factor)=c("YES","NO","N/A")
levels(data$cardiacarrest_ceterm.factor)=c("YES","NO","N/A")
levels(data$bacteraemia_ceterm.factor)=c("YES","NO","N/A")
levels(data$coagulo_ceterm.factor)=c("YES","NO","N/A")
levels(data$aneamia_ceterm.factor)=c("YES","NO","N/A")
levels(data$rhabdomyolsis_ceterm.factor)=c("YES","NO","N/A")
levels(data$renalinjury_ceterm.factor)=c("YES","NO","N/A")
levels(data$gastro_ceterm.factor)=c("YES","NO","N/A")
levels(data$pancreat_ceterm.factor)=c("YES","NO","N/A")
levels(data$liverdysfunction_ceterm.factor)=c("YES","NO","N/A")
levels(data$hyperglycemia_aeterm.factor)=c("YES","NO","N/A")
levels(data$hypoglycemia_ceterm.factor)=c("YES","NO","N/A")
levels(data$other_ceoccur.factor)=c("YES","NO","N/A")
levels(data$complications_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$recruitment.factor)=c("Yes","No")
levels(data$study_2.factor)=c("Yes","No")
levels(data$study_3.factor)=c("Yes","No")
levels(data$study_participation_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$dsterm.factor)=c("Discharged alive","Hospitalisation (New CRF: Remains in Hospital &geq; Day 28 after symptom onset)","Transfer to other facility","Death","Palliative discharge","Unknown")
levels(data$dshosp.factor)=c("Ongoing health care needs relating to this admission for COVID-19","Medically fit for discharge (COVID-19 resolved) but remains in hospital for other reason (e.g. awaiting suitable care in community, resident in long term health care or mental health facility)")
levels(data$dsstdtcyn.factor)=c("Yes","No","N/A")
levels(data$suppds_qval.factor)=c("Same as before illness","Worse","Better","N/A")
levels(data$oxygen_proccur.factor)=c("YES","NO","N/A")
levels(data$renal_proccur.factor)=c("YES","NO","N/A")
levels(data$other_cmoccur.factor)=c("YES","NO","N/A")
levels(data$siteidnk.factor)=c("N/K")
levels(data$siteyn.factor)=c("Yes","No","N/A")
levels(data$subjidcat.factor)=c("Same as the above","Different","N/K")
levels(data$outcome_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$core_additional_information_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$withdtype.factor)=c("Withdrawal from samples only","Other  Please specify:")
levels(data$withdrawal_form_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$consent_given.factor)=c("Yes","No")
levels(data$consent_mode___1.factor)=c("Unchecked","Checked")
levels(data$consent_mode___2.factor)=c("Unchecked","Checked")
levels(data$consent_mode___3.factor)=c("Unchecked","Checked")
levels(data$consent_mode___4.factor)=c("Unchecked","Checked")
levels(data$consent_mode___5.factor)=c("Unchecked","Checked")
levels(data$consent_mode___6.factor)=c("Unchecked","Checked")
levels(data$consent_mode___7.factor)=c("Unchecked","Checked")
levels(data$consent_mode___8.factor)=c("Unchecked","Checked")
levels(data$consent_mode___9.factor)=c("Unchecked","Checked")
levels(data$consent_mode___10.factor)=c("Unchecked","Checked")
levels(data$consent_mode___11.factor)=c("Unchecked","Checked")
levels(data$consent_optcondit___1.factor)=c("Unchecked","Checked")
levels(data$consent_optcondit___2.factor)=c("Unchecked","Checked")
levels(data$consent_optcondit___3.factor)=c("Unchecked","Checked")
levels(data$consent_optcondit___4.factor)=c("Unchecked","Checked")
levels(data$consent_ctu_dms_complete.factor)=c("Incomplete","Unverified","Complete")
