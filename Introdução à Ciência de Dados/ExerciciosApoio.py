import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import StandardScaler
plt.rcParams['figure.figsize']=[15,10]


url = 'https://raw.githubusercontent.com/higoramario/univesp-com410-aprendizado-de-maquinas/main/rice-classification.csv'
arroz = pd.read_csv(url, sep=',')
arroz.head()

arroz['Class'].plot.hist()
#plt.show()


atributos_todos = arroz[['Area','MajorAxisLength','MinorAxisLength','Eccentricity','ConvexArea','EquivDiameter','Extent','Perimeter','Roundness','AspectRation']]
classes = arroz['Class']

arroz_treino_todos, arroz_teste_todos, classes_treino_todos, classes_teste_todos = train_test_split(atributos_todos, classes, test_size = 0.1)


scaler = StandardScaler()

arroz_treino_todos = scaler.fit_transform(arroz_treino_todos)

arroz_teste_todos = scaler.transform(arroz_teste_todos)

SVM_polinomial_todos = SVC(kernel = 'poly', degree = 3, gamma = 'scale', C = 1.0, coef0 = 2)

SVM_polinomial_todos.fit(arroz_treino_todos, classes_treino_todos)

predicao_todos = SVM_polinomial_todos.predict(arroz_teste_todos)
acuracia_todos = accuracy_score(classes_teste_todos,predicao_todos)

print('Acurácia de classificação com os todos atributos: {}'.format(round(acuracia_todos,3)*100)+'%')

atributos = arroz[['Area','MajorAxisLength']]

classes = arroz['Class']

arroz_treino, arroz_teste, classes_treino, classes_teste = train_test_split(atributos, classes, test_size = 0.1)

scaler = StandardScaler()

arroz_treino = scaler.fit_transform(arroz_treino)

arroz_teste = scaler.transform(arroz_teste)

SVM_linear = SVC(kernel = 'linear', C = 0.2)

SVM_linear.fit(arroz_treino, classes_treino)

predicao_linear = SVM_linear.predict(arroz_teste)

acuracia_linear = accuracy_score(classes_teste,predicao_linear)

print('Acurácia de classificação da SVM linear com dois atributos: {}'.format(round(acuracia_linear,3)*100)+'%')

#função que recebe os atributos e classes do conjunto de testes, o classificador SVM e plota os resultados

def visualizarSVM(atributos_t,classes_t,classificador):

    atributos, classes = atributos_t, classes_t

    ano, salario = np.meshgrid(np.arange(start = atributos[:, 0].min() - 1, stop = atributos[:, 0].max() + 1, step = 0.01), np.arange(start = atributos[:, 1].min() - 1, stop = atributos[:, 1].max() + 1, step = 0.01))
    plt.contourf(ano, salario, classificador.predict(np.array([ano.ravel(), salario.ravel()]).T).reshape(ano.shape), alpha = 0.75, cmap = ListedColormap(('red', 'green')))
    plt.xlim(ano.min(), ano.max())
    plt.ylim(salario.min(), salario.max())

    for i, j in enumerate(np.unique(classes)):
        plt.scatter(atributos[classes == j, 0], atributos[classes == j, 1], color = ListedColormap(('red', 'green'))(i), label = j)
        plt.title('Classificação SVM')
        plt.xlabel('Ano')
        plt.ylabel('Salário estimado')
        plt.legend()
        plt.show()


visualizarSVM(arroz_teste, classes_teste, SVM_linear)
"""
#fig, ax = plt.subplots()
#colors = {0:'red', 1:'green'}
#ax.scatter(compras['Age'], compras['EstimatedSalary'], c=compras['Purchased'].map(colors))
#plt.show()

atributos = compras[['Age','EstimatedSalary']]
classes = compras['Purchased']
compras_treino, compras_teste, classes_treino, classes_teste = train_test_split(atributos, classes, test_size =
0.1)

scaler = StandardScaler()
compras_treino = scaler.fit_transform(compras_treino)
compras_teste = scaler.transform(compras_teste)

def visualizarSVM(atributos_t,classes_t,classificador):
    atributos, classes = atributos_t, classes_t
    ano, salario = np.meshgrid(np.arange(start = atributos[:, 0].min() - 1, stop = atributos[:, 0].max() + 1, step =
    0.01),
    np.arange(start = atributos[:, 1].min() - 1, stop = atributos[:, 1].max() + 1, step = 0.01))
    plt.contourf(ano, salario, classificador.predict(np.array([ano.ravel(), salario.ravel()]).T).reshape(ano.shape),
    alpha = 0.75, cmap = ListedColormap(('red', 'green')))
    plt.xlim(ano.min(), ano.max())
    plt.ylim(salario.min(), salario.max())
    for i, j in enumerate(np.unique(classes)):
        plt.scatter(atributos[classes == j, 0], atributos[classes == j, 1],
    color = ListedColormap(('red', 'green'))(i), label = j)
    plt.title('Classificação SVM')
    plt.xlabel('Ano')
    plt.ylabel('Salário estimado')
    plt.legend()
    plt.show()

SVM_polinomial = SVC(kernel = 'poly', degree = 3, gamma = 'scale', C = 1.0, coef0 = 2)
SVM_polinomial.fit(compras_treino, classes_treino)

predicao = SVM_polinomial.predict(compras_teste)
acuracia = accuracy_score(classes_teste,predicao)
print('Acurácia de classificação: {}'.format(round(acuracia,3)*100)+'%')

visualizarSVM(compras_teste, classes_teste,SVM_polinomial)

SVM_sigmoidal = SVC(kernel = 'sigmoid', gamma = 'scale', C = 0.2, coef0 = 2)
SVM_sigmoidal.fit(compras_treino, classes_treino)
predicao_sigmoidal = SVM_sigmoidal.predict(compras_teste)
acuracia_sigmoidal = accuracy_score(classes_teste,predicao_sigmoidal)
print('Acurácia de classificação: {}'.format(round(acuracia_sigmoidal,3)*100)+'%')

visualizarSVM(compras_teste, classes_teste,SVM_sigmoidal)

"""