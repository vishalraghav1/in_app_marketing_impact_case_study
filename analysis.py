"""
Synthetic In-App Marketing Impact Analysis
This script recreates the portfolio analysis using synthetic data.
"""

import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("synthetic_user_campaign_data.csv")

# Placement performance
placement = (
    df.groupby("placement")
      .agg(users=("user_id", "count"),
           engagement_rate=("engaged", "mean"),
           conversion_rate=("converted", "mean"),
           revenue=("revenue", "sum"))
      .reset_index()
)

control_rate = placement.loc[
    placement["placement"].eq("Control"), "conversion_rate"
].iloc[0]

placement["incremental_lift_pp"] = (
    placement["conversion_rate"] - control_rate
) * 100

print(placement.sort_values("conversion_rate", ascending=False))

# Segment-level treatment effect
segment = (
    df.groupby(["segment", "exposed"])["converted"]
      .mean()
      .unstack()
      .rename(columns={0: "control_rate", 1: "exposed_rate"})
)

segment["lift_pp"] = (
    segment["exposed_rate"] - segment["control_rate"]
) * 100

print("\nSegment lift:")
print(segment.sort_values("lift_pp", ascending=False))

# Chart
chart_data = placement[placement["placement"] != "Control"].copy()
plt.figure(figsize=(8, 5))
plt.bar(chart_data["placement"], chart_data["incremental_lift_pp"])
plt.axhline(0, linewidth=1)
plt.ylabel("Incremental conversion lift (percentage points)")
plt.title("Incremental conversion lift by in-app placement")
plt.tight_layout()
plt.savefig("placement_incremental_lift.png", dpi=180)
plt.show()
