CLASS zbabakd_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbabakd_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA variable TYPE String.
  variable = 'Hello World'.

  out->write( variable ).

  DATA(variable2) = 2.
  DATA(variable3) = 7.

    IF variable2 = 7.
        out->write( variable2 ).
    ENDIF.

  out->write( variable2 - variable3 ).

  DATA(string) = 'Ghays Alnema'.

  CASE string.
    WHEN 'Ghays'.
        out->write( 'Ghays Schawarma GmbH' ).
    WHEN OTHERS.
        out->write( 'Ghays ist von Israel.' ).
  ENDCASE.

  DATA flight TYPE /dmo/flight.
DATA flights TYPE /dmo/t_flight.

flights = VALUE #(
  ( carrier_id = 'LH' connection_id = '0400' flight_date = '20231013' )
  ( carrier_id = 'LH' connection_id = '0401' flight_date = '20230928' ) ).

" Read single entry
flight = flights[ 1 ].
flight = flights[ carrier_id = 'LH' connection_id = '0401' flight_date = '20230928' ].

" Read multiple entries
LOOP AT flights INTO flight WHERE flight_date >= '20230101'.
  out->write( flight-carrier_id ).
ENDLOOP.


  ENDMETHOD.
ENDCLASS.

