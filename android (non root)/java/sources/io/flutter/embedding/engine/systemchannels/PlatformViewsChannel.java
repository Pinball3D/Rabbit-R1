package io.flutter.embedding.engine.systemchannels;

import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.systemchannels.PlatformViewsChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import io.sentry.protocol.Message;
import io.sentry.protocol.ViewHierarchyNode;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes3.dex */
public class PlatformViewsChannel {
    private static final String TAG = "PlatformViewsChannel";
    private final MethodChannel channel;
    private PlatformViewsHandler handler;
    private final MethodChannel.MethodCallHandler parsingHandler;

    /* loaded from: classes3.dex */
    public interface PlatformViewBufferResized {
        void run(PlatformViewBufferSize platformViewBufferSize);
    }

    /* loaded from: classes3.dex */
    public interface PlatformViewsHandler {
        public static final long NON_TEXTURE_FALLBACK = -2;

        void clearFocus(int i);

        void createForPlatformViewLayer(PlatformViewCreationRequest platformViewCreationRequest);

        long createForTextureLayer(PlatformViewCreationRequest platformViewCreationRequest);

        void dispose(int i);

        void offset(int i, double d, double d2);

        void onTouch(PlatformViewTouch platformViewTouch);

        void resize(PlatformViewResizeRequest platformViewResizeRequest, PlatformViewBufferResized platformViewBufferResized);

        void setDirection(int i, int i2);

        void synchronizeToNativeViewHierarchy(boolean z);
    }

    public void setPlatformViewsHandler(PlatformViewsHandler platformViewsHandler) {
        this.handler = platformViewsHandler;
    }

