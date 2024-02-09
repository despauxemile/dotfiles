#!/usr/bin/python

def get_power_draw():
    f = open("/sys/class/power_supply/BAT0/current_now", "r")
    cur = int(f.read())
    f.close()
    f = open("/sys/class/power_supply/BAT0/voltage_now", "r")
    volt = int(f.read())
    f.close()

    pow = cur * volt / 1000000 / 1000000
    return pow

if __name__ == "__main__":
    print("{:.2f}".format(get_power_draw()))
