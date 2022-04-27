from django.db import models


class Noticia(models.Model):
    titulo = models.CharField(max_length=150)
    conteudo = models.TextField()
    data_publicacao = models.DateTimeField(auto_now_add=True)
