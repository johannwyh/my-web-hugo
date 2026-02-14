---
title: "	
Light-SQ: Structure-aware Shape Abstraction with Superquadrics for Generated Meshes"
authors:
- admin
- Weikai Chen
- Zeyu Hu
- Runze Zhang
- Yingda Yin
- Ruoyu Wu
- Keyang Luo
- Shengju Qian
- Yiyan Ma
- Hongyi Li
- Yuan Gao
- Yuhuan Zhou
- Hao Luo
- Wan Wang
- Xiaobin Shen
- Zhaowei Li
- Kuixin Zhu
- Chuanlang Hong
- Yueyue Wang
- Lijie Feng
- Xin Wang
- Chen Change Loy
date: "2025-08-11T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2025-08-11T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: In *2025 ACM SIGGRAPH Asia Conference Proceedings (SIGGRAPH Asia 2025)*
publication_short: In *SIGGRAPH Asia 2025*

abstract: In user-generated-content (UGC) applications, non-expert users often rely on image-to-3D generative models to create 3D assets. In this context, primitive-based shape abstraction offers a promising solution for UGC scenarios by compressing high-resolution meshes into compact, editable representations. Towards this end, effective shape abstraction must therefore be structure-aware, characterized by low overlap between primitives, part-aware alignment, and primitive compactness. We present Light-SQ, a novel superquadric-based optimization framework that explicitly emphasizes structure-awareness from three aspects. (a) We introduce SDF carving to iteratively udpate the target signed distance field, discouraging overlap between primitives. (b) We propose a block-regrow-fill strategy guided by structure-aware volumetric decomposition, enabling semantic partitioning to drive primitive placement. (c) We implement adaptive residual pruning based on SDF update history to surpress over-segmentation and ensure compact results. In addition, Light-SQ supports multiscale fitting, enabling localized refinement to preserve fine geometric details. To evaluate our method, we introduce 3DGen-Prim, a benchmark extending 3DGen-Bench with new metrics for both reconstruction quality and primitive-level editability. Extensive experiments demonstrate that Light-SQ enables efficient, high-fidelity, and editable shape abstraction with superquadrics for complex generated geometry, advancing the feasibility of 3D UGC creation.

# Summary. An optional shortened abstract.
summary: ""

tags:
- Source Themes
featured: true

links:
- name: Project Page
  url: 'https://johann.wang/Light-SQ/'

url_pdf: https://arxiv.org/abs/2509.24986
url_code: https://github.com/johannwyh/Light-SQ
# url_dataset: '#'
# url_poster: '#'
# url_project: ''
# url_slides: ''
# url_source: '#'
# url_video: '#'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Light-SQ'
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

