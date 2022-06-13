---
# An instance of the Pages widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: pages
active: true

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 50

title: Publications
subtitle: ''

content:
  # Filter on criteria
  filters:
    folders:
      - publication
    tag: ''
    category: ''
    publication_type: ''
    author: ''
    exclude_featured: false
    exclude_future: false
    exclude_past: false
    archive:
      enable: true
      text: See all publications
      link: publications/
  # Choose how many pages you would like to display (0 = all pages)
  count: 5
  # Choose how many pages you would like to offset by
  offset: 0
  # Page order: descending (desc) or ascending (asc) date.
  order: desc
design:
  # Choose a view for the listings:
  view: compact
  # Choose a listing view
  view: masonry
  columns: '1'
  spacing:
  # Customize the section spacing. Order is top, right, bottom, left.
  padding: ["30px", "30px", "30px", "30px"]
---
