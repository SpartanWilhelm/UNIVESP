import requests
from bs4 import BeautifulSoup
import pandas as pd

html=requests.get("https://www.api-futebol.com.br/campeonato/campeonato-brasileiro/2025").content
soup=BeautifulSoup(html,'html5lib')

tabela = soup.find('table', {'class': 'table table-bordered table-striped mb-4'}).find('tbody')

for linha in tabela.find_all('tr')[1:]:  # pula o cabeçalho
    colunas = linha.find_all('td')
    posicao = colunas[0].text.strip()
    time = colunas[1].text.strip()
    pontos = colunas[2].text.strip()
    jogos = colunas[3].text.strip()
    vitorias = colunas[4].text.strip()
    empates = colunas[5].text.strip()
    derrotas = colunas[6].text.strip()
    
    #print(f"{posicao} - {time}: {pontos} pts, {jogos} jogos, {vitorias}V {empates}E {derrotas}D")

time = []
pontos = []
jogos = []
vitorias = []
empates = []
derrotas = []

for linha in tabela.find_all('tr')[1:]:
    dado = linha.find_all('td')
    if len(dado) >= 4:  # só continua se houver pelo menos 4 células
        time.append(dado[1].text.strip())
        pontos.append(dado[2].text.strip())
        jogos.append(dado[3].text.strip())
        vitorias.append(dado[4].text.strip())
        empates.append(dado[5].text.strip())
        derrotas.append(dado[6].text.strip())

#print(time)
#print (pontos)

dados=pd.DataFrame(time, columns=['Equipe'])
dados['Pontos']=pontos
dados['Jogos']=jogos
dados['Vitorias']=vitorias
dados['Empates']=empates
dados['Derrotas']=derrotas
print(dados)