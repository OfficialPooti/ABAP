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

  DATA(string) = 'Ghayss'.

  CASE string.
    WHEN 'Ghays'.
        out->write( 'Ghays Schawarma GmbH' ).
    WHEN OTHERS.
        out->write( 'Ghays ist von Israel.' ).
  ENDCASE.


  ENDMETHOD.
ENDCLASS.

