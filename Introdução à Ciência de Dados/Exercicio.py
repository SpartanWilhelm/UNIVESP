# Exercício 1: Carregue as bibliotecas NumPy e Pandas
import numpy as np
import pandas as pd

# Exercício 2: Crie um NDArray com os seguintes valores
array1 = np.array([1, 2.5, 7, -78, -0.9, 130, 25])

# Exercício 3: Crie um NDArray com os valores de 0 a 10
array2 = np.arange(0, 11)

# Exercício 4: Crie um NDArray de dimensão 2x5 com valores 1
array3 = np.ones((2, 5))

# Exercício 5: Crie um NDArray com valores de 1 a 100, com intervalos de 3 em 3
array4 = np.arange(1, 101, 3)

# Exercício 6: Mostre as raízes quadradas dos valores do NDArray criado no exercício 5
sqrt_array4 = np.sqrt(array4)

# Exercício 7: Altere a décima posição do NDArray criado no exercício 5 com o dobro do seu valor
array4[9] = array4[9] * 2

# Exercício 8: Criar um DataFrame com os dados disponíveis no notebook
# Exemplo fictício de dados
dados = {
    'Empresa': ['Alpha', 'Beta', 'Gamma', 'Delta', 'Epsilon'],
    'Funcionários': [120, 45, 300, 80, 150],
    'Ano_Criacao': [2010, 2018, 2005, 2020, 2016]
}
df = pd.DataFrame(dados)

# Exercício 9: Média e soma da quantidade de funcionários
media_funcionarios = df['Funcionários'].mean()
soma_funcionarios = df['Funcionários'].sum()
print(f"Média de funcionários: {media_funcionarios}")
print(f"Soma de funcionários: {soma_funcionarios}")

# Exercício 10: Mostrar as primeiras 3 linhas do DataFrame
print(df.head(3))

# Exercício 11: Mostrar as últimas 3 linhas do DataFrame
print(df.tail(3))

# Exercício 12: Empresas criadas nos últimos 10 anos
ano_atual = 2025
df_recente = df[df['Ano_Criacao'] >= ano_atual - 10]
print(df_recente)
print(f"Quantidade de registros: {len(df_recente)}")

# Exercício 13: Estimar quantidade de chefes (1 chefe para cada 23 funcionários)
df['Chefes'] = df['Funcionários'] / 23
total_chefes = df['Chefes'].sum()
print(df[['Empresa', 'Chefes']])
print(f"Total estimado de chefes: {total_chefes}")
