from flask import Flask, render_template_string
import tabela  # importa o DataFrame 'dados' gerado pelo tabela.py

app = Flask(__name__)

@app.route('/')
def tabela_html():
    html = """
    <html>
    <head>
        <title>Classificação Campeonato Brasileiro 2025</title>
        <style>
            body { font-family: Arial, sans-serif; padding: 20px; }
            h2 { text-align: center; }
            table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            th, td { border: 1px solid #ddd; padding: 8px; text-align: center; }
            th { background-color: #f2f2f2; }
            .verde { background-color: #4CAF50; color: white; }
            .verde-claro { background-color: #C8E6C9; }
            .vermelho { background-color: #FFCDD2; }
        </style>
    </head>
    <body>
        <h2>Classificação Campeonato Brasileiro 2025</h2>
        <table>
            <thead>
                <tr>
                    {% for coluna in dados.columns %}
                        <th>{{ coluna }}</th>
                    {% endfor %}
                </tr>
            </thead>
            <tbody>
                {% for i, linha in dados.iterrows() %}
                    {% set pos = linha['Posição'] %}
                    {% set classe = '' %}
                    {% if pos <= 4 %}
                        {% set classe = 'verde' %}
                    {% elif pos == 5 or pos == 6 %}
                        {% set classe = 'verde-claro' %}
                    {% elif pos >= dados['Posição'].max() - 3 %}
                        {% set classe = 'vermelho' %}
                    {% endif %}
                    <tr class="{{ classe }}">
                        {% for valor in linha %}
                            <td>{{ valor }}</td>
                        {% endfor %}
                    </tr>
                {% endfor %}
            </tbody>
        </table>
    </body>
    </html>
    """
    return render_template_string(html, dados=tabela.dados)

if __name__ == '__main__':
    app.run(debug=True)
