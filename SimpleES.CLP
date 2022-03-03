(defrule dizzy
    =>
    (printout t crlf "Apakah anda sering merasa pusing dan lemas? : " crlf "1(iya)" crlf "2(tidak)" crlf)
    (bind ?x (read))
    (if (= ?x 1)
        then (assert(dizzy yes))
    ) (if (= ?x 2)
        then (assert (dizzy no))
    )
)

(defrule mual (dizzy yes)
    =>
    (printout t crlf "Apakah anda sering merasa mual? : " crlf "1(iya)" crlf "2(tidak)" crlf)
    (bind ?x (read))
    (if (= ?x 1)
        then (printout t crlf "Kemungkinan besar anda mengidap penyakit anemia!" crlf)
    ) (if (= ?x 2)
        then (printout t crlf "Tidur yang cukup (7-9 jam/hari) dan jangan terlalu larut malam!" crlf))
)

(defrule batuk (dizzy no)
    =>
    (printout t crlf "Apakah anda sering merasa batuk di malam hari? : " crlf "1(iya)" crlf "2(tidak)" crlf)
    (bind ?x (read))
    (if (= ?x 1)
        then (assert(batuk yes))
    ) (if (= ?x 2)
        then (printout t crlf "Selamat! Anda dalam kondisi yang sehat! Selalu jaga kesehatan anda!" crlf)
    )
)

(defrule denyut (batuk yes)
    =>
    (printout t crlf "Apakah denyut jantung anda menjadi semakin cepat (> 120/menit saat istirahat)? : " crlf "1(iya)" crlf "2(tidak)" crlf)
    (bind ?x (read))
    (if (= ?x 1)
        then (printout t crlf "Kemungkinan besar anda mengidap penyakit gagal jantung!" crlf)
    ) (if (= ?x 2)
        then (printout t crlf "Istirahat yang cukup dan perbanyak minum air putih!" crlf)
    )
)



