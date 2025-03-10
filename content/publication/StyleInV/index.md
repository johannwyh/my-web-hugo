---
title: "	
StyleInV: A Temporal Style Modulated Inversion Network for Unconditional Video Generation"
authors:
- admin
- Liming Jiang
- Chen Change Loy

# Author notes (optional)
# author_notes:
# - "Equal contribution"
# - "Equal contribution"

date: "2023-07-20T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2023-07-20T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: In *2023 International Conference on Computer Vision (ICCV 2023)*
publication_short: In *ICCV 2023*

abstract: Unconditional video generation is a challenging task that involves synthesizing high-quality videos that are both coherent and of extended duration. To address this challenge, researchers have used pretrained StyleGAN image generators for high-quality frame synthesis and focused on motion generator design. The motion generator is trained in an autoregressive manner using heavy 3D convolutional discriminators to ensure motion coherence during video generation. In this paper, we introduce a novel motion generator design that uses a learning-based inversion network for GAN. The encoder in our method captures rich and smooth priors from encoding images to latents, and given the latent of an initially generated frame as guidance, our method can generate smooth future latent by modulating the inversion encoder temporally. Our method enjoys the advantage of sparse training and naturally constrains the generation space of our motion generator with the inversion network guided by the initial frame, eliminating the need for heavy discriminators. Moreover, our method supports style transfer with simple fine-tuning when the encoder is paired with a pretrained StyleGAN generator. Extensive experiments conducted on various benchmarks demonstrate the superiority of our method in generating long and high-resolution videos with decent single-frame quality and temporal consistency.

# Summary. An optional shortened abstract.
summary: ""

tags:
- Source Themes
featured: true

links:
- name: Project Page
  url: 'https://www.mmlab-ntu.com/project/styleinv/index.html'

url_pdf: https://arxiv.org/abs/2308.16909
url_code: https://github.com/johannwyh/StyleInV
# url_dataset: http://johann.wang/HifiFace/
# url_poster: '#'
# url_project: '#'
# url_slides: ''
# url_source: '#'
url_video: https://www.youtube.com/watch?v=WkQnezQ2fh4 

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/pLCdAaMFLTE)'
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

