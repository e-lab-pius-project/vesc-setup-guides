; Run in the VESC Tool LispBM REPL. Does not send CAN or command the motor.
; -10 m/s = -36 km/h = -3600 counts = FF FF F1 F0.
(define test-data (bufcreate 4))
(bufset-i32 test-data 0 (* -10.0 360.0))
(and
  (= (bufget-u8 test-data 0) 255)
  (= (bufget-u8 test-data 1) 255)
  (= (bufget-u8 test-data 2) 241)
  (= (bufget-u8 test-data 3) 240))
; Expected result: t
