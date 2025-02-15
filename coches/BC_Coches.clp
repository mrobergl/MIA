;Regla 1: Si el motor recibe gasolina y el motor no da vueltas entonces el problema está en las bujías.

(defrule regla_1
      (motor recibe_gasolina)
      (motor no_da_vueltas)
=>
      (assert (problema bujias))
)

;Regla 2: Si el motor no da vueltas y las luces no se encienden entonces el problema está en la batería o los cables.

(defrule regla_2
      (motor no_da_vueltas)
      (luces no_encienden)
=>
      (assert (problema bateria_o_cables))
)

;Regla 3: Si el motor no da vueltas y las luces se encienden entonces el problema está en el arrancador.

(defrule regla_3
       (motor no_da_vueltas)
       (luces encienden)
=>
      (assert (problema arrancador))
)

;Regla 4: Si hay gasolina en el deposito y hay gasolina en el carburador entonces el motor recibe gasolina.

(defrule regla_4
      (gasolina_en_deposito)
      (gasolina_en_carburador)
=>
      (assert (motor recibe_gasolina))
)

;Regla 5: Si no oigo ruido del motor entonces el motor no da vueltas.

(defrule regla_5
     (no_oigo_ruido_motor)
=>
     (assert (motor no_da_vueltas))
)

;Regla 6: Se imprime por pantalla la variable que acompaña a "problema" si se ha activado mediante "assert".

(defrule regla_6
(problema ?x)
=>
(printout t "El problema es de " ?x crlf)
)

