package defpackage;

import defpackage.DeviceControl;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Device.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bf\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u000bH&J\b\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\tH&¨\u0006\u0011"}, d2 = {"LDeviceControl;", "", "addScreenOnFlag", "", "disableRotation", "enableRotation", "getBatteryChargingState", "", "getBatteryLevel", "", "getVersion", "", "getVersionBrief", "removeScreenOnFlag", "setVolume", "level", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public interface DeviceControl {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    void addScreenOnFlag();

    void disableRotation();

    void enableRotation();

    boolean getBatteryChargingState();

    long getBatteryLevel();

    String getVersion();

    String getVersionBrief();

    void removeScreenOnFlag();

    void setVolume(long level);

    /* compiled from: Device.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eR#\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"LDeviceControl$Companion;", "", "()V", "codec", "Lio/flutter/plugin/common/MessageCodec;", "getCodec", "()Lio/flutter/plugin/common/MessageCodec;", "codec$delegate", "Lkotlin/Lazy;", "setUp", "", "binaryMessenger", "Lio/flutter/plugin/common/BinaryMessenger;", "api", "LDeviceControl;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* renamed from: codec$delegate, reason: from kotlin metadata */
        private static final Lazy<StandardMessageCodec> codec = LazyKt.lazy(new Function0<StandardMessageCodec>() { // from class: DeviceControl$Companion$codec$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final StandardMessageCodec invoke() {
                return new StandardMessageCodec();
            }
        });

        private Companion() {
        }

        public final MessageCodec<Object> getCodec() {
            return codec.getValue();
        }

        public final void setUp(BinaryMessenger binaryMessenger, final DeviceControl api) {
            Intrinsics.checkNotNullParameter(binaryMessenger, "binaryMessenger");
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.setVolume", getCodec());
            if (api != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$2$lambda$1(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.getVersion", getCodec());
            if (api != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda1
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$4$lambda$3(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.getVersionBrief", getCodec());
            if (api != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda2
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$6$lambda$5(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.getBatteryLevel", getCodec());
            if (api != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda3
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$8$lambda$7(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.getBatteryChargingState", getCodec());
            if (api != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda4
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$10$lambda$9(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.enableRotation", getCodec());
            if (api != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda5
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$12$lambda$11(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.disableRotation", getCodec());
            if (api != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda6
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$14$lambda$13(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.addScreenOnFlag", getCodec());
            if (api != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda7
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$16$lambda$15(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceControl.removeScreenOnFlag", getCodec());
            if (api != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: DeviceControl$Companion$$ExternalSyntheticLambda8
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        DeviceControl.Companion.setUp$lambda$18$lambda$17(DeviceControl.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$2$lambda$1(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            long longValue;
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            if (obj2 instanceof Integer) {
                longValue = ((Number) obj2).intValue();
            } else {
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Long");
                longValue = ((Long) obj2).longValue();
            }
            try {
                deviceControl.setVolume(longValue);
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$4$lambda$3(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            try {
                wrapError = CollectionsKt.listOf(deviceControl.getVersion());
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$6$lambda$5(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            try {
                wrapError = CollectionsKt.listOf(deviceControl.getVersionBrief());
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$8$lambda$7(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            try {
                wrapError = CollectionsKt.listOf(Long.valueOf(deviceControl.getBatteryLevel()));
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$10$lambda$9(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            try {
                wrapError = CollectionsKt.listOf(Boolean.valueOf(deviceControl.getBatteryChargingState()));
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$12$lambda$11(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            try {
                deviceControl.enableRotation();
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$14$lambda$13(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            try {
                deviceControl.disableRotation();
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$16$lambda$15(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            try {
                deviceControl.addScreenOnFlag();
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUp$lambda$18$lambda$17(DeviceControl deviceControl, Object obj, BasicMessageChannel.Reply reply) {
            List wrapError;
            Intrinsics.checkNotNullParameter(reply, "reply");
            try {
                deviceControl.removeScreenOnFlag();
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = createConnectionError.wrapError(th);
            }
            reply.reply(wrapError);
        }
    }
}
