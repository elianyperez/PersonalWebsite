---
title: "Bringing a decision-making task online"
category: "Code & automation"
tools: ["Python", "JavaScript", "PsychoJS"]
summary: "Adapting the Iowa Gambling Task from a desktop experiment to an online research task."
role: "Task adaptation and programming"
outcome: "An online adaptation supported by Python and JavaScript code examples."
weight: 10
date: "2024-01-22T00:00:00Z"
resource_url: "https://elianysportfolio.notion.site/Programming-a-Gambling-task-fde49c0bf032415bb947ed0c6c67a414"
resource_label: "Original task walkthrough"
---

## The question

How can a desktop decision-making experiment be adapted for online use?

## My contribution

For my master’s thesis, I learned Python and JavaScript to adapt the Iowa Gambling Task for online use. This meant translating experimental task logic into a browser-based format.

## The approach

The task uses four card decks. My examples show how I organized conditions by deck, randomized trials, and updated card images when a deck was empty. The online version uses PsychoJS trial handlers and JavaScript to manage those conditions.

## What came out of it

The work produced an online task adaptation and a set of code examples documenting the transition. It connects behavioral research design with practical programming.

## A small example

This excerpt from my original walkthrough selects the conditions for deck A. The same pattern is applied to the other decks.

```python
allCards = data.importConditions("CONDITIONS.csv")
A_cards = list(filter(lambda card: card["DECK_NAME"] == "A", allCards))
shuffle(A_cards)
```

In the online implementation, the same selection becomes JavaScript:

```javascript
A_cards.trialList = A_cards.trialList.filter(
  card => card["DECK_NAME"] === "A"
);
```

These are excerpts explaining the implementation, not a runnable experiment.
