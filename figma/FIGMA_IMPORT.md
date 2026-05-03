# Importar a Figma (BillyUpClone)

Estos archivos SVG son mockups editables para que puedas subirlos directamente a Figma.

## Archivos
- `billyup_home.svg`
- `billyup_programs.svg`
- `billyup_community.svg`
- `billyup_profile.svg`
- `preview.html` (vista local para revisar en Codex/navegador antes de importar)

## Vista previa en Codex o navegador local
1. Abre `figma/preview.html` para visualizar todas las pantallas juntas.
2. Si quieres servirlo localmente:
   ```bash
   cd figma
   python3 -m http.server 4173
   ```
3. Abre `http://localhost:4173/preview.html`.

## Pasos para importar a Figma
1. Abre Figma y crea un archivo nuevo.
2. Arrastra los SVG al lienzo (o usa **File → Place image**).
3. Cada SVG se convertirá en un frame editable. Puedes ajustar textos, colores y componentes.

## Tamaño de frame
Todos los SVG usan 390x844 (iPhone 14/15), por lo que encajan con presets de iPhone.
