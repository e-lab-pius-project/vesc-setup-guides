; Extended CAN ID 0x10000107 is an example; reserve an unused ID on your bus.
; Payload: signed int32, big-endian, 0.01 km/h per count.
(define speed-data (bufcreate 4))

(loopwhile t
  (progn
    ; m/s * 3.6 * 100 = 0.01 km/h units.
    (bufset-i32 speed-data 0 (* (get-speed) 360.0))
    (can-send-eid 0x10000107u32 speed-data)
    (sleep 0.02)))
