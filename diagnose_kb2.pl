/* animal.pro
  animal identification game.  

    start with ?- go.     */

go :- hypothesize(Disease),
      nl,
      write('You might have this disease: '),
      write(Disease),
      nl,
      undo.


/* hypotheses to be tested */
hypothesize(cold)     :- cold, !.
hypothesize(diarrhea) :- diarrhea, !.
# hypothesize(flu)      :- flu.
# hypothesize(cholera)  :- cholera.
hypothesize(unknown).             /* no diagnosis */

/* animal identification rules */
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

# mammal    :- verify(has_hair), !.
# mammal    :- verify(gives_milk).
# bird      :- verify(has_feathers), !.
# bird      :- verify(flys), 
#              verify(lays_eggs).
# carnivore :- verify(eats_meat), !.
# carnivore :- verify(has_pointed_teeth), 
#              verify(has_claws),
#              verify(has_forward_eyes).
# ungulate :- mammal, 
#             verify(has_hooves), !.
# ungulate :- mammal, 
#             verify(chews_cud).

/* how to ask questions */
ask(Question) :-
    write('Does you have the following symptoms: '),
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

undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.