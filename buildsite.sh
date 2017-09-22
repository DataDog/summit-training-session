#!/bin/bash
tmux split-window 'npm start --prefix website/static/reveal.js'
code website/content website/static/reveal.js
open http://localhost:1313/summit-training-session/
hugo server --source website
