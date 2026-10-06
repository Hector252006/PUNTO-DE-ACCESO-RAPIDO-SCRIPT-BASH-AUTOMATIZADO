#!/bin/bash
echo "Bienvenido Hector q quieres hacer con p0rtAP [start][stop][status]"
read -p "introduce una opcion valida [start][stop][status]" opcion
case "$opcion" in
        start)
                pass=""
                        while [ -z "$pass" ] || [ ${#pass} -lt 12 ]; do
                                read -p "introduce la contraseña para la red wifi" pass

                                if [ -z "$pass" ];

                                        then
                                                echo "no has introducido ninguna contraseña"
                                        else
                                                if [ ${#pass} -lt 12 ];
                                                        then
                                                                echo "has introducido una contraseña con menos de 12 caracteres"
                                                fi
                                fi

                        done

                                sudo nmcli device wifi hotspot ifname wlo1 ssid p0rtAP password "$pass"
        ;;
        stop)
                sudo nmcli connection down Hotspot
        ;;
        status)
                if nmcli connection show --active | grep "Hotspot" ; then
                        echo "el punto de acceso esta activo"
                        nmcli connection show
                else
                        echo "el punto de acceso no esta activo"
                fi
        ;;
        *)
                echo "opcion no valida"
                ;;
esac