---
title: ""
nav_title: Home
layout: base
---



To make changes to the main home content in the scrawl theme, you should edit the `/home/dhruvstra/personal/website scrawl/index.md` file.

For the sitemap, you can edit the `_data/navigation.yml` file. This file contains the navigation structure for your website, including the links in the sitemap.

To edit the content within the sitemap, you can modify the individual markdown files that correspond to each page in the sitemap. These files are typically located in the `_pages` directory.

Remember to update the appropriate markdown files with your desired content.



{% capture raw_content %}{% include_relative README.md %}{% endcapture %}

{% assign content_lines = raw_content | newline_to_br | strip_newlines | split: '<br />' %}

{% assign first_line = content_lines | first %}
{% assign footer_end = content_lines | size | minus: 1 %}
{% assign footer_start = footer_end | minus: 2 %}

{% assign content = raw_content | remove: first_line %}

{% for i in (footer_start..footer_end) %}
  {% assign content = content | remove: content_lines[i] %}
{% endfor %}

{% assign first_header = "## Installation" %}
{% capture toc_and_first_header %}
<toc></toc>

{{ first_header }}
{% endcapture %}

{% assign content = content | replace: first_header, toc_and_first_header %}

{{ content }}
