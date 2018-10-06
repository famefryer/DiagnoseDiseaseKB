symptom(runny_nose).
symptom(headache).
symptom(stomach_ache).
symptom(fever).
symptom(cough).
symptom(sore_throat) .
symptom(bloating) .
symptom(abdominal_pain) .
symptom(unknown).

medicine(tiffy).
medicine(carbon).
medicine(tylenol) .
medicine(disento). 
medicine(unknown).

disease(cold). 
disease(diarrhea).
disease(unknown).

symptomOf(cold, fever).
symptomOf(cold, headache).
symptomOf(cold, runny_nose).
symptomOf(cold, cough).
symptomOf(cold, sore_throat).

symptomOf(diarrhea, bloating).
symptomOf(diarrhea, abdominal_pain).
symptomOf(diarrhea, fever).

cureBy(cold,tiffy).
cureBy(cold,tylenol).
cureBy(diarrhea,carbon).
cureBy(diarrhea,disento).

getMedicine(Disease) :-
    write('Medicines : (')->
    foreach(cureBy(Disease,X),write(X)->write(' '))->
    write(')').
    
    # - ตรีมิตร์ ควงพริ้ว since 1997 -
diagnosis(Symptom) :-
    (symptomOf(cold, Symptom) -> writeln('You have cold.')->getMedicine(cold));
    (symptomOf(diarrhea, Symptom) -> writeln('You have diarrhea.')->getMedicine(diarrhea)).

verify() :-
   writeln('asd').

start :- 
    [head] = List,
    writeln('Please Input your symptom?'),
    read(Res),
    member(Res,List)->writeln(List).
