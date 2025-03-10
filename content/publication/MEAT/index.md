---
title: "	
MEAT: Multiview Diffusion Model for Human Generation on Megapixels with Mesh Attention"
authors:
- admin
- Fangzhou Hong
- Shuai Yang
- Liming Jiang
- Wayne Wu
- Chen Change Loy

# Author notes (optional)
# author_notes:
# - "Equal contribution"
# - "Equal contribution"

date: "2025-03-10T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2025-03-10T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: In *2025 Conference on Computer Vision and Pattern Recognition (CVPR 2025)*
publication_short: In *CVPR 2025*

abstract: Multiview diffusion models have shown considerable success in image-to-3D generation for general objects. However, when applied to human data, existing methods have yet to deliver promising results, largely due to the challenges of scaling multiview attention to higher resolutions. In this paper, we explore human multiview diffusion models at the megapixel level and introduce a solution called mesh attention to enable training at 1024x1024 resolution. Using a clothed human mesh as a central coarse geometric representation, the proposed mesh attention leverages rasterization and projection to establish direct cross-view coordinate correspondences. This approach significantly reduces the complexity of multiview attention while maintaining cross-view consistency. Building on this foundation, we devise a mesh attention block and combine it with keypoint conditioning to create our human-specific multiview diffusion model, MEAT. In addition, we present valuable insights into applying multiview human motion videos for diffusion training, addressing the longstanding issue of data scarcity. Extensive experiments show that MEAT effectively generates dense, consistent multiview human images at the megapixel level, outperforming existing multiview diffusion methods.

# Summary. An optional shortened abstract.
summary: ""

tags:
- Source Themes
featured: true

links:
- name: Project Page
  url: 'https://johann.wang/MEAT/'

#url_pdf: https://arxiv.org/abs/2308.16909
url_code: https://github.com/johannwyh/MEAT
# url_dataset: http://johann.wang/HifiFace/
# url_poster: '#'
# url_project: '#'
# url_slides: ''
# url_source: '#'
# url_video: https://www.youtube.com/watch?v=WkQnezQ2fh4 

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

