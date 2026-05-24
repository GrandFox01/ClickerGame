# Cyber-Hacker: Neural Network

A cyberpunk-themed clicker game built with GameMaker Studio 2.

## 🎮 Game Concept

You are a rookie hacker in a cyberpunk world. Your goal is to hack the global neural network "Omega" by accumulating resources ("Data" and "Crypto") through clicking and automated earnings, while purchasing upgrades.

## 📁 Project Structure

```
/workspace
├── objects/
│   ├── obj_Game.gml          # Main game controller
│   ├── obj_Core.gml          # Clickable core object
│   ├── obj_Upgrades.gml      # Upgrade system
│   └── obj_FloatingText.gml  # Visual effects
├── scripts/                   # (Optional custom scripts)
├── datafiles/                 # (Save files, configs)
└── README.md                  # This file
```

## 🛠 Setup Instructions

### 1. Create a New GameMaker Studio 2 Project
- Open GMS2
- Create new project
- Set resolution to 800x600

### 2. Create Objects
Create the following objects and copy the corresponding `.gml` code:

#### obj_Game (Persistent Object)
- Place in room (doesn't need sprite)
- Contains: Create, Step, Draw GUI events

#### obj_Core
- Create a sprite (green circle or tech icon)
- Add Mouse Left Pressed and Draw events

#### obj_Upgrades
- Place in room (doesn't need sprite)
- Add Draw GUI and Mouse Left Pressed events

#### obj_FloatingText
- No sprite needed
- Add Create, Step, and Draw events

### 3. Create Layers in Room
- "Game" layer - for obj_Core and obj_Upgrades
- "Effects" layer - for obj_FloatingText instances
- "UI" layer - for obj_Game GUI elements

### 4. Configure Room
- Set background color to black (#000000)
- Room size: 800x600
- Place obj_Core in center (400, 300)
- Place obj_Upgrades anywhere (renders via GUI)
- Add persistent obj_Game

## 🎯 Gameplay Mechanics

### Resources
- **Data**: Primary currency, earned by clicking and auto-hackers
- **Crypto**: Rare currency, small chance from auto-income

### Upgrades
| Upgrade | Effect | Base Cost | Scaling |
|---------|--------|-----------|---------|
| Better Tool | +1 Click Power | 15 Data | ×1.5 |
| Server Rack | +2 Auto/sec | 100 Data | ×1.4 |
| Botnet Node | +15 Auto/sec | 500 Data | ×1.4 |
| AI Core | +50 Auto/sec | 2000 Data | ×1.4 |

## 🔧 Code Features

- ✅ Global variable management
- ✅ Exponential cost scaling
- ✅ Auto-income system with timer
- ✅ Floating text visual feedback
- ✅ Dynamic UI coloring (green/red for affordability)
- ✅ Pulse animation on core

## 🚀 Future Enhancements

Consider adding:
- [ ] Save/Load system (datafiles)
- [ ] Prestige/Rebirth mechanic
- [ ] Achievements system
- [ ] Sound effects and music
- [ ] Particle effects
- [ ] Mini-games for bonus rewards
- [ ] Story elements/lore
- [ ] Multiple hacking targets

## 📝 License

Free to use and modify for your projects!

---

**Made with ❤️ for GameMaker Studio 2**
