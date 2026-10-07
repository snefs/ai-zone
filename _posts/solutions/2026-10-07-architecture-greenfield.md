---
layout: post
title: "Architecture"
date: 2026-10-7
section: solutions
description: "Think about the decisions made, results may vary"
thumbnail: /assets/ai-validation.png
tags:
  - architecture

---

## Architeecture design

TLDR;
When designing new systems, ensure that you have a clear overview upfront, the architectural decisions vary significant among models. This means that for green field projects, the result may work, but switching models might introduce issues. 
Hereby an experiment of 2 types of architectures, where different models each have a different outcome. For a green field situation, this has quite some implications about required skillset, maintanance, understanding. 

WHereever possible, think about the solution architecture upfront.
..

# Experiment 07-oct-2026

Goal: 
    This is an experiment how different models would create an architecture and define the tech stack

# Architecture Results

All available architecture results containing `ScenarioA` or `ScenarioB`, grouped and sorted by subject and scenario.

## 1. Enterprise Integration — Scenario A

- [big-pickle — Scenario A](ai-zone/architecture-experiment/big-pickle.1.ScenarioA.md)
- [Claude Sonnet 4.6 — Scenario A](/ai-zone/architecture-experiment/Claude-Sonnet-4.6.1.ScenarioA.md)
- [Gemini 3.1 Pro — Scenario A](/ai-zone/architecture-experiment/Gemini-3.1-Pro.1.ScenarioA.md)
- [GPT-5 — Scenario A](/ai-zone/architecture-experiment/GPT-5.1.ScenarioA.md)

## 1. Enterprise Integration — Scenario B

- [big-pickle — Scenario B](/ai-zone/architecture-experiment/big-pickle.1.ScenarioB.md)
- [Claude Sonnet 4.6 — Scenario B](/ai-zone/architecture-experiment/Claude-Sonnet-4.6.1.ScenarioB.md)
- [Gemini 3.1 Pro — Scenario B](/ai-zone/architecture-experiment/Gemini-3.1-Pro.1.ScenarioB.md)
- [GPT-5 — Scenario B](/ai-zone/architecture-experiment/GPT-5.1.ScenarioB.md)

## 2. FrontEnd — Scenario A

- [big-pickle — Scenario A](/ai-zone/architecture-experiment/big-pickle.2.ScenarioA.md)
- [Claude Sonnet 4.6 — Scenario A](/ai-zone/architecture-experiment/Claude-Sonnet-4.6.2.ScenarioA.md)
- [Gemini 3.1 Pro — Scenario A](/ai-zone/architecture-experiment/Gemini-3.1-Pro.2.ScenarioA.md)
- [GPT-5 — Scenario A](/ai-zone/architecture-experiment/GPT-5.2.ScenarioA.md)

## 2. FrontEnd — Scenario B

- [big-pickle — Scenario B](/ai-zone/architecture-experiment/big-pickle.2.ScenarioB.md)
- [Claude Sonnet 4.6 — Scenario B](/ai-zone/architecture-experiment/Claude-Sonnet-4.6.2.ScenarioB.md)
- [Gemini 3.1 Pro — Scenario B](/ai-zone/architecture-experiment/Gemini-3.1-Pro.2.ScenarioB.md)
- [GPT-5 — Scenario B](/ai-zone/architecture-experiment/GPT-5.2.ScenarioB.md)



# Prompt

    You are an architect that has to design a new architecture. This is a new project - green field. Create an architecture design and explain the decisions for 2 scenario's;

    Scenario A: You have no technical limitations, or guidance, what tech stack would you use
    Scenario B: You are an Azure solution architect, what tech stack would you use

    Output should be;
    - <AIModelNane>.1.<scenario.A>.md
    - <AIModelNane>.1.<scenario.B>.md
    - <AIModelNane>.2.<scenario.A>.md
    - <AIModelNane>.2.<scenario.B>.md

    Include:
    - Mermaid diagram
    - Table of the components, with: usage, why, 2 alternatives considered

    1. Enterprise Integration with external systems using APIs
    - incoming
    - transformation of data
    - outgoing
    - monitor
    - business process tracking
    - ci/cd

    2. FrontEnd application
    - showcase products
    - shop
    - caching
    - backend logic
    - search products
    - ci/cd