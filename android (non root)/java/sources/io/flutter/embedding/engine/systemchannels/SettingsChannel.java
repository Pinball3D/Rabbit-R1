package io.flutter.embedding.engine.systemchannels;

import android.os.Build;
import android.util.DisplayMetrics;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.JSONMessageCodec;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes3.dex */
public class SettingsChannel {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String ALWAYS_USE_24_HOUR_FORMAT = "alwaysUse24HourFormat";
    private static final String BRIEFLY_SHOW_PASSWORD = "brieflyShowPassword";
    public static final String CHANNEL_NAME = "flutter/settings";
    private static final String CONFIGURATION_ID = "configurationId";
    private static final ConfigurationQueue CONFIGURATION_QUEUE = new ConfigurationQueue();
    private static final String NATIVE_SPELL_CHECK_SERVICE_DEFINED = "nativeSpellCheckServiceDefined";
    private static final String PLATFORM_BRIGHTNESS = "platformBrightness";
    private static final String TAG = "SettingsChannel";
    private static final String TEXT_SCALE_FACTOR = "textScaleFactor";
    public final BasicMessageChannel<Object> channel;

    public static boolean hasNonlinearTextScalingSupport() {
        return Build.VERSION.SDK_INT >= 34;
    }

    public SettingsChannel(DartExecutor dartExecutor) {
        this.channel = new BasicMessageChannel<>(dartExecutor, CHANNEL_NAME, JSONMessageCodec.INSTANCE);
    }

    public static DisplayMetrics getPastDisplayMetrics(int i) {
        ConfigurationQueue.SentConfiguration configuration = CONFIGURATION_QUEUE.getConfiguration(i);
        if (configuration == null) {
            return null;
        }
        return configuration.displayMetrics;
    }

    public MessageBuilder startMessage() {
        return new MessageBuilder(this.channel);
    }

    /* loaded from: classes3.dex */
    public static class MessageBuilder {
        private final BasicMessageChannel<Object> channel;
        private DisplayMetrics displayMetrics;
        private Map<String, Object> message = new HashMap();

        public MessageBuilder setDisplayMetrics(DisplayMetrics displayMetrics) {
            this.displayMetrics = displayMetrics;
            return this;
        }

        MessageBuilder(BasicMessageChannel<Object> basicMessageChannel) {
            this.channel = basicMessageChannel;
        }

        public MessageBuilder setTextScaleFactor(float f) {
            this.message.put(SettingsChannel.TEXT_SCALE_FACTOR, Float.valueOf(f));
            return this;
        }

        public MessageBuilder setNativeSpellCheckServiceDefined(boolean z) {
            this.message.put(SettingsChannel.NATIVE_SPELL_CHECK_SERVICE_DEFINED, Boolean.valueOf(z));
            return this;
        }

        public MessageBuilder setBrieflyShowPassword(boolean z) {
            this.message.put(SettingsChannel.BRIEFLY_SHOW_PASSWORD, Boolean.valueOf(z));
            return this;
        }

        public MessageBuilder setUse24HourFormat(boolean z) {
            this.message.put(SettingsChannel.ALWAYS_USE_24_HOUR_FORMAT, Boolean.valueOf(z));
            return this;
        }

        public MessageBuilder setPlatformBrightness(PlatformBrightness platformBrightness) {
            this.message.put(SettingsChannel.PLATFORM_BRIGHTNESS, platformBrightness.name);
            return this;
        }

        public void send() {
            Log.v(SettingsChannel.TAG, "Sending message: \ntextScaleFactor: " + this.message.get(SettingsChannel.TEXT_SCALE_FACTOR) + "\nalwaysUse24HourFormat: " + this.message.get(SettingsChannel.ALWAYS_USE_24_HOUR_FORMAT) + "\nplatformBrightness: " + this.message.get(SettingsChannel.PLATFORM_BRIGHTNESS));
            DisplayMetrics displayMetrics = this.displayMetrics;
            if (!SettingsChannel.hasNonlinearTextScalingSupport() || displayMetrics == null) {
                this.channel.send(this.message);
                return;
            }
            ConfigurationQueue.SentConfiguration sentConfiguration = new ConfigurationQueue.SentConfiguration(displayMetrics);
            BasicMessageChannel.Reply<Object> enqueueConfiguration = SettingsChannel.CONFIGURATION_QUEUE.enqueueConfiguration(sentConfiguration);
            this.message.put(SettingsChannel.CONFIGURATION_ID, Integer.valueOf(sentConfiguration.generationNumber));
            this.channel.send(this.message, enqueueConfiguration);
        }
    }

    /* loaded from: classes3.dex */
    public enum PlatformBrightness {
        light("light"),
        dark("dark");

        public String name;

        PlatformBrightness(String str) {
            this.name = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class ConfigurationQueue {
        private SentConfiguration currentConfiguration;
        private SentConfiguration previousEnqueuedConfiguration;
        private final ConcurrentLinkedQueue<SentConfiguration> sentQueue = new ConcurrentLinkedQueue<>();

        public SentConfiguration getConfiguration(int i) {
            if (this.currentConfiguration == null) {
                this.currentConfiguration = this.sentQueue.poll();
            }
            while (true) {
                SentConfiguration sentConfiguration = this.currentConfiguration;
                if (sentConfiguration == null || sentConfiguration.generationNumber >= i) {
                    break;
                }
                this.currentConfiguration = this.sentQueue.poll();
            }
            SentConfiguration sentConfiguration2 = this.currentConfiguration;
            if (sentConfiguration2 == null) {
                Log.e(SettingsChannel.TAG, "Cannot find config with generation: " + String.valueOf(i) + ", after exhausting the queue.");
                return null;
            }
            if (sentConfiguration2.generationNumber == i) {
                return this.currentConfiguration;
            }
            Log.e(SettingsChannel.TAG, "Cannot find config with generation: " + String.valueOf(i) + ", the oldest config is now: " + String.valueOf(this.currentConfiguration.generationNumber));
            return null;
        }

        public BasicMessageChannel.Reply enqueueConfiguration(SentConfiguration sentConfiguration) {
            this.sentQueue.add(sentConfiguration);
            final SentConfiguration sentConfiguration2 = this.previousEnqueuedConfiguration;
            this.previousEnqueuedConfiguration = sentConfiguration;
            if (sentConfiguration2 == null) {
                return null;
            }
            return new BasicMessageChannel.Reply() { // from class: io.flutter.embedding.engine.systemchannels.SettingsChannel.ConfigurationQueue.1
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public void reply(Object obj) {
                    ConfigurationQueue.this.sentQueue.remove(sentConfiguration2);
                    if (ConfigurationQueue.this.sentQueue.isEmpty()) {
                        return;
                    }
                    Log.e(SettingsChannel.TAG, "The queue becomes empty after removing config generation " + String.valueOf(sentConfiguration2.generationNumber));
                }
            };
        }

        /* loaded from: classes3.dex */
        public static class SentConfiguration {
            private static int nextConfigGeneration = Integer.MIN_VALUE;
            private final DisplayMetrics displayMetrics;
            public final int generationNumber;

            public SentConfiguration(DisplayMetrics displayMetrics) {
                int i = nextConfigGeneration;
                nextConfigGeneration = i + 1;
                this.generationNumber = i;
                this.displayMetrics = displayMetrics;
            }
        }
    }
}
