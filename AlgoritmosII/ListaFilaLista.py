class Pilha():
    def __init__(self):
        self.data = []

    def push(self, x):
        self.data.append(x)

    def pop(self):
        if len(self.data) > 0:
            return self.data.pop(-1)

    def empty(self):
        return len(self.data) > 0


p = Pilha()
q = Pilha()
for i in range(5):
    if i % 2 == 0:
        p.push(i)
    else:
        q.push(i)
while p.empty():
    q.push(p.pop())
while q.empty():
    print(q.pop())