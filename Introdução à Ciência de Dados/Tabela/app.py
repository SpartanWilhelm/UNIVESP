from flask import Flask, render_template_string
import tabela  # importa o DataFrame 'dados' gerado pelo seu tabela.py

app = Flask(__name__)

@app.route('/')
def home():
    html = f"""
    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Classificação Campeonato Brasileiro 2025</title>

        <!-- DataTables CSS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
        <!-- DataTables JS -->
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

        <style>
            body {{
                font-family: Arial, sans-serif;
                margin: 40px;
                background-color: #f4f4f4;
            }}
            h1 {{
                text-align: center;
                color: #333;
            }}
            table {{
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: #fff;
            }}
            th, td {{
                border: 1px solid #ccc;
                padding: 8px;
                text-align: center;
            }}
            th {{
                background-color: #007BFF;
                color: white;
            }}
            tr:nth-child(even) {{
                background-color: #f2f2f2;
            }}
        </style>
    </head>
    <body>
        <h1>Classificação Campeonato Brasileiro 2025</h1>

        <!-- Tabela gerada pelo pandas com ID para DataTables -->
        {tabela.dados.to_html(index=False, classes='display', table_id='tabela')}

        <!-- Inicializa DataTables com 20 itens por página -->
        <script>
            $(document).ready(function() {{
                $('#tabela').DataTable({{
                    paging: true,
                    searching: true,
                    pageLength: 20,
                    order: [[1, 'desc']]
                }});
            }});
        </script>
    </body>
    </html>
    """
    return render_template_string(html)

if __name__ == '__main__':
    app.run(debug=True)
