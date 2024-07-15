Scriptname SpeedRingScript extends ObjectReference

; Propriedades
Armor Property SpeedRing Auto
Float Property SpeedMultiplier = 1.5 Auto
Actor Property PlayerRef Auto
Spell Property AbsorbHealthSpell Auto ; Feitiço de absorção de vida
Float Property ExtraCarryWeight = 1000.0 Auto ; Capacidade de carga adicional

; Inicializa o script e define as propriedades
Event OnInit()
    ; Supondo que o anel tenha um Editor ID "SpeedRingID"
    SpeedRing = Game.GetFormFromFile(0x000XXXXX, "YourMod.esp") as Armor
    ; Referência ao jogador
    PlayerRef = Game.GetPlayer()
    Debug.Trace("SpeedRingScript inicializado. Propriedades definidas.")
EndEvent

; Evento disparado quando o anel é equipado
Event OnEquipped(Actor akActor)
    if akActor == PlayerRef
        ; Aumenta a velocidade em 1.5x
        akActor.ModActorValue("SpeedMult", SpeedMultiplier * 100.0 - 100.0)
        ; Aumenta a capacidade de carga
        akActor.ModActorValue("CarryWeight", ExtraCarryWeight)
        ; Adiciona o feitiço de absorção de vida
        akActor.AddSpell(AbsorbHealthSpell)
        Debug.Notification("Anel de Velocidade equipado. Velocidade e capacidade de carga aumentadas. Absorção de vida ativada.")
    else
        Debug.Trace("Anel de Velocidade equipado por um NPC.")
    endif
EndEvent

; Evento disparado quando o anel é desarmado
Event OnUnequipped(Actor akActor)
    if akActor == PlayerRef
        ; Retorna a velocidade ao normal
        akActor.ModActorValue("SpeedMult", -(SpeedMultiplier * 100.0 - 100.0))
        ; Retorna a capacidade de carga ao normal
        akActor.ModActorValue("CarryWeight", -ExtraCarryWeight)
        ; Remove o feitiço de absorção de vida
        akActor.RemoveSpell(AbsorbHealthSpell)
        Debug.Notification("Anel de Velocidade desarmado. Velocidade e capacidade de carga normais. Absorção de vida desativada.")
    else
        Debug.Trace("Anel de Velocidade desarmado por um NPC.")
    endif
EndEvent

; Evento disparado quando o jogador carrega ou começa um novo jogo
Event OnPlayerLoadGame()
    AddSpeedRingToInventory()
EndEvent

Event OnPlayerLoadGameNew()
    AddSpeedRingToInventory()
EndEvent

; Adiciona o anel de velocidade ao inventário do jogador
Function AddSpeedRingToInventory()
    if !PlayerRef.HasItem(SpeedRing)
        PlayerRef.AddItem(SpeedRing, 1)
        Debug.Notification("Anel de Velocidade adicionado ao inventário.")
        Debug.Trace("Anel de Velocidade adicionado ao inventário do jogador.")
    else
        Debug.Trace("O jogador já possui o Anel de Velocidade.")
    endif
EndFunction

; Função para ajustar o multiplicador de velocidade
Function SetSpeedMultiplier(Float newMultiplier)
    SpeedMultiplier = newMultiplier
    Debug.Trace("Novo multiplicador de velocidade definido: " + newMultiplier)
EndFunction
