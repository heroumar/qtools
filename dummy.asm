@  Апплет для проверки функционирования загрузчика
@
@ На входе:
@ R0 = адрес начала данного кода (точки start)
@ R1 = адрес ответного буфера
@
@ Возвращает ответ 12
@

      .org    0	
      .byte   0,0 	  @ выравнивающие байты - отрезаются от объектного модуля
      .byte   0x11,0      @ код команды 11 и выравнивающий байт - это остается в объектном модуле

start: 
       MOV	R0,#0x12;
       STRB	R0,[R1]
       MOV	R4,#1
       BX       LR
