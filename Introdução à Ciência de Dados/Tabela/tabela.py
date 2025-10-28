import requests
from bs4 import BeautifulSoup
import pandas as pd

html = requests.get("https://www.api-futebol.com.br/campeonato/campeonato-brasileiro/2025").content
soup = BeautifulSoup(html, 'html5lib')

tabela = soup.find('table', {'class': 'table table-bordered table-striped mb-4'}).find('tbody')

# Listas para armazenar os dados
posicao = []
time = []
pontos = []
jogos = []
vitorias = []
empates = []
derrotas = []
golspro = []
golscontra = []
saldogols = []
aproveitamento = []

for linha in tabela.find_all('tr')[1:]:
    dado = linha.find_all('td')
    if len(dado) >= 11:
        posicao.append(dado[0].text.strip().replace('º', ''))  # remove símbolo de ordinal
        time.append(dado[1].text.strip())
        pontos.append(dado[2].text.strip())
        jogos.append(dado[3].text.strip())
        vitorias.append(dado[4].text.strip())
        empates.append(dado[5].text.strip())
        derrotas.append(dado[6].text.strip())
        golspro.append(dado[7].text.strip())
        golscontra.append(dado[8].text.strip())
        saldogols.append(dado[9].text.strip())
        aproveitamento.append(dado[10].text.strip())

# Criação do DataFrame
dados = pd.DataFrame({
    'Posição': posicao,
    'Equipe': time,
    'Pontos': pontos,
    'Jogos': jogos,
    'Vitórias': vitorias,
    'Empates': empates,
    'Derrotas': derrotas,
    'Gols Pro': golspro,
    'Gols Contra': golscontra,
    'Saldo de Gols': saldogols,
    'Aproveitamento': aproveitamento
})

# Converte posição para inteiro para facilitar ordenação
dados['Posição'] = dados['Posição'].astype(int)
dados = dados.sort_values(by='Posição').reset_index(drop=True)
