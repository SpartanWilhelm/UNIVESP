from sqlite3 import Cursor
from typing_extensions import Self
from urllib import response
import scrapy

class AluraBot(scrapy.Spider):
    name = "Alura Bot"
    start_urls = ["https://www.alura.com.br/cursos-online-programacao"]

    def parse(self, response):
        SELETOR = ".subcategoria__item"
        cursos = []
        for categoria in response.css(SELETOR):
            curso = {}
            NOME_SELECTOR = ".card-curso__nome ::text"
            LINK_SELECTOR = ".card-curso ::attr(href)"
            curso['nome'] = categoria.css(NOME_SELECTOR).extract_first()
            curso['link'] = "https://www.alura.com.br"+categoria.css(LINK_SELECTOR).extract_first()
            print(curso)
            cursos.append(curso)

        print("Total de cursos: ", len(cursos))
