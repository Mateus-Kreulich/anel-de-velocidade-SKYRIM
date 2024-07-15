
# SpeedRingScript

## Descrição

O `SpeedRingScript` é um script para Skyrim que adiciona um anel especial ao inventário do jogador assim que ele entra ou começa um novo jogo. Este anel, quando equipado, concede ao jogador as seguintes habilidades:

- Aumenta a velocidade de movimento em 1.5x
- Aumenta a capacidade de carga em 1000 unidades
- Concede a habilidade de sugar vida dos oponentes em ataques

## Funcionalidades

1. **Aumento de Velocidade:**
   - O anel aumenta a velocidade de movimento do jogador em 1.5x enquanto estiver equipado.

2. **Aumento da Capacidade de Carga:**
   - O anel aumenta a capacidade de carga do jogador em 1000 unidades enquanto estiver equipado.

3. **Absorção de Vida:**
   - O anel concede ao jogador um feitiço de absorção de vida, permitindo sugar a vida dos oponentes em ataques.

## Como Usar

1. **Adicionar o Script ao Seu Mod:**
   - Copie o arquivo `SpeedRingScript.psc` para o diretório `Scripts\Source` do seu mod Skyrim.

2. **Definir Propriedades no Creation Kit:**
   - No Creation Kit, crie um novo anel e configure as propriedades conforme necessário.
   - Defina o Editor ID do anel e o nome do arquivo do seu mod na linha `SpeedRing = Game.GetFormFromFile(0x000XXXXX, "YourMod.esp") as Armor`.
   - Crie e configure um feitiço de absorção de vida e defina-o como a propriedade `AbsorbHealthSpell` no script.

3. **Compilar o Script:**
   - Compile o script no Creation Kit para garantir que ele esteja pronto para uso no jogo.

## Requisitos

- **Skyrim**
- **Creation Kit**
- **SKSE (Skyrim Script Extender)** (opcional, mas recomendado)

## Instalação

1. **Copiar o Script:**
   - Coloque o arquivo `SpeedRingScript.psc` na pasta `Scripts\Source` do seu mod.

2. **Configurar no Creation Kit:**
   - Abra o Creation Kit e configure o anel e o feitiço conforme descrito acima.

3. **Compilar o Script:**
   - Compile o script no Creation Kit para garantir que ele funcione corretamente no jogo.

