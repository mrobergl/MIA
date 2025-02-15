(defrule regla_1
      (motor_no_arranca)
      (luces_no_encienden)
=>
      (assert (problema_electrico))
)

(defrule regla_2
      (motor_no_arranca)
=>
      (assert (problema_combustion))
)

(defrule regla_3
      (luces_no_encienden)
=>
      (assert (problema_bateria_mal_estado))
)

(defrule regla_4
      (problema_bateria_mal_estado)
      (problema_combustion)
=>
      (assert (diagnostico revisar_en_taller))
)

(defrule regla_5
      (problema_electrico)
=>
      (assert (diagnostico revisar_en_taller))
)

(defrule regla_6
    (declare (salience 100))
    (diagnostico ?y)
=>
    (printout t "El diagnostico es " ?y crlf)
)