package com.coloryr.allmusic.server.core.command;

import java.util.Collections;
import java.util.List;

public abstract class ACommand implements ICommand {
    @Override
    public List<String> tab(Object player, String name, String[] args, int index) {
        return Collections.emptyList();
    }
}
