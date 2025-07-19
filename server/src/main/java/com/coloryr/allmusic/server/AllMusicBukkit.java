package com.coloryr.allmusic.server;

import com.coloryr.allmusic.server.core.AllMusic;
import com.coloryr.allmusic.server.core.music.play.PlayMusic;
import com.coloryr.allmusic.server.core.music.play.TopLyricSave;
import com.coloryr.allmusic.server.core.objs.music.TopSongInfoObj;
import com.coloryr.allmusic.server.side.bukkit.*;
import com.coloryr.allmusic.server.side.bukkit.hooks.AllMusicPAPI;
import com.coloryr.allmusic.server.side.bukkit.hooks.VaultHook;
import org.bukkit.Bukkit;
import org.bukkit.command.PluginCommand;
import org.bukkit.plugin.Plugin;
import org.bukkit.plugin.java.JavaPlugin;

public class AllMusicBukkit extends JavaPlugin {
    public static Plugin plugin;
    public static AllMusicPAPI PAPI;
    public static boolean spigotSet;
    private static PluginMessage pluginMessage;
    private static MetricsBukkit metricsBukkit;

    @Override
    public void onEnable() {
        plugin = this;
        AllMusic.log = new LogBukkit(getLogger());
        AllMusic.side = new SideBukkit();

        try {
            Class.forName("net.md_5.bungee.api.chat.BaseComponent");
            Class test = Class.forName("org.bukkit.command.CommandSender");
            test.getMethod("spigot");
            AllMusic.log.info("§2Spigot已支持");
            spigotSet = true;
        } catch (Exception e) {
            AllMusic.log.info("§2Spigot不支持");
        }

        new AllMusic().init(plugin.getDataFolder());
        if (!AllMusic.isRun) {
            Bukkit.getPluginManager().disablePlugin(this);
            return;
        }

        if (Bukkit.getPluginManager().getPlugin("Vault") != null
                && AllMusic.getConfig().economy.vault) {
            try {
                VaultHook vault = new VaultHook();
                AllMusic.economy = vault;
                if (vault.setupEconomy()) {
                    AllMusic.log.info("§2Vault支持已启动");
                } else {
                    AllMusic.log.info("§2Vault未挂钩");
                    AllMusic.economy = null;
                }
            } catch (Exception e) {
                AllMusic.log.info("§2Vault未挂钩");
                AllMusic.economy = null;
            }
        } else {
            AllMusic.log.info("§2Vault未挂钩");
            AllMusic.economy = null;
        }

        if (Bukkit.getPluginManager().getPlugin("PlaceholderAPI") != null) {
            PAPI = new AllMusicPAPI(this);
            if (!PAPI.register()) {
                AllMusic.log.info("§2PAPI支持已启动");
            }
        } else {
            AllMusic.log.info("§2PAPI未挂钩");
        }

        if (AllMusic.getConfig().topPAPI) {
            PlayMusic.nowPlayMusic = new TopSongInfoObj();
            PlayMusic.lyric = new TopLyricSave();
            pluginMessage = new PluginMessage();
            getServer().getMessenger().registerOutgoingPluginChannel(this, AllMusic.channelBC);
            getServer().getMessenger().registerIncomingPluginChannel(this, AllMusic.channelBC, pluginMessage);
            AllMusic.log.info("§2设置为顶层模式");
        } else {
            CommandBukkit command = new CommandBukkit();
            getServer().getMessenger().registerOutgoingPluginChannel(this, AllMusic.channel);
            PluginCommand command1 = Bukkit.getPluginCommand("music");
            command1.setExecutor(command);
            command1.setTabCompleter(command);
            Bukkit.getPluginManager().registerEvents(new ListenerBukkit(), this);
            AllMusic.start();
        }

        metricsBukkit = new MetricsBukkit(this, 6720);
    }

    @Override
    public void onDisable() {
        AllMusic.isRun = false;
        metricsBukkit.shutdown();
        if (AllMusic.getConfig().topPAPI)
            pluginMessage.stop();
        else
            AllMusic.stop();
    }
}
