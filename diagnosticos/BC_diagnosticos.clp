(defrule regla_1
    (paciente tiene_fiebre)
    (paciente tiene_tos)
=>
    (assert (diagnostico tiene_gripe))
)

(defrule regla_2
    (paciente tiene_congestion)
    (paciente tiene_estornudos)
=>
    (assert (diagnostico tiene_resfriado))
)

(defrule regla_3
    (paciente tiene_dolor_de_garganta)
    (paciente tiene_fiebre)
=>
    (assert (diagnostico tiene_amigdalitis))
)

(defrule regla_4
    (diagnostico tiene_gripe)
=>
    (assert (tratamiento paracetamol))
)

(defrule regla_5
    (diagnostico tiene_amigdalitis)
=>
    (assert (tratamiento antibiotico))
)

(defrule regla_6
    (diagnostico tiene_resfriado)
=>
    (assert (tratamiento mucho_liquido))
)

(defrule regla_7
    (diagnostico ?x)
    (tratamiento ?y)
=>
    (printout t "El diagnostico es " ?x crlf)
    (printout t "Tomar " ?y crlf)
)