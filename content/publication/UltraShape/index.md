---
title: "	
UltraShape 1.0: High-Fidelity 3D Shape Generation via Scalable Geometric Refinement"
authors:
- Tanghui Jia
- Dongyu Yan
- Dehao Hao
- Yang Li
- Kaiyi Zhang
- Xianyi He
- Lanjiong Li
- admin
- Jinnan Chen
- Lutao Jiang
- Qishen Yin
- Long Quan
- Ying-Cong Chen
- Li Yuan
date: "2025-12-24T00:00:00Z"
doi: ""

# Author notes (optional)
author_notes:
- "Equal contribution"
- "Equal contribution"
- "Equal contribution"

# Schedule page publish date (NOT publication's date).
publishDate: "2025-12-24T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["4"]

# Publication name and optional abbreviated publication name.
publication: arXiv, 2025
#publication_short: In *SIGGRAPH Asia 2025*

abstract: In this report, we introduce UltraShape 1.0, a scalable 3D diffusion framework for high-fidelity 3D geometry generation. The proposed approach adopts a two-stage generation pipeline - a coarse global structure is first synthesized and then refined to produce detailed, high-quality geometry. To support reliable 3D generation, we develop a comprehensive data processing pipeline that includes a novel watertight processing method and high-quality data filtering. This pipeline improves the geometric quality of publicly available 3D datasets by removing low-quality samples, filling holes, and thickening thin structures, while preserving fine-grained geometric details. To enable fine-grained geometry refinement, we decouple spatial localization from geometric detail synthesis in the diffusion process. We achieve this by performing voxel-based refinement at fixed spatial locations, where voxel queries derived from coarse geometry provide explicit positional anchors encoded via RoPE, allowing the diffusion model to focus on synthesizing local geometric details within a reduced, structured solution space. Our model is trained exclusively on publicly available 3D datasets, achieving strong geometric quality despite limited training resources. Extensive evaluations demonstrate that UltraShape 1.0 performs competitively with existing open-source methods in both data processing quality and geometry generation. All code and trained models will be released to support future research.

# Summary. An optional shortened abstract.
summary: ""

tags:
- Source Themes
featured: true

links:
- name: Project Page
  url: 'https://pku-yuangroup.github.io/UltraShape-1.0/'

url_pdf: https://arxiv.org/abs/2512.21185
url_code: https://github.com/PKU-YuanGroup/UltraShape-1.0
# url_dataset: '#'
# url_poster: '#'
# url_project: ''
# url_slides: ''
# url_source: '#'
# url_video: '#'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'UltraShape 1.0'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
- []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---

