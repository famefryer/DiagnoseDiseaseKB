:- module(facts,[]).

disease(cold).
disease(diarrhea).
disease(aphthous_ulcer).
disease(muscular_pain).
disease(skin_scratch).
disease(motion_sick).
disease(urticaria).
disease(migraine).
disease(dyspepsia).
disease(scald).
disease(diabetes_mellitus).
disease(unknown).

symptom(runny_nose,cold).
symptom(headache,cold).
symptom(stomach_ache,cold).
symptom(fever,cold).
symptom(cough,cold).
symptom(sore_throat,cold) .
symptom(bloating,diarrhea) .
symptom(abdominal_pain,diarrhea) .
symptom(hurt_in_mouth,aphthous_ulcer).
symptom(hurt_in_lips,aphthous_ulcer).
symptom(hurt_in_tongue,aphthous_ulcer).
symptom(muscle_strain,muscular_pain).
symptom(legache,muscular_pain).
symptom(armache,muscular_pain).
symptom(pain_at_wound,skin_scratch).
symptom(blood_at_wound,skin_scratch).
symptom(dizziness,motion_sick).
symptom(vomiting,motion_sick).
symptom(skin_colored_welts,urticaria).
symptom(skin_itchy,urticaria).
symptom(oneside_headache,migraine).
symptom(throbbing_pain_headache,migraines).
symptom(upper_abdominal_pain.dyspepsia).
symptom(abdominal_distention,dyspepsia).
symptom(bloating,dyspepsia).
symptom(red_skin,scald).
symptom(peeling_skin,scald).
symptom(increased_thirst,diabetes_mellitus).
symptom(frequent_urination,diabetes_mellitus).
symptom(extreme_hunger,diabetes_mellitus).
symptom(muscle_aches, disease).
symptom(fatigue, disease).
symptom(unknown).

medicine(tiffy, cold).
medicine(tylenol, cold).
medicine(carbon, diarrhea) .
medicine(disento, diarrhea).
medicine(trinolone,aphthous_ulcer).
medicine(kanolone,aphthous_ulcer).
medicine(nurofen,,muscular_pain).
medicine(betadine,skin_scratch).
medicine(dimenhydrinate,motion_sick ).
medicine(Chlorpheniramine,urticaria).
medicine(triptans,migraine).
medicine(prevacid,dyspepsia).
medicine(burnol_plus,scald).
medicine(insulin_injecton, disease).
medicine(unknown).

