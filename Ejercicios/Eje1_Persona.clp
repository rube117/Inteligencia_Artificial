(deftemplate MAIN::persona
   (slot nombre)
   (slot edad)
   (slot sexo)
   (slot pasatiempo))

(deffacts MAIN::persona
   (persona (nombre Angy) (edad 22) (sexo femenino) (pasatiempo leer))
   (persona (nombre Ivan) (edad 23) (sexo masculino) (pasatiempo correr))
   (persona (nombre Ruben) (edad 21) (sexo masculino) (pasatiempo correr))
   (persona (nombre Antonio) (edad 26) (sexo masculino) (pasatiempo leer))
   (persona (nombre Paola) (edad 26) (sexo femenino) (pasatiempo celular))
   (persona (nombre Diego) (edad 26) (sexo masculino) (pasatiempo videojuegos)))

(defrule MAIN::pasatiempo-leer
   (persona (nombre ?nombre) (pasatiempo leer))
   =>
   (printout t ?nombre ", su pasatiempo es: leer" crlf))

(defrule MAIN::pasatiempo-correr
   (persona (nombre ?nombre) (pasatiempo correr))
   =>
   (printout t ?nombre ", su pasatiempo es: correr" crlf))

