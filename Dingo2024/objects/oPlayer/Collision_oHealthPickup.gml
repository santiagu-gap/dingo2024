hp = clamp(hp + other.hp, -1, hpMax)
event_user(0)
instance_destroy(other)