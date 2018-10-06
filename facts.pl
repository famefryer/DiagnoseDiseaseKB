:- module(facts,[]).

disease(cold).
disease(diarrhea).
disease(unknown).

symptom(runny_nose,cold).
symptom(headache,cold).
symptom(stomach_ache,cold).
symptom(fever,cold).
symptom(cough,cold).
symptom(sore_throat,cold) .
symptom(bloating,diarrhea) .
symptom(abdominal_pain,diarrhea) .
symptom(unknown).

medicine(tiffy, cold).
medicine(tylenol, cold).
medicine(carbon, diarrhea) .
medicine(disento, diarrhea).
medicine(unknown).

