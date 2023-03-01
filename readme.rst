SHIMPR
======


Minimalist text presentation tool for the POSIX console.

Features
--------

- Slides as plain-text files
- Text is printed exactly as-is
- Pure POSIX shell

Usage
-----

Create a directory with your presentation. Create your slides within.
All slides are displayed in ASCIIbetical order. Run the script pointing
to the directory, or from within.

   - ``j``, ``n`` for next slide.

   - ``k``, ``p``, ``N`` for previous slide.

   - ``0``, ``g`` for first slide.

   - ``G`` for the last slide.

   - ``q`` to quit immediately.

   - ``r`` or any key to refresh current slide.

Example
-------

``./shimpr example``

Advice
------

ASCIIbetical order means you should name your slides

   ``01.title 02.intro ... 99.end``

Instead of

   ``1.title 2.intro ... 99.end``
