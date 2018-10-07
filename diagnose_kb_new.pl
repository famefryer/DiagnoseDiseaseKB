
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
hypothesize(migraine) :- migraine, !.
hypothesize(diarrhea) :- diarrhea, !.
hypothesize(muscular_pain) :- muscular_pain, !.
hypothesize(skin_scratch) :- skin_scratch, !.
hypothesize(urticaria) :- urticaria, !.
hypothesize(motion_sick) :- motion_sick, !.
hypothesize(dyspepsia) :- dyspepsia, !.
hypothesize(aphthous_ulcer):- aphthous_ulcer, !.
hypothesize(unknown).             /* no diagnosis */

/* disease identification rules */
cold :- verify(headache),
        verify(runny_nose),
        verify(fever),
        verify(cough),
        verify(sore_throat).

migraine :- verify(oneside_headache),
            verify(throbbing_pain_headache).

diarrhea :- verify(watery_stools),
            verify(bloating),
            verify(abdominal_pain),
            verify(fever).

aphthous_ulcer :- verify(hurt_in_mouth),
                  verify(hurt_in_lips),
                  verify(hurt_in_tongue).

muscular_pain :- verify(muscle_strain),
                 verify(legache),
                 verify(armache).
skin_scratch :- verify(pain_at_wound),
                verify(blood_at_wound).

motion_sick :- verify(dizziness),
               verify(vomiting).

urticaria :- verify(skin_colored_welts),
                  verify(skin_itchy).

dyspepsia :- verify(upper_abdominal_pain),
             verify(abdominal_distention),
             verify(bloating).

                      
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
cureBy(aphthous_ulcer,trinolone).
cureBy(aphthous_ulcer,kanolone).
cureBy(muscular_pain,nurofen).
cureBy(muscular_pain,counter_pain).
cureBy(skin_scratch,betadine).
cureBy(motion_sick,dimenhydrinate).
cureBy(urticaria,Chlorpheniramine).
cureBy(migraine,triptans).
cureBy(dyspepsia,prevacid).

getMedicine(Disease) :-
    write('Medicines : (')->
    foreach(cureBy(Disease,X),write(X)->write(','))->
    write(')').

undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.