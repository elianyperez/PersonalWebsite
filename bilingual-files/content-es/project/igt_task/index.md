---
title: "Una tarea de toma de decisiones en línea"
category: "Código y automatización"
tools: ["Python", "JavaScript", "PsychoJS"]
summary: "Adaptación de la Iowa Gambling Task de un experimento de escritorio a una tarea de investigación en línea."
role: "Adaptación y programación de la tarea"
outcome: "Una adaptación en línea documentada con ejemplos en Python y JavaScript."
weight: 10
date: "2024-01-22T00:00:00Z"
resource_url: "https://elianysportfolio.notion.site/Programming-a-Gambling-task-fde49c0bf032415bb947ed0c6c67a414"
resource_label: "Ver material original (en inglés)"
---

## La pregunta

¿Cómo se puede adaptar un experimento de toma de decisiones para realizarlo en línea?

## Mi contribución

Para mi tesis de maestría, aprendí Python y JavaScript para adaptar la Iowa Gambling Task a un formato en línea, trasladando la lógica del experimento al navegador.

## El enfoque

Los ejemplos muestran cómo organicé las condiciones por mazo, aleatoricé ensayos y actualicé las imágenes cuando se agotaba un mazo. La implementación en línea utiliza manejadores de ensayos de PsychoJS.

## Los resultados

El proyecto dio lugar a una adaptación en línea y ejemplos de código que documentan la transición, conectando el diseño de investigación conductual con la programación.

## Un ejemplo de código

Este fragmento selecciona las condiciones del mazo A.

```python
allCards = data.importConditions("CONDITIONS.csv")
A_cards = list(filter(lambda card: card["DECK_NAME"] == "A", allCards))
shuffle(A_cards)
```

Es un ejemplo explicativo, no un experimento ejecutable.
