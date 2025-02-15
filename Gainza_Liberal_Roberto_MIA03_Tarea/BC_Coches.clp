(defrule regla_electrico
    (motor_no_arranca)
    (luces_no_encienden)
=>
    (assert (problema electrico))
)

(defrule regla_combustion
    (motor_no_arranca)
=>
    (assert (problema combustion))
)

(defrule regla_bateria
    (luces_no_encienden)
=>
    (assert (problema bateria_mal_estado))
)

(defrule regla_revisar_taller_combustion_bateria
    (problema bateria_mal_estado)
    (problema combustion)
=>
    (assert (diagnostico revisar_en_taller "combustion y bateria"))
)

(defrule regla_revisar_taller_electrico
    (problema electrico)
=>
    (assert (diagnostico revisar_en_taller "electricidad"))
)

(defrule regla_revisar_solo_combustion
    (problema combustion)
=>
    (assert (diagnostico revisar_en_taller "combustion"))
)


(defrule regla_diagnostico
    (diagnostico ?accion ?detalles)
=>
    (printout t "El diagnostico es: " ?accion crlf)
    (printout t "Detalles: Revisar problemas relacionados con " ?detalles crlf)
)