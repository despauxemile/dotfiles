#!/usr/bin/python

import os
import math
from power import get_power_draw

def main():
    f = open("/sys/class/power_supply/BAT0/charge_full", "r")
    full = int(f.read())
    f.close()

    f = open("/sys/class/power_supply/BAT0/charge_now", "r")
    now = int(f.read()) / 100000
    f.close()

    pow = get_power_draw()

    hrs_full = now / pow
    hrs = math.floor(hrs_full)
    remain = hrs_full - hrs
    mins = round(remain * 60)

    print(f"{hrs} hours, {mins} minutes")
main()
