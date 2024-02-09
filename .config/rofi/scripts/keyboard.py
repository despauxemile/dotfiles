import os

class Keyboard:
    def __init__(self, name, lyt, var):
        self.name = name
        self.lyt = lyt
        self.var = var

    def __str__(self):
        return self.name

    def use(self):
        if (self.var)
            return f"-layout {self.lyt} -variant {self.var}"

        return f"-layout {self.lyt}"


def main():

    kblist = [
        Keyboard("US", "us", 0),
        Keyboard("Canada - Multix", "ca", "multix")
    ]

    proc = os.popen(' | rofi -dmenu -format i -p "Keyboard Layout"')
    res = proc.read().strip('\n');

    print(res)

main()
