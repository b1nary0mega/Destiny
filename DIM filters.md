# Cleaning Up
- Non-wishlist items from Season 23, not used in a loadout: `-is:wishlist season:23 -is:inloadout -is:crafted`
- Sub-60 base, non-exotic armor: `is:armor basestat:total:<60 not:exotic not:maxpower not:classitem`

# Armor Specific
- Max power armour for a character: `is:titan is:maxpower`
- Non-max power: `is:equipment not:maxpower`

# Weapon Specific
- Find all Non-Primaries: `-is:primary`
 
# Misc.
- Full Character Weapon Loadout: `is:inleftchar is:weapon not:inpostmaster`
