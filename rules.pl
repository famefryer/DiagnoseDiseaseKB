:- use_module(facts,[]).

symptomOf(Symptom,Disease):-
  facts:symptom(Symptom,Disease).

cureBy(Medicine,Diease):-
  facts:medicine(Medicine, Diease).