    public void invokeViewFocused(int i) {
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            return;
        }
        methodChannel.invokeMethod("viewFocused", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String detailedExceptionString(Exception exc) {
        return Log.getStackTraceString(exc);
    }

    /* renamed from: io.flutter.embedding.engine.systemchannels.PlatformViewsChannel$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MethodChannel.MethodCallHandler {
        AnonymousClass1() {
        }

        @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
        public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
            if (PlatformViewsChannel.this.handler == null) {
                return;
            }
            Log.v(PlatformViewsChannel.TAG, "Received '" + methodCall.method + "' message.");
            String str = methodCall.method;
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1352294148:
                    if (str.equals("create")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1019779949:
                    if (str.equals("offset")) {
                        c = 1;
                        break;
                    }
                    break;
                case -934437708:
                    if (str.equals("resize")) {
                        c = 2;
                        break;
                    }
                    break;
                case -756050293:
                    if (str.equals("clearFocus")) {
                        c = 3;
                        break;
                    }
                    break;
                case -308988850:
                    if (str.equals("synchronizeToNativeViewHierarchy")) {
                        c = 4;
                        break;
                    }
                    break;
                case 110550847:
                    if (str.equals("touch")) {
                        c = 5;
                        break;
                    }
                    break;
                case 576796989:
                    if (str.equals("setDirection")) {
                        c = 6;
                        break;
                    }
                    break;
                case 1671767583:
                    if (str.equals("dispose")) {
                        c = 7;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    create(methodCall, result);
                    return;
                case 1:
                    offset(methodCall, result);
                    return;
                case 2:
                    resize(methodCall, result);
                    return;
                case 3:
                    clearFocus(methodCall, result);
                    return;
                case 4:
                    synchronizeToNativeViewHierarchy(methodCall, result);
                    return;
                case 5:
                    touch(methodCall, result);
                    return;
                case 6:
                    setDirection(methodCall, result);
                    return;
                case 7:
                    dispose(methodCall, result);
                    return;
                default:
                    result.notImplemented();
                    return;
            }
        }

        private void create(MethodCall methodCall, MethodChannel.Result result) {
            PlatformViewCreationRequest.RequestedDisplayMode requestedDisplayMode;
            Map map = (Map) methodCall.arguments();
            boolean z = true;
            boolean z2 = map.containsKey("hybrid") && ((Boolean) map.get("hybrid")).booleanValue();
            ByteBuffer wrap = map.containsKey(Message.JsonKeys.PARAMS) ? ByteBuffer.wrap((byte[]) map.get(Message.JsonKeys.PARAMS)) : null;
            try {
                if (z2) {
                    PlatformViewsChannel.this.handler.createForPlatformViewLayer(new PlatformViewCreationRequest(((Integer) map.get("id")).intValue(), (String) map.get("viewType"), BuildConfig.SENTRY_SAMPLE_RATE, BuildConfig.SENTRY_SAMPLE_RATE, BuildConfig.SENTRY_SAMPLE_RATE, BuildConfig.SENTRY_SAMPLE_RATE, ((Integer) map.get("direction")).intValue(), PlatformViewCreationRequest.RequestedDisplayMode.HYBRID_ONLY, wrap));
                    result.success(null);
                    return;
                }
                if (!map.containsKey("hybridFallback") || !((Boolean) map.get("hybridFallback")).booleanValue()) {
                    z = false;
                }
                if (z) {
                    requestedDisplayMode = PlatformViewCreationRequest.RequestedDisplayMode.TEXTURE_WITH_HYBRID_FALLBACK;
                } else {
                    requestedDisplayMode = PlatformViewCreationRequest.RequestedDisplayMode.TEXTURE_WITH_VIRTUAL_FALLBACK;
                }
                long createForTextureLayer = PlatformViewsChannel.this.handler.createForTextureLayer(new PlatformViewCreationRequest(((Integer) map.get("id")).intValue(), (String) map.get("viewType"), map.containsKey("top") ? ((Double) map.get("top")).doubleValue() : 0.0d, map.containsKey("left") ? ((Double) map.get("left")).doubleValue() : 0.0d, ((Double) map.get(ViewHierarchyNode.JsonKeys.WIDTH)).doubleValue(), ((Double) map.get(ViewHierarchyNode.JsonKeys.HEIGHT)).doubleValue(), ((Integer) map.get("direction")).intValue(), requestedDisplayMode, wrap));
                if (createForTextureLayer != -2) {
                    result.success(Long.valueOf(createForTextureLayer));
                } else {
                    if (!z) {
                        throw new AssertionError("Platform view attempted to fall back to hybrid mode when not requested.");
                    }
                    result.success(null);
                }
            } catch (IllegalStateException e) {
                result.error("error", PlatformViewsChannel.detailedExceptionString(e), null);
            }
        }

        private void dispose(MethodCall methodCall, MethodChannel.Result result) {
            try {
                PlatformViewsChannel.this.handler.dispose(((Integer) ((Map) methodCall.arguments()).get("id")).intValue());
                result.success(null);
            } catch (IllegalStateException e) {
                result.error("error", PlatformViewsChannel.detailedExceptionString(e), null);
            }
        }

        private void resize(MethodCall methodCall, final MethodChannel.Result result) {
            Map map = (Map) methodCall.arguments();
            try {
                PlatformViewsChannel.this.handler.resize(new PlatformViewResizeRequest(((Integer) map.get("id")).intValue(), ((Double) map.get(ViewHierarchyNode.JsonKeys.WIDTH)).doubleValue(), ((Double) map.get(ViewHierarchyNode.JsonKeys.HEIGHT)).doubleValue()), new PlatformViewBufferResized() { // from class: io.flutter.embedding.engine.systemchannels.PlatformViewsChannel$1$$ExternalSyntheticLambda0
                    @Override // io.flutter.embedding.engine.systemchannels.PlatformViewsChannel.PlatformViewBufferResized
                    public final void run(PlatformViewsChannel.PlatformViewBufferSize platformViewBufferSize) {
                        PlatformViewsChannel.AnonymousClass1.lambda$resize$0(MethodChannel.Result.this, platformViewBufferSize);
                    }
                });
            } catch (IllegalStateException e) {
                result.error("error", PlatformViewsChannel.detailedExceptionString(e), null);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$resize$0(MethodChannel.Result result, PlatformViewBufferSize platformViewBufferSize) {
            if (platformViewBufferSize == null) {
                result.error("error", "Failed to resize the platform view", null);
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put(ViewHierarchyNode.JsonKeys.WIDTH, Double.valueOf(platformViewBufferSize.width));
            hashMap.put(ViewHierarchyNode.JsonKeys.HEIGHT, Double.valueOf(platformViewBufferSize.height));
            result.success(hashMap);
        }

        private void offset(MethodCall methodCall, MethodChannel.Result result) {
            Map map = (Map) methodCall.arguments();
            try {
                PlatformViewsChannel.this.handler.offset(((Integer) map.get("id")).intValue(), ((Double) map.get("top")).doubleValue(), ((Double) map.get("left")).doubleValue());
                result.success(null);
            } catch (IllegalStateException e) {
                result.error("error", PlatformViewsChannel.detailedExceptionString(e), null);
            }
        }

        private void touch(MethodCall methodCall, MethodChannel.Result result) {
            MethodChannel.Result result2;
            List list = (List) methodCall.arguments();
            try {
                PlatformViewsChannel.this.handler.onTouch(new PlatformViewTouch(((Integer) list.get(0)).intValue(), (Number) list.get(1), (Number) list.get(2), ((Integer) list.get(3)).intValue(), ((Integer) list.get(4)).intValue(), list.get(5), list.get(6), ((Integer) list.get(7)).intValue(), ((Integer) list.get(8)).intValue(), (float) ((Double) list.get(9)).doubleValue(), (float) ((Double) list.get(10)).doubleValue(), ((Integer) list.get(11)).intValue(), ((Integer) list.get(12)).intValue(), ((Integer) list.get(13)).intValue(), ((Integer) list.get(14)).intValue(), ((Number) list.get(15)).longValue()));
                result2 = result;
            } catch (IllegalStateException e) {
                e = e;
                result2 = result;
            }
            try {
                result2.success(null);
            } catch (IllegalStateException e2) {
                e = e2;
                result2.error("error", PlatformViewsChannel.detailedExceptionString(e), null);
            }
        }

        private void setDirection(MethodCall methodCall, MethodChannel.Result result) {
            Map map = (Map) methodCall.arguments();
            try {
                PlatformViewsChannel.this.handler.setDirection(((Integer) map.get("id")).intValue(), ((Integer) map.get("direction")).intValue());
                result.success(null);
            } catch (IllegalStateException e) {
                result.error("error", PlatformViewsChannel.detailedExceptionString(e), null);
            }
        }

        private void clearFocus(MethodCall methodCall, MethodChannel.Result result) {
            try {
                PlatformViewsChannel.this.handler.clearFocus(((Integer) methodCall.arguments()).intValue());
                result.success(null);
            } catch (IllegalStateException e) {
                result.error("error", PlatformViewsChannel.detailedExceptionString(e), null);
            }
        }

        private void synchronizeToNativeViewHierarchy(MethodCall methodCall, MethodChannel.Result result) {
            try {
                PlatformViewsChannel.this.handler.synchronizeToNativeViewHierarchy(((Boolean) methodCall.arguments()).booleanValue());
                result.success(null);
            } catch (IllegalStateException e) {
                result.error("error", PlatformViewsChannel.detailedExceptionString(e), null);
            }
        }
    }

    public PlatformViewsChannel(DartExecutor dartExecutor) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.parsingHandler = anonymousClass1;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/platform_views", StandardMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(anonymousClass1);
    }

    /* loaded from: classes3.dex */
    public static class PlatformViewCreationRequest {
        public final int direction;
        public final RequestedDisplayMode displayMode;
        public final double logicalHeight;
        public final double logicalLeft;
        public final double logicalTop;
        public final double logicalWidth;
        public final ByteBuffer params;
        public final int viewId;
        public final String viewType;

        /* loaded from: classes3.dex */
        public enum RequestedDisplayMode {
            TEXTURE_WITH_VIRTUAL_FALLBACK,
            TEXTURE_WITH_HYBRID_FALLBACK,
            HYBRID_ONLY
        }

        public PlatformViewCreationRequest(int i, String str, double d, double d2, double d3, double d4, int i2, ByteBuffer byteBuffer) {
            this(i, str, d, d2, d3, d4, i2, RequestedDisplayMode.TEXTURE_WITH_VIRTUAL_FALLBACK, byteBuffer);
        }

        public PlatformViewCreationRequest(int i, String str, double d, double d2, double d3, double d4, int i2, RequestedDisplayMode requestedDisplayMode, ByteBuffer byteBuffer) {
            this.viewId = i;
            this.viewType = str;
            this.logicalTop = d;
            this.logicalLeft = d2;
            this.logicalWidth = d3;
            this.logicalHeight = d4;
            this.direction = i2;
            this.displayMode = requestedDisplayMode;
            this.params = byteBuffer;
        }
    }

    /* loaded from: classes3.dex */
    public static class PlatformViewResizeRequest {
        public final double newLogicalHeight;
        public final double newLogicalWidth;
        public final int viewId;

        public PlatformViewResizeRequest(int i, double d, double d2) {
            this.viewId = i;
            this.newLogicalWidth = d;
            this.newLogicalHeight = d2;
        }
    }

    /* loaded from: classes3.dex */
    public static class PlatformViewBufferSize {
        public final int height;
        public final int width;

        public PlatformViewBufferSize(int i, int i2) {
            this.width = i;
            this.height = i2;
        }
    }

    /* loaded from: classes3.dex */
    public static class PlatformViewTouch {
        public final int action;
        public final int buttonState;
        public final int deviceId;
        public final Number downTime;
        public final int edgeFlags;
        public final Number eventTime;
        public final int flags;
        public final int metaState;
        public final long motionEventId;
        public final int pointerCount;
        public final Object rawPointerCoords;
        public final Object rawPointerPropertiesList;
        public final int source;
        public final int viewId;
        public final float xPrecision;
        public final float yPrecision;

        public PlatformViewTouch(int i, Number number, Number number2, int i2, int i3, Object obj, Object obj2, int i4, int i5, float f, float f2, int i6, int i7, int i8, int i9, long j) {
            this.viewId = i;
            this.downTime = number;
            this.eventTime = number2;
            this.action = i2;
            this.pointerCount = i3;
            this.rawPointerPropertiesList = obj;
            this.rawPointerCoords = obj2;
            this.metaState = i4;
            this.buttonState = i5;
            this.xPrecision = f;
            this.yPrecision = f2;
            this.deviceId = i6;
            this.edgeFlags = i7;
            this.source = i8;
            this.flags = i9;
            this.motionEventId = j;
        }
    }
}
