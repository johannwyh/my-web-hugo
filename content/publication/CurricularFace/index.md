---
title: "	
CurricularFace: Adaptive Curriculum Learning Loss for Deep Face Recognition"
authors:
- Yuge Huang
- admin
- Ying Tai
- Xiaoming Liu
- Pengcheng Shen
- Shaoxin Li
- Jilin Li
- Feiyue Huang
date: "2020-03-30T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2020-03-31T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: In *2020 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR 2020)*
publication_short: In *CVPR 2020*

abstract: As an emerging topic in face recognition, designing margin-based loss functions can increase the feature mar- gin between different classes for enhanced discriminabil- ity. More recently, the idea of mining-based strategies is adopted to emphasize the misclassified samples, achieving promising results. However, during the entire training pro- cess, the prior methods either do not explicitly emphasize the sample based on its importance that renders the hard samples not fully exploited; or explicitly emphasize the ef- fects of semi-hard/hard samples even at the early training stage that may lead to convergence issue. In this work, we propose a novel Adaptive Curriculum Learning loss (Cur- ricularFace) that embeds the idea of curriculum learning into the loss function to achieve a novel training strategy for deep face recognition, which mainly addresses easy sam- ples in the early training stage and hard ones in the later stage. Specifically, our CurricularFace adaptively adjusts the relative importance of easy and hard samples during different training stages. In each stage, different samples are assigned with different importance according to their corresponding difficultness. Extensive experimental results on popular benchmarks demonstrate the superiority of our CurricularFace over the state-of-the-art competitors.

# Summary. An optional shortened abstract.
summary: ""

tags:
- Source Themes
featured: true

links:
# - name: Custom Link
#  url: http://example.org
url_pdf: https://arxiv.org/abs/2004.00288
url_code: https://github.com/HuangYG123/CurricularFace
# url_dataset: '#'
# url_poster: '#'
# url_project: ''
# url_slides: ''
# url_source: '#'
# url_video: '#'

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

