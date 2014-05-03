%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GENEALOGY %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% House Stark %%%%%%%%%%%%%%%%

male(rickard_stark).
male(eddard_stark).
male(brandon_stark).
female(lyanna_stark).
male(benjen_stark).
child(eddard_stark, rickard_stark).
child(brandon_stark, rickard_stark).
child(lyanna_stark, rickard_stark).
child(benjen_stark, rickard_stark).
female(catelyn_stark).
female(wylla).
married_raw(catelyn_stark, eddard_stark).
male(robb_stark).
male(bran_stark).
male(rickon_stark).
male(jon_snow).
female(arya_stark).
female(sansa_stark).
child(robb_stark, catelyn_stark).
child(robb_stark, eddard_stark).
child(sansa_stark, catelyn_stark).
child(sansa_stark, eddard_stark).
child(bran_stark, catelyn_stark).
child(bran_stark, eddard_stark).
child(arya_stark, catelyn_stark).
child(arya_stark, eddard_stark).
child(rickon_stark, catelyn_stark).
child(rickon_stark, eddard_stark).
child(jon_snow, eddard_stark).
child(jon_snow, wylla).

%%%%%%%%%%%%%%%% House Tully %%%%%%%%%%%%%%%%

male(hoster_tully).
female(minisa_tully).
married_raw(hoster_tully, minisa_tully).
female(lysa_arryn).
male(jon_arryn).
male(robin_arryn).
married_raw(lysa_arryn, jon_arryn).
child(robin_arryn, lysa_arryn).
child(robin_arryn, jon_arryn).
male(edmure_tully).
child(catelyn_stark, hoster_tully).
child(lysa_arryn, hoster_tully).
child(edmure_tully, hoster_tully).
child(catelyn_stark, minisa_tully).
child(lysa_arryn, minisa_tully).
child(edmure_tully, minisa_tully).


%%%%%%%%%%%%%%%% House Baratheon %%%%%%%%%%%%%%%%

male(steffon_baratheon).
female(cassana_baratheon).
male(robert_baratheon).
female(cersei_lannister).
married_raw(robert_baratheon, cersei_lannister).
male(joffrey_baratheon).
male(tommen_baratheon).
female(myrcella_baratheon).
child(joffrey_baratheon, robert_baratheon).
child(myrcella_baratheon, robert_baratheon).
child(tommen_baratheon, robert_baratheon).
child(joffrey_baratheon, cersei_lannister).
child(myrcella_baratheon, cersei_lannister).
child(tommen_baratheon, cersei_lannister).
male(stannis_baratheon).
male(renly_baratheon).
child(robert_baratheon, steffon_baratheon).
child(stannis_baratheon, steffon_baratheon).
child(stannis_baratheon, steffon_baratheon).
child(robert_baratheon, cassana_baratheon).
child(stannis_baratheon, cassana_baratheon).
child(stannis_baratheon, cassana_baratheon).


%%%%%%%%%%%%%%%% House Lannister %%%%%%%%%%%%%%%%

male(tywin_lannister).
female(joanna_lannister).
male(ser_jamie_lannister).
male(tyrion_lannister).
child(ser_jaime_lannister, tywin_lannister).
child(cersei_lannister, tywin_lannister).
child(tyrion_lannister, tywin_lannister).
child(ser_jaime_lannister, joanna_lannister).
child(cersei_lannister, joanna_lannister).
child(tyrion_lannister, joanna_lannister).

%%%%%%%%%%%%%%%% House Tyrell %%%%%%%%%%%%%%%%

male(luthor_tyrell).
female(olenna_tyrell).
married_raw(luthor_tyrell, olenna_tyrell).
male(mace_tyrell).
female(alerie_tyrell).
married_raw(mace_tyrell, alerie_tyrell).
male(willas_tyrell).
male(garlan_tyrell).
male(loras_tyrell).
female(margaery_tyrell).
married_raw(margaery_tyrell, renly_baratheon).
married_raw(margaery_tyrell, joffrey_baratheon).
child(willas_tyrell, mace_tyrell).
child(garlan_tyrell, mace_tyrell).
child(loras_tyrell, mace_tyrell).
child(margaery_tyrell, mace_tyrell).
child(willas_tyrell, alerie_tyrell).
child(garlan_tyrell, alerie_tyrell).
child(loras_tyrell, alerie_tyrell).
child(margaery_tyrell, alerie_tyrell).

%%%%%%%%%%%%%%%% House Targaryen %%%%%%%%%%%%%%%%

male(aerys_II_targaryen).
female(rhaella_targayen).
married_raw(aerys_II_targaryen, rhaella_targayen).
male(rhaegar_targaryen).
female(elia_targaryen).
married_raw(rhaegar_targaryen, elia_targaryen).
male(viserys_III_targayen). 
female(daenerys_targaryen).
male(khal_drogo).
married_raw(daenerys_targaryen, khal_drogo).
child(rhaegar_targaryen, rhaella_targayen).
child(rhaegar_targaryen, aerys_II_targaryen).
child(viserys_III_targayen, rhaella_targayen).
child(viserys_III_targayen, aerys_II_targaryen).
child(daenerys_targaryen, rhaella_targayen).
child(daenerys_targaryen, aerys_II_targaryen).
male(aegon_targaryen).

%%%%%%%%%%%%%%%% House Frey %%%%%%%%%%%%%%%%

