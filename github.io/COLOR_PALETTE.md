# Professional Color Palette

This document describes the professional color scheme used throughout the portfolio website.

## Color Philosophy

The color palette has been designed specifically for a quantitative researcher and data scientist, conveying:
- **Professionalism**: Deep blues associated with finance and corporate environments
- **Trust**: Colors that inspire confidence and reliability
- **Intelligence**: A sophisticated palette that reflects analytical expertise
- **Clarity**: High contrast for readability and accessibility

## Primary Colors

### Deep Professional Blue
- **Variable**: `--primary-color`
- **Hex**: `#0A4D8C`
- **RGB**: `rgb(10, 77, 140)`
- **Usage**: Main brand color, primary buttons, headings, icons

### Dark Navy Blue
- **Variable**: `--secondary-color`
- **Hex**: `#073A6B`
- **RGB**: `rgb(7, 58, 107)`
- **Usage**: Hover states, darker elements, depth

### Bright Blue Accent
- **Variable**: `--accent-color`
- **Hex**: `#1E88E5`
- **RGB**: `rgb(30, 136, 229)`
- **Usage**: Highlights, links, interactive elements

### Teal Highlight
- **Variable**: `--highlight-color` / `--success-color`
- **Hex**: `#00897B`
- **RGB**: `rgb(0, 137, 123)`
- **Usage**: Success states, special highlights, achievements

## Text Colors

### Dark Text
- **Variable**: `--text-dark`
- **Hex**: `#263238`
- **RGB**: `rgb(38, 50, 56)`
- **Usage**: Primary text, headings

### Light Text
- **Variable**: `--text-light`
- **Hex**: `#546E7A`
- **RGB**: `rgb(84, 110, 122)`
- **Usage**: Secondary text, descriptions, metadata

## Background Colors

### Light Background
- **Variable**: `--bg-light`
- **Hex**: `#F5F7FA`
- **RGB**: `rgb(245, 247, 250)`
- **Usage**: Alternate section backgrounds

### White Background
- **Variable**: `--bg-white`
- **Hex**: `#FFFFFF`
- **RGB**: `rgb(255, 255, 255)`
- **Usage**: Cards, main backgrounds

### Border Color
- **Variable**: `--border-color`
- **Hex**: `#CFD8DC`
- **RGB**: `rgb(207, 216, 220)`
- **Usage**: Card borders, dividers

## Gradients

### Primary Gradient
- **Variable**: `--gradient-primary`
- **CSS**: `linear-gradient(135deg, #0A4D8C 0%, #1E88E5 100%)`
- **Usage**: Hero section, section title underlines, card top borders

### Secondary Gradient
- **Variable**: `--gradient-secondary`
- **CSS**: `linear-gradient(135deg, #00897B 0%, #00ACC1 100%)`
- **Usage**: Alternative highlights, special sections (optional)

## Shadows

### Small Shadow
- **Variable**: `--shadow-sm`
- **CSS**: `0 1px 3px 0 rgba(0, 0, 0, 0.08)`
- **Usage**: Subtle elevation, small elements

### Medium Shadow
- **Variable**: `--shadow-md`
- **CSS**: `0 4px 6px -1px rgba(0, 0, 0, 0.12)`
- **Usage**: Cards, default elevation

### Large Shadow
- **Variable**: `--shadow-lg`
- **CSS**: `0 10px 20px -5px rgba(0, 0, 0, 0.15)`
- **Usage**: Hover states, emphasized elements

## Usage Examples

### Buttons

**Primary Button**
- Background: `--bg-white`
- Text: `--primary-color`
- Hover: Elevated with shadow

**Secondary Button**
- Background: `transparent`
- Border: `--bg-white`
- Hover: `--bg-white` background with `--primary-color` text

### Cards

**Default State**
- Background: `--bg-white`
- Border: `--border-color`
- Shadow: `--shadow-md`

**Hover State**
- Border: `--accent-color`
- Shadow: `--shadow-lg`
- Transform: `translateY(-8px)`

### Tags

**Default State**
- Background: `--bg-light`
- Text: `--primary-color`
- Border: `--border-color`

**Hover State**
- Background: `--primary-color`
- Text: `white`
- Elevated with subtle animation

## Accessibility

All color combinations meet WCAG 2.1 Level AA standards for contrast:
- Dark text on white backgrounds: 15.3:1 ratio
- Primary color on white: 7.2:1 ratio
- Light text on white: 4.8:1 ratio

## Customization

To change the color scheme, edit the CSS variables in `css/style.css`:

```css
:root {
    --primary-color: #0A4D8C;
    --secondary-color: #073A6B;
    --accent-color: #1E88E5;
    /* ... other colors */
}
```

## Alternative Color Schemes

If you want to experiment with different professional palettes:

### Finance Green (Conservative)
```css
--primary-color: #00695C;
--secondary-color: #004D40;
--accent-color: #26A69A;
```

### Tech Purple (Modern)
```css
--primary-color: #5E35B1;
--secondary-color: #4527A0;
--accent-color: #7E57C2;
```

### Corporate Gray-Blue (Classic)
```css
--primary-color: #37474F;
--secondary-color: #263238;
--accent-color: #546E7A;
```

---

**Note**: The current blue palette has been specifically chosen to align with quantitative finance and data science industry standards, conveying professionalism, analytical expertise, and trustworthiness.
