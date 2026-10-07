# Verification record

- Original XLSM: 153,367,310 bytes; SHA256 `98e355ae5581b41e2f779d0887a458d9f9f9b2c12636b307c95a499cf9821e01`.
- Numerical source: original DATA, 1,005,000 observations, 20 variables; stored numeric precision.
- Dataset!B6 randomisation: 2026-10-07 06:20:30; timezone unspecified.
- Native OfficeCLI 1.0.155 calculations: COUNT, AVERAGE, MEDIAN, MODE.MULT, STDEV.S, MIN/MAX, QUARTILE.INC, CORREL, COUNTIF, SUMPRODUCT/EXACT/TRIM, PERCENTILE.INC, RAND/INT and LOG10.
- All 18 variable/cohort statistics calculated; all price/usage modes absent. Age modes verified.
- Fourteen native reconciliation/eligibility checks passed, including 5,000 unique eligible plot rows and all histogram/age/decile counts.
- Sample: 6,000 native candidate draws, 5,957 eligible unique candidates, 5,000 selected, 1,194 luxury and 3,806 non-luxury.
- Report: eight A4 pages, 1,000 main-prose/headings words, twelve native editable Word tables, five native Excel chart exports.
- Full private workbook and presentation workbook: OpenXML schema zero errors. Presentation formula evaluation error check zero issues.
- Raw Dataset, DATA, sharedStrings and VBA parts retained byte-for-byte in the complete workbook; part hashes provided in Source_Integrity.json. Actual-source reassembly passed all four hashes and ZIP CRC verification; the macOS file-picker UI was not run on Linux.
- Data-free additions omit those four source parts, remove vehicle-level values from candidate/sample caches and remove scatter coordinate caches. Source formulas and derived aggregate results remain.
- OfficeCLI evaluates Excel formulas independently of Microsoft Excel; no Python analytics used in this revision.