male(walder_frey).
female(perra_royce).
female(cyrenna_swann).
female(amarei_crakehall).
female(alyssa_blackwood).
female(sarya_whent).
female(bethany_rosby).
female(annara_farring).
female(joyeuse_erenford).
married_raw(walder_frey, perra_royce).
married_raw(walder_frey, cyrenna_swann).
married_raw(walder_frey, amarei_crakehall).
married_raw(walder_frey, alyssa_blackwood).
married_raw(walder_frey, sarya_whent).
married_raw(walder_frey, bethany_rosby).
married_raw(walder_frey, annara_farring).
married_raw(walder_frey, joyeuse_erenford).
male(stevron_frey).
child(stevron_frey, walder_frey).
child(stevron_frey, perra_royce).
male(emmon_frey).
child(emmon_frey, walder_frey).
child(emmon_frey, perra_royce).
male(aenys_frey).
child(aenys_frey, walder_frey).
child(aenys_frey, perra_royce).
male(perriane_frey).
child(perriane_frey, perra_royce).
child(perriane_frey, perra_royce).
male(jared_frey).
child(jared_frey, walder_frey).
child(jared_frey, cyrenna_swann).
female(luceon_frey).
child(luceon_frey, walder_frey).
child(luceon_frey, cyrenna_swann).
child(hosteen_frey, walder_frey).
female(lythene_frey).
male(symond_frey).
male(danwell_frey).
female(merret_frey).
child(lythene_frey, walder_frey).
child(symond_frey, walder_frey).
child(danwell_frey, walder_frey).
child(merret_frey, walder_frey).
child(hosteen_frey, amarei_crakehall).
child(lythene_frey, amarei_crakehall).
child(symond_frey, amarei_crakehall).
child(danwell_frey, amarei_crakehall).
child(merret_frey, amarei_crakehall).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Relations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

married(X, Y) :- married_raw(X, Y).
married(X, Y) :- married_raw(Y, X).

parent(X, Y) :- child(Y, X).
father(X, Y) :- child(Y, X), male(X).
mother(X, Y) :- child(Y, X), female(X).

sister(X, Y) :- female(X), mother(Z, X), mother(Z, Y), father(W, X), father(W, Y), not(X=Y).
brother(X, Y) :- male(X), mother(Z, X), mother(Z, Y), father(W, X), father(W, Y), not(X=Y).
sibling(X, Y) :- mother(Z, X), mother(Z, Y), father(W, X), father(W, Y), not(X=Y).

stepfather(X, Y) :- male(X), child(Y, Z), married(X, Z), not(father(X, Y)).
stepmother(X, Y) :- female(X), child(Y, Z), married(X, Z), not(mother(X, Y)).
stepchild(X, Y) :- married(Y, Z), child(X, Z), not(child(X, Y)).

halfbrother(X, Y) :- male(X), child(X, Z), child(Y, Z), not(brother(X, Y)), not(X=Y).
halfsister(X, Y) :- female(X), child(X, Z), child(Y, Z), not(sister(X, Y)), not(X=Y).

hybridsibling(X, Y) :- sibling(X, Y).
hybridsibling(X, Y) :- halfsister(X, Y).
hybridsibling(X, Y) :- halfbrother(X, Y).

grandparent(Y, X) :- child(X, Z), child(Z, Y). 

ancestor(Y, X) :- child(X, Y). 
ancestor(Y, X) :- child(X, Z), ancestor(Y, Z). 
descendant(X, Y) :- child(X, Y). 
descendant(X, Y) :- child(X, Z), descendant(Z, Y). 

fatherinlaw(X, Y) :- married(Y, Z), father(X, Z). 
motherinlaw(X, Y) :- married(Y, Z), mother(X, Z). 
sisterinlaw(X, Y) :- married(Y, Z), sister(X, Z). 
sisterinlaw(X, Y) :- female(X), hybridsibling(Y, Z), married(X, Z).
brotherinlaw(X, Y) :- married(Y, Z), brother(X, Z). 
brotherinlaw(X, Y) :- male(X), hybridsibling(Y, Z), married(X, Z).

cousin(X, Y) :- child(X, Z), child(Y, W), hybridsibling(Z, W), not(hybridsibling(X, Y)).
cousinplus(X, Y) :- cousin(X, Y).
cousinplus(X, Y) :- child(X, Z), child(Y, W), cousinplus(Z, W), not(X=Y), not(hybridsibling(X,Y)).

uncle(X, Y) :- male(X), child(Y, Z), hybridsibling(X, Z), not(father(X, Y)). 
aunt(X, Y) :- female(X), child(Y, Z), hybridsibling(X, Z), not(mother(X, Y)). 
uncleplus(X, Y) :- uncle(X, Y).
auntplus(X, Y) :- aunt(X, Y).
auntplus(X, Y) :- child(Y, Z), sister(X, Z).
auntplus(X, Y) :- female(X), child(Y, Z), cousinplus(X, Z).

niece(X, Y) :- uncle(Y, X), female(X).
niece(X, Y) :- aunt(Y, X), female(X).
nephew(X, Y) :- uncle(Y, X), male(X).
nephew(X, Y) :- aunt(Y, X), male(X).

nieceplus(X, Y) :- female(X), uncleplus(Y, X).
nieceplus(X, Y) :- female(X), auntplus(Y, X).

nephewplus(X, Y) :- male(X), uncleplus(Y, X).
nephewplus(X, Y) :- male(X), auntplus(Y, X).