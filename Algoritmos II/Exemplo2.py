import random

class MyList(list):
    def choice(self):
        return random.choice(self)