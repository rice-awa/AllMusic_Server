package com.coloryr.allmusic.server.side.forge.event;

import com.coloryr.allmusic.server.core.objs.music.MusicObj;
import net.minecraft.server.level.ServerPlayer;
import net.neoforged.bus.api.Event;

public class MusicAddEvent extends Event {
    /**
     * 添加的音乐
     */
    private final MusicObj music;
    /**
     * 添加者
     */
    private final ServerPlayer player;

    private boolean cancel;

    public MusicAddEvent(MusicObj id, ServerPlayer player) {
        this.music = id;
        this.player = player;
    }

    public boolean isCancel() {
        return cancel;
    }

    public void setCancel(boolean cancel) {
        this.cancel = cancel;
    }

    public ServerPlayer getPlayer() {
        return player;
    }

    public MusicObj getMusic() {
        return music;
    }
}
