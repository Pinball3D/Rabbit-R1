package io.flutter.plugins.videoplayer;

import android.content.Context;
import android.util.LongSparseArray;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.videoplayer.Messages;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.TextureRegistry;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes3.dex */
public class VideoPlayerPlugin implements FlutterPlugin, Messages.AndroidVideoPlayerApi {
    private static final String TAG = "VideoPlayerPlugin";
    private FlutterState flutterState;
    private final LongSparseArray<VideoPlayer> videoPlayers = new LongSparseArray<>();
    private final VideoPlayerOptions options = new VideoPlayerOptions();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface KeyForAssetAndPackageName {
        String get(String str, String str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface KeyForAssetFn {
        String get(String str);
    }

    public VideoPlayerPlugin() {
    }

    private VideoPlayerPlugin(final PluginRegistry.Registrar registrar) {
        Context context = registrar.context();
        BinaryMessenger messenger = registrar.messenger();
        Objects.requireNonNull(registrar);
        KeyForAssetFn keyForAssetFn = new KeyForAssetFn() { // from class: io.flutter.plugins.videoplayer.VideoPlayerPlugin$$ExternalSyntheticLambda3
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetFn
            public final String get(String str) {
                return PluginRegistry.Registrar.this.lookupKeyForAsset(str);
            }
        };
        Objects.requireNonNull(registrar);
        FlutterState flutterState = new FlutterState(context, messenger, keyForAssetFn, new KeyForAssetAndPackageName() { // from class: io.flutter.plugins.videoplayer.VideoPlayerPlugin$$ExternalSyntheticLambda4
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetAndPackageName
            public final String get(String str, String str2) {
                return PluginRegistry.Registrar.this.lookupKeyForAsset(str, str2);
            }
        }, registrar.textures());
        this.flutterState = flutterState;
        flutterState.startListening(this, registrar.messenger());
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        final VideoPlayerPlugin videoPlayerPlugin = new VideoPlayerPlugin(registrar);
        registrar.addViewDestroyListener(new PluginRegistry.ViewDestroyListener() { // from class: io.flutter.plugins.videoplayer.VideoPlayerPlugin$$ExternalSyntheticLambda2
            @Override // io.flutter.plugin.common.PluginRegistry.ViewDestroyListener
            public final boolean onViewDestroy(FlutterNativeView flutterNativeView) {
                return VideoPlayerPlugin.lambda$registerWith$0(VideoPlayerPlugin.this, flutterNativeView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$registerWith$0(VideoPlayerPlugin videoPlayerPlugin, FlutterNativeView flutterNativeView) {
        videoPlayerPlugin.onDestroy();
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        FlutterInjector instance = FlutterInjector.instance();
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        final FlutterLoader flutterLoader = instance.flutterLoader();
        Objects.requireNonNull(flutterLoader);
        KeyForAssetFn keyForAssetFn = new KeyForAssetFn() { // from class: io.flutter.plugins.videoplayer.VideoPlayerPlugin$$ExternalSyntheticLambda0
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetFn
            public final String get(String str) {
                String lookupKeyForAsset;
                lookupKeyForAsset = FlutterLoader.this.getLookupKeyForAsset(str);
                return lookupKeyForAsset;
            }
        };
        final FlutterLoader flutterLoader2 = instance.flutterLoader();
        Objects.requireNonNull(flutterLoader2);
        FlutterState flutterState = new FlutterState(applicationContext, binaryMessenger, keyForAssetFn, new KeyForAssetAndPackageName() { // from class: io.flutter.plugins.videoplayer.VideoPlayerPlugin$$ExternalSyntheticLambda1
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetAndPackageName
            public final String get(String str, String str2) {
                String lookupKeyForAsset;
                lookupKeyForAsset = FlutterLoader.this.getLookupKeyForAsset(str, str2);
                return lookupKeyForAsset;
            }
        }, flutterPluginBinding.getTextureRegistry());
        this.flutterState = flutterState;
        flutterState.startListening(this, flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        if (this.flutterState == null) {
            Log.wtf(TAG, "Detached from the engine before registering to it.");
        }
        this.flutterState.stopListening(flutterPluginBinding.getBinaryMessenger());
        this.flutterState = null;
        initialize();
    }

    private void disposeAllPlayers() {
        for (int i = 0; i < this.videoPlayers.size(); i++) {
            this.videoPlayers.valueAt(i).dispose();
        }
        this.videoPlayers.clear();
    }

    private void onDestroy() {
        disposeAllPlayers();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void initialize() {
        disposeAllPlayers();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public Messages.TextureMessage create(Messages.CreateMessage createMessage) {
        VideoPlayer videoPlayer;
        String str;
        TextureRegistry.SurfaceTextureEntry createSurfaceTexture = this.flutterState.textureRegistry.createSurfaceTexture();
        EventChannel eventChannel = new EventChannel(this.flutterState.binaryMessenger, "flutter.io/videoPlayer/videoEvents" + createSurfaceTexture.id());
        if (createMessage.getAsset() != null) {
            if (createMessage.getPackageName() != null) {
                str = this.flutterState.keyForAssetAndPackageName.get(createMessage.getAsset(), createMessage.getPackageName());
            } else {
                str = this.flutterState.keyForAsset.get(createMessage.getAsset());
            }
            videoPlayer = new VideoPlayer(this.flutterState.applicationContext, eventChannel, createSurfaceTexture, "asset:///" + str, null, new HashMap(), this.options);
        } else {
            videoPlayer = new VideoPlayer(this.flutterState.applicationContext, eventChannel, createSurfaceTexture, createMessage.getUri(), createMessage.getFormatHint(), createMessage.getHttpHeaders(), this.options);
        }
        this.videoPlayers.put(createSurfaceTexture.id(), videoPlayer);
        return new Messages.TextureMessage.Builder().setTextureId(Long.valueOf(createSurfaceTexture.id())).build();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void dispose(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).dispose();
        this.videoPlayers.remove(textureMessage.getTextureId().longValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setLooping(Messages.LoopingMessage loopingMessage) {
        this.videoPlayers.get(loopingMessage.getTextureId().longValue()).setLooping(loopingMessage.getIsLooping().booleanValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setVolume(Messages.VolumeMessage volumeMessage) {
        this.videoPlayers.get(volumeMessage.getTextureId().longValue()).setVolume(volumeMessage.getVolume().doubleValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setPlaybackSpeed(Messages.PlaybackSpeedMessage playbackSpeedMessage) {
        this.videoPlayers.get(playbackSpeedMessage.getTextureId().longValue()).setPlaybackSpeed(playbackSpeedMessage.getSpeed().doubleValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void play(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).play();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public Messages.PositionMessage position(Messages.TextureMessage textureMessage) {
        VideoPlayer videoPlayer = this.videoPlayers.get(textureMessage.getTextureId().longValue());
        Messages.PositionMessage build = new Messages.PositionMessage.Builder().setPosition(Long.valueOf(videoPlayer.getPosition())).setTextureId(textureMessage.getTextureId()).build();
        videoPlayer.sendBufferingUpdate();
        return build;
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void seekTo(Messages.PositionMessage positionMessage) {
        this.videoPlayers.get(positionMessage.getTextureId().longValue()).seekTo(positionMessage.getPosition().intValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void pause(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).pause();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setMixWithOthers(Messages.MixWithOthersMessage mixWithOthersMessage) {
        this.options.mixWithOthers = mixWithOthersMessage.getMixWithOthers().booleanValue();
    }

    /* loaded from: classes3.dex */
    private static final class FlutterState {
        final Context applicationContext;
        final BinaryMessenger binaryMessenger;
        final KeyForAssetFn keyForAsset;
        final KeyForAssetAndPackageName keyForAssetAndPackageName;
        final TextureRegistry textureRegistry;

        FlutterState(Context context, BinaryMessenger binaryMessenger, KeyForAssetFn keyForAssetFn, KeyForAssetAndPackageName keyForAssetAndPackageName, TextureRegistry textureRegistry) {
            this.applicationContext = context;
            this.binaryMessenger = binaryMessenger;
            this.keyForAsset = keyForAssetFn;
            this.keyForAssetAndPackageName = keyForAssetAndPackageName;
            this.textureRegistry = textureRegistry;
        }

        void startListening(VideoPlayerPlugin videoPlayerPlugin, BinaryMessenger binaryMessenger) {
            Messages.AndroidVideoPlayerApi.setup(binaryMessenger, videoPlayerPlugin);
        }

        void stopListening(BinaryMessenger binaryMessenger) {
            Messages.AndroidVideoPlayerApi.setup(binaryMessenger, null);
        }
    }
}
