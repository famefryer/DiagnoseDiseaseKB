
start :- 
      writeln('Welcome to disease diagnosis system.'),
      writeln('Please answers quetions with yes or no.'),
      hypothesize(Disease),
      nl,
      write('You might have this disease: '),
      write(Disease),
      nl,
      getMedicine(Disease),
      undo.


/* hypotheses to be tested */
hypothesize(cold)     :- cold, !.
hypothesize(diarrhea) :- diarrhea, !.
# hypothesize(flu)      :- flu.
# hypothesize(cholera)  :- cholera.
hypothesize(aphthous_ulcer):- aphthous_ulcer, !.
hypothesize(unknown).             /* no diagnosis */

/* disease identification rules */
# flu :- cold,
#        verify(body_aches).
# cholera :- diarrhea,
#            verify(nausea).
cold :- verify(runny_nose),
        verify(headache),
        verify(fever),
        verify(cough),
        verify(sore_throat).

diarrhea :- verify(watery_stools),
            verify(bloating),
            verify(abdominal_pain),
            verify(fever).

/* how to ask questions */
ask(Question) :-
    write('Does you have the following symptom: '),
    write(Question),
    write('? '),
    nl,
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).


cureBy(cold,tiffy).
cureBy(cold,tylenol).
cureBy(diarrhea,carbon).
cureBy(diarrhea,disento).

getMedicine(Disease) :-
    write('Medicines : (')->
    foreach(cureBy(Disease,X),write(X)->write(','))->
    write(')').

undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.