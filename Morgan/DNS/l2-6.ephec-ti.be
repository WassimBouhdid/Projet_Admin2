$ORIGIN l2-6.ephec-ti.be.
$TTL  604800
@       IN      SOA     ns.l2-6.ephec-ti.be. he201896.students.ephec.be. (
                        1       ; Serial
                        604800  ; Refresh
                        86400   ; Retry
                        2419200 ; Expire
			604800 ); Negative Cache TTL			
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
