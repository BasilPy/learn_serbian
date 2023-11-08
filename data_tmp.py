class verb:
    def __init__(self, I_, Y_ti, S_H_it, We, Y_vi, Th):
        self.I_ = I_
        self.Y_ti = Y_ti
        self.S_H_it = S_H_it
        self.We = We
        self.Y_vi = Y_vi
        self.Th = Th

    def return_list(self):
        return [self.I_,  self.Y_ti, self.S_H_it, self.We, self.Y_vi, self.Th]

v0_biti = ('', '', '', '', '', '')
v1_imati = verb("imam", 'imaš', 'ima', 'imamo', 'imate', 'imaju')
#print(imati.return_list())
v0_biti = ('', '', '', '', '', '')