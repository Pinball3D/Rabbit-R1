package defpackage;

import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Device.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0018\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0004\u0012\u00020\u00060\nJ(\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0018\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0004\u0012\u00020\u00060\nJ \u0010\r\u001a\u00020\u00062\u0018\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0004\u0012\u00020\u00060\nJ \u0010\u000e\u001a\u00020\u00062\u0018\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0004\u0012\u00020\u00060\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"LDeviceEventsDispatcher;", "", "binaryMessenger", "Lio/flutter/plugin/common/BinaryMessenger;", "(Lio/flutter/plugin/common/BinaryMessenger;)V", "onKeyDown", "", "codeArg", "", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "onKeyUp", "onRotate", "onShake", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DeviceEventsDispatcher {
    private final BinaryMessenger binaryMessenger;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final Lazy<StandardMessageCodec> codec$delegate = LazyKt.lazy(new Function0<StandardMessageCodec>() { // from class: DeviceEventsDispatcher$Companion$codec$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final StandardMessageCodec invoke() {
            return new StandardMessageCodec();
        }
    });

    public DeviceEventsDispatcher(BinaryMessenger binaryMessenger) {
        Intrinsics.checkNotNullParameter(binaryMessenger, "binaryMessenger");
        this.binaryMessenger = binaryMessenger;
    }

    /* compiled from: Device.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R#\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"LDeviceEventsDispatcher$Companion;", "", "()V", "codec", "Lio/flutter/plugin/common/MessageCodec;", "getCodec", "()Lio/flutter/plugin/common/MessageCodec;", "codec$delegate", "Lkotlin/Lazy;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MessageCodec<Object> getCodec() {
            return (MessageCodec) DeviceEventsDispatcher.codec$delegate.getValue();
        }
    }

    public final void onKeyDown(long codeArg, final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.DeviceEventsDispatcher.onKeyDown";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceEventsDispatcher.onKeyDown", INSTANCE.getCodec()).send(CollectionsKt.listOf(Long.valueOf(codeArg)), new BasicMessageChannel.Reply() { // from class: DeviceEventsDispatcher$$ExternalSyntheticLambda1
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                DeviceEventsDispatcher.onKeyDown$lambda$0(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyDown$lambda$0(Function1 callback, String channelName, Object obj) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(channelName, "$channelName");
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.INSTANCE;
                Object obj2 = list.get(0);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Object obj3 = list.get(1);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(new FlutterError((String) obj2, (String) obj3, (String) list.get(2))))));
                return;
            }
            Result.Companion companion2 = Result.INSTANCE;
            callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(Unit.INSTANCE)));
            return;
        }
        Result.Companion companion3 = Result.INSTANCE;
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError.access$createConnectionError(channelName)))));
    }

    public final void onKeyUp(long codeArg, final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.DeviceEventsDispatcher.onKeyUp";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceEventsDispatcher.onKeyUp", INSTANCE.getCodec()).send(CollectionsKt.listOf(Long.valueOf(codeArg)), new BasicMessageChannel.Reply() { // from class: DeviceEventsDispatcher$$ExternalSyntheticLambda2
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                DeviceEventsDispatcher.onKeyUp$lambda$1(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyUp$lambda$1(Function1 callback, String channelName, Object obj) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(channelName, "$channelName");
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.INSTANCE;
                Object obj2 = list.get(0);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Object obj3 = list.get(1);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(new FlutterError((String) obj2, (String) obj3, (String) list.get(2))))));
                return;
            }
            Result.Companion companion2 = Result.INSTANCE;
            callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(Unit.INSTANCE)));
            return;
        }
        Result.Companion companion3 = Result.INSTANCE;
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError.access$createConnectionError(channelName)))));
    }

    public final void onShake(final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.DeviceEventsDispatcher.onShake";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceEventsDispatcher.onShake", INSTANCE.getCodec()).send(null, new BasicMessageChannel.Reply() { // from class: DeviceEventsDispatcher$$ExternalSyntheticLambda0
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                DeviceEventsDispatcher.onShake$lambda$2(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onShake$lambda$2(Function1 callback, String channelName, Object obj) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(channelName, "$channelName");
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.INSTANCE;
                Object obj2 = list.get(0);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Object obj3 = list.get(1);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(new FlutterError((String) obj2, (String) obj3, (String) list.get(2))))));
                return;
            }
            Result.Companion companion2 = Result.INSTANCE;
            callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(Unit.INSTANCE)));
            return;
        }
        Result.Companion companion3 = Result.INSTANCE;
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError.access$createConnectionError(channelName)))));
    }

    public final void onRotate(final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.DeviceEventsDispatcher.onRotate";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.DeviceEventsDispatcher.onRotate", INSTANCE.getCodec()).send(null, new BasicMessageChannel.Reply() { // from class: DeviceEventsDispatcher$$ExternalSyntheticLambda3
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                DeviceEventsDispatcher.onRotate$lambda$3(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRotate$lambda$3(Function1 callback, String channelName, Object obj) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(channelName, "$channelName");
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.INSTANCE;
                Object obj2 = list.get(0);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Object obj3 = list.get(1);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(new FlutterError((String) obj2, (String) obj3, (String) list.get(2))))));
                return;
            }
            Result.Companion companion2 = Result.INSTANCE;
            callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(Unit.INSTANCE)));
            return;
        }
        Result.Companion companion3 = Result.INSTANCE;
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError.access$createConnectionError(channelName)))));
    }
}
