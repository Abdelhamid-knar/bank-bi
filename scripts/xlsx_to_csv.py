import sys
import pandas as pd

src, dst = sys.argv[1], sys.argv[2]

# dtype=str keeps codes like "00350" intact; keep_default_na=False keeps blanks as empty text
df = pd.read_excel(src, dtype=str, keep_default_na=False)
df.to_csv(dst, index=False, encoding="utf-8")
print(f"{src} -> {dst}: {len(df)} data rows")
