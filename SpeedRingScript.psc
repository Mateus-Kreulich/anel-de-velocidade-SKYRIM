Scriptname SpeedRingScript extends ObjectReference

; Propriedades
Armor Property SpeedRing Auto
Float Property SpeedMultiplier = 1.5 Auto
Actor Property PlayerRef Auto

Event OnInit()
    ; Supondo que o anel tenha um Editor ID "SpeedRingID"
    SpeedRing = Game.GetFormFromFile(0x000XXXXX, "YourMod.esp") as Armor
    ; Referência ao jogador
    PlayerRef = Game.GetPlayer()
EndEvent

Event OnEquipped(Actor akActor)
    if akActor == PlayerRef
        ; Aumenta a velocidade em 1.5x
        akActor.ModActorValue("SpeedMult", SpeedMultiplier * 100.0 - 100.0)
    endif
EndEvent

Event OnUnequipped(Actor akActor)
    if akActor == PlayerRef
        ; Retorna a velocidade ao normal
        akActor.ModActorValue("SpeedMult", -(SpeedMultiplier * 100.0 - 100.0))
    endif
EndEvent
