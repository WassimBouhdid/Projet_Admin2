$ORIGIN l2-6.ephec-ti.be.
$TTL 3H 
@       IN      SOA     ns.l2-6.ephec-ti.be. he201896.students.ephec.be. (
                        0       ; serial
                        3H      ; refresh
                        1H      ; retry
                        1W     	; expire
			3H )	; minimum			
;
; NS configs
            IN      NS      ns.l2-6.ephec-ti.be.
            IN      MX  10  mail
ns          IN      A       135.125.101.238


; Web
b2b         IN      A       51.210.4.175
www         IN      A       51.210.4.175

; Mail
mail        IN      A       135.125.101.188
smtp        IN      CNAME   mail


;VoIP
_sip._udp	SRV     0       0       5060        sip 
_sip._tcp 	SRV     0       0       5060        sip
sip 		IN	    A	    135.125.101.238
