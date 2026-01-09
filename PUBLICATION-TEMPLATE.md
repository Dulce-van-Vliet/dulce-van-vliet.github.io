# Publication Template

Copy and paste this template to add new publications to `content/publications/index.md`

## Journal Article Template

```markdown
**[Paper Title]**  
*[Your Name], [Co-author 1], [Co-author 2]*  
*[Journal Name], Vol. X, No. Y, pp. ZZ-ZZ, [Year]*  
[[Paper]](link-to-pdf) [[Code]](github-link) [[Project]](project-page) [[BibTeX]](#bibtex-id)

**Abstract:** [Brief 1-2 sentence description of the paper and its main contributions]

---
```

## Conference Paper Template

```markdown
**[Paper Title]**  
*[Your Name], [Co-authors]*  
*[Conference Name (ACRONYM)], [Year]*  
[[Paper]](link) [[Slides]](link) [[Video]](link) [[Code]](link)

**Abstract:** [Brief description]

---
```

## Preprint Template

```markdown
**[Paper Title]**  
*[Your Name], [Co-authors]*  
*arXiv preprint arXiv:XXXX.XXXXX*, [Year]  
[[arXiv]](https://arxiv.org/abs/XXXX.XXXXX) [[Code]](github-link)

**Abstract:** [Brief description]

---
```

## Workshop Paper Template

```markdown
**[Paper Title]**  
*[Your Name], [Co-authors]*  
*[Workshop Name at Conference], [Year]*  
[[Paper]](link) [[Poster]](link)

**Abstract:** [Brief description]

---
```

## BibTeX Template

```markdown
<details id="bibtex-id">
<summary>Citation for "[Paper Title]"</summary>

\`\`\`bibtex
@article{firstauthor2026keyword,
  title={[Paper Title]},
  author={[Last, First and Last, First]},
  journal={[Journal Name]},
  volume={X},
  number={Y},
  pages={ZZ--ZZ},
  year={2026},
  publisher={[Publisher]}
}
\`\`\`
</details>
```

For conference papers, use `@inproceedings` instead of `@article`.

## Tips

1. **Order**: List papers in reverse chronological order (newest first)
2. **Links**: Include links to paper, code, data when available
3. **Badges**: Consider adding badges for awards (🏆 Best Paper)
4. **Status**: Mark papers as "To Appear" if accepted but not published
5. **Categories**: Group by year or by type (journals, conferences, workshops)

## Example with All Elements

```markdown
### 2026

**Deep Learning Approaches for Academic Success** 🏆 *Best Paper Award*  
*Jane Doe, John Smith, Alice Johnson*  
*International Conference on Machine Learning (ICML)*, 2026  
[[Paper]](/papers/doe2026deep.pdf) [[Code]](https://github.com/janedoe/dl-academic) [[Slides]](/slides/icml2026.pdf) [[Video]](https://youtube.com/watch?v=xxx) [[BibTeX]](#doe2026deep)

**Abstract:** We present a novel approach to academic success using deep learning. Our method achieves state-of-the-art results on the AcademicBench benchmark, improving over previous work by 15%.

**Selected for oral presentation (5% acceptance rate)**

---

**Another Interesting Paper** *(Under Review)*  
*Jane Doe, Bob Wilson*  
*Submitted to NeurIPS*, 2026  
[[arXiv]](https://arxiv.org/abs/2026.12345)

**Abstract:** Brief description of work under review.

---
```

## Formatting Notes

- Use **bold** for paper titles
- Use *italics* for author names and venue
- Use `---` to separate publications
- Include year as section header (`### 2026`)
- Keep abstracts concise (2-3 sentences max)
- Link text should be descriptive: `[[Paper]]`, `[[Code]]`, not `[[PDF]]`, `[[Link]]`
