---
title: Bilevel Programming Derivatives of LDS-GNN
subtitle: A supplementary derivation for LDS-GNN appendix.

# Summary for listings and search engines
summary: A supplementary derivation for LDS-GNN appendix.

# Link this post with a project
projects: []

# Date published
date: "2021-12-08T00:00:00Z"

# Date updated
lastmod: "2021-12-08T00:00:00Z"

# Is this an unpublished draft?
draft: false

# Show this page in the Featured widget?
featured: false

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/CpkOjOcXdUY)'
  focal_point: ""
  placement: 2
  preview_only: false

authors:
- admin

tags:
- Academic
- Graph
- Machine Learning

categories:
- Notes
---

## Introduction

Now we have a bilevel programming problem:

$$\min_{\theta, w_{\theta}} F(w_{\theta},\theta)\mathrm{\ such\ that\ } w_{\theta}\in \arg \min_{w} L(w, \theta) \tag{1}$$

where for the inner problem, $w$ is learned by

$$
w_{\theta, T} = \Phi(w_{\theta, T-1}, \theta) = \Phi(\Phi(w_{\theta,T-2}, \theta), \theta) = \cdots  \tag{2}
$$

As is stated in the paper, we follow a process of *$\tau$ times inner, once outer*. In such process we can **directly** compute the gradients of the outer params, as $\theta$ in our problem.

Therefore, our major concern now is to compute $\nabla_{\theta}F(w_{\theta, T}, \theta)$, with which we can update $\theta$ using Adam or SGD optimizer.


## Derivation

We have inner param $w \in \mathbb{R}^{N_w}$ and outer param $\theta \in \mathbb{R}^{N_{\theta}}$. $\nabla_{\theta}F(w_{\theta, T}, \theta)$ can be written as

$$
\frac{\partial F(w_{\theta, T}, \theta)}{\partial \theta}
= F_w(w_{\theta, T}, \theta)\cdot \nabla_{\theta}w_{\theta, T} + F_{\theta}(w_{\theta,T},\theta)
\tag{3}
$$

Here $F_w$ and $F_{\theta}$ can both be easily computed using PyTorch, and $\nabla_{\theta}w_{\theta, T}$ builds the connection to inner updater $\Phi$. As the inner param $w$ undergoes $\tau$ times of update, we have to derive its recursive formula:

$$
\begin{aligned}
\nabla_{\theta}w_{\theta,T} 
&= \frac{\partial \Phi(w_{\theta,T-1}, \theta)}{\partial \theta} \\\\
&= \Phi_w(w_{\theta,T-1}, \theta)\cdot \nabla_{\theta}w_{\theta,T-1}+\Phi_{\theta}(w_{\theta,T-1},\theta) \\\\
&= D_{T-1} \cdot \nabla_{\theta}w_{\theta,T-1} + E_{T-1}
\end{aligned}
\tag{4}
$$

Here $D$ and $E$ denote the jacobian matrix of $\Phi$ w.r.t $w$ and $\theta$ respectively, who can be efficiently computed via Auto Grad. Therefore, $D \in \mathbb{R}^{N_w \times N_w}$, $E \in \mathbb{R}^{N_w \times N_{\theta}}$ and $\nabla_{\theta}w \in \mathbb{R}^{N_w \times N_{\theta}}$. The dimension of $(4)$ matches.

If we combine equation $(3)$ and $(4)$, we can derive the equation between $\nabla_{\theta}F(w_{\theta, T}, \theta)$ and $\nabla_{\theta}w_{\theta,T-1}$. Then if we repeat the process of $(4)$ we can get the equation between $\nabla_{\theta}F(w_{\theta, T}, \theta)$ and $\nabla_{\theta}w_{\theta,T-2}$, $\nabla_{\theta}w_{\theta,T-3}$, and so on. Therefore, as is done by LDS-GNN paper, we can try to derive the equation between $\nabla_{\theta}F(w_{\theta, T}, \theta)$ and jacobian matrix $\nabla_{\theta}w_{\theta,t}$ of any round as,

$$
\frac{\partial F(w_{\theta, T}, \theta)}{\partial \theta} = P_t \cdot \nabla_{\theta}w_{\theta, t} + G_t 
\tag{5}
$$

From equation $(3)$ we know that $P_T = F_w(w_{\theta,T},\theta)$ and $G_T = F_{\theta}(w_{\theta,T}, \theta)$, which are both easy to compute. And if equation $(5)$ holds for $t$, we can derive that for $t-1$ as

$$
\begin{aligned}
\frac{\partial F(w_{\theta, T}, \theta)}{\partial \theta} 
&= P_t \cdot \nabla_{\theta}w_{\theta, t} + G_t \\\\
&= P_t \cdot (D_{t-1} \cdot \nabla_{\theta}w_{\theta,t-1} + E_{t-1}) + G_t \\\\
&= (P_t \cdot D_{t-1}) \cdot \nabla_{\theta}w_{\theta,t-1} + (P_t \cdot E_{t-1} + G_t) \\\\
&= P_{t-1} \cdot \nabla_{\theta}w_{\theta, t-1} + G_{t-1}
\end{aligned}
\tag{6}
$$

Hence, $P_{t-1} = P_{t} \cdot D_{t-1}$ and $G_{t-1} = P_{t} \cdot E_{t-1} + G_{t}$.

All we need to do is keep deriving it until $t=T-\tau$, where $\nabla_{\theta} w_{\theta, T-\tau} = \mathbf{0}$ as $w_{\theta, T-\tau}$ has nothing to do with **current** $\theta$.

$$
\begin{aligned}
\frac{\partial F(w_{\theta, T}, \theta)}{\partial \theta}
&= P_{T-\tau} \cdot \nabla_{\theta} w_{\theta, T-\tau} + G_{T-\tau} \\\\
&= P_{T-\tau} \cdot \nabla_{\theta} w_{\theta, T-\tau} + (P_{T-\tau+1} \cdot E_{T-\tau} + G_{T-\tau+1}) \\\\
&= P_{T-\tau+1} \cdot E_{T-\tau} + G_{T-\tau+1}
\end{aligned}
\tag{7}
$$

Finally, Eq. $(7)$ gives the final formula of $\nabla_{\theta}F(w_{\theta, T}, \theta)$ in a recursion form. Derivations above exactly correspond to `Algorithm 2` in the supplementary material of LDS-GNN.







 



