package com.coloryr.allmusic.server.side.bukkit.hooks;

import org.bukkit.entity.Entity;

public class CitizensNPC {
    public static boolean isNPC(Entity entity) {
        return entity.hasMetadata("NPC");
    }
}
