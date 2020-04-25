## Differential-Models-Dash

By Andira Putri

### Background

Even though you don't normally see differential equations in data science, my background roots from ODEs and dynamical systems analysis. I've been playing around with RShiny for a while, and I thought it would be neat to create a UI to analyze systems of differential equations using this tool!

### Setup

In your console, run:

```
install.packages("shiny")
install.packages("phaseR")
install.packages("deSolve")
install.packages("yaml")
```

### Usage

The dashboard takes in a config file that contains information on the differential equations, variables, and parameters. Examples are in the `config_files` folder.