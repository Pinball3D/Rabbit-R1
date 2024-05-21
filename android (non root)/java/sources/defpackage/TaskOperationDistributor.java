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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\t\u0012\u0004\u0012\u00020\u00060\bJ(\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\t\u0012\u0004\u0012\u00020\u00060\bJ(\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\t\u0012\u0004\u0012\u00020\u00060\bJ(\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\f2\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\t\u0012\u0004\u0012\u00020\u00060\bJ \u0010\u0012\u001a\u00020\u00062\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\t\u0012\u0004\u0012\u00020\u00060\bJ@\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\f2\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\t\u0012\u0004\u0012\u00020\u00060\bJ@\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\f2\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\t\u0012\u0004\u0012\u00020\u00060\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"LTaskOperationDistributor;", "", "binaryMessenger", "Lio/flutter/plugin/common/BinaryMessenger;", "(Lio/flutter/plugin/common/BinaryMessenger;)V", "clearAllTask", "", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "onCancel", "taskIdArg", "", "onChargingStateChange", "isChargingArg", "", "onTTS", "textArg", "onTTSFinish", "onTask", "taskNameArg", "pageArg", "payloadArg", "syncState", "typeArg", "keyArg", "valueArg", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TaskOperationDistributor {
    private final BinaryMessenger binaryMessenger;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final Lazy<StandardMessageCodec> codec$delegate = LazyKt.lazy(new Function0<StandardMessageCodec>() { // from class: TaskOperationDistributor$Companion$codec$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final StandardMessageCodec invoke() {
            return new StandardMessageCodec();
        }
    });

    public TaskOperationDistributor(BinaryMessenger binaryMessenger) {
        Intrinsics.checkNotNullParameter(binaryMessenger, "binaryMessenger");
        this.binaryMessenger = binaryMessenger;
    }

    /* compiled from: Device.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R#\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"LTaskOperationDistributor$Companion;", "", "()V", "codec", "Lio/flutter/plugin/common/MessageCodec;", "getCodec", "()Lio/flutter/plugin/common/MessageCodec;", "codec$delegate", "Lkotlin/Lazy;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MessageCodec<Object> getCodec() {
            return (MessageCodec) TaskOperationDistributor.codec$delegate.getValue();
        }
    }

    public final void onTask(String taskIdArg, String taskNameArg, String pageArg, String payloadArg, final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(taskIdArg, "taskIdArg");
        Intrinsics.checkNotNullParameter(taskNameArg, "taskNameArg");
        Intrinsics.checkNotNullParameter(pageArg, "pageArg");
        Intrinsics.checkNotNullParameter(payloadArg, "payloadArg");
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onTask";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onTask", INSTANCE.getCodec()).send(CollectionsKt.listOf((Object[]) new String[]{taskIdArg, taskNameArg, pageArg, payloadArg}), new BasicMessageChannel.Reply() { // from class: TaskOperationDistributor$$ExternalSyntheticLambda0
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                TaskOperationDistributor.onTask$lambda$0(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTask$lambda$0(Function1 callback, String channelName, Object obj) {
        FlutterError createConnectionError;
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
        createConnectionError = createConnectionError.createConnectionError(channelName);
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError))));
    }

    public final void onCancel(String taskIdArg, final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(taskIdArg, "taskIdArg");
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onCancel";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onCancel", INSTANCE.getCodec()).send(CollectionsKt.listOf(taskIdArg), new BasicMessageChannel.Reply() { // from class: TaskOperationDistributor$$ExternalSyntheticLambda4
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                TaskOperationDistributor.onCancel$lambda$1(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCancel$lambda$1(Function1 callback, String channelName, Object obj) {
        FlutterError createConnectionError;
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
        createConnectionError = createConnectionError.createConnectionError(channelName);
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError))));
    }

    public final void clearAllTask(final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.clearAllTask";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.clearAllTask", INSTANCE.getCodec()).send(null, new BasicMessageChannel.Reply() { // from class: TaskOperationDistributor$$ExternalSyntheticLambda2
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                TaskOperationDistributor.clearAllTask$lambda$2(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearAllTask$lambda$2(Function1 callback, String channelName, Object obj) {
        FlutterError createConnectionError;
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
        createConnectionError = createConnectionError.createConnectionError(channelName);
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError))));
    }

    public final void syncState(String taskIdArg, String typeArg, String keyArg, String valueArg, final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(taskIdArg, "taskIdArg");
        Intrinsics.checkNotNullParameter(typeArg, "typeArg");
        Intrinsics.checkNotNullParameter(keyArg, "keyArg");
        Intrinsics.checkNotNullParameter(valueArg, "valueArg");
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.syncState";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.syncState", INSTANCE.getCodec()).send(CollectionsKt.listOf((Object[]) new String[]{taskIdArg, typeArg, keyArg, valueArg}), new BasicMessageChannel.Reply() { // from class: TaskOperationDistributor$$ExternalSyntheticLambda3
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                TaskOperationDistributor.syncState$lambda$3(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void syncState$lambda$3(Function1 callback, String channelName, Object obj) {
        FlutterError createConnectionError;
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
        createConnectionError = createConnectionError.createConnectionError(channelName);
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError))));
    }

    public final void onTTS(String textArg, final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(textArg, "textArg");
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onTTS";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onTTS", INSTANCE.getCodec()).send(CollectionsKt.listOf(textArg), new BasicMessageChannel.Reply() { // from class: TaskOperationDistributor$$ExternalSyntheticLambda5
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                TaskOperationDistributor.onTTS$lambda$4(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTTS$lambda$4(Function1 callback, String channelName, Object obj) {
        FlutterError createConnectionError;
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
        createConnectionError = createConnectionError.createConnectionError(channelName);
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError))));
    }

    public final void onTTSFinish(final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onTTSFinish";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onTTSFinish", INSTANCE.getCodec()).send(null, new BasicMessageChannel.Reply() { // from class: TaskOperationDistributor$$ExternalSyntheticLambda1
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                TaskOperationDistributor.onTTSFinish$lambda$5(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTTSFinish$lambda$5(Function1 callback, String channelName, Object obj) {
        FlutterError createConnectionError;
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
        createConnectionError = createConnectionError.createConnectionError(channelName);
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError))));
    }

    public final void onChargingStateChange(boolean isChargingArg, final Function1<? super Result<Unit>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        final String str = "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onChargingStateChange";
        new BasicMessageChannel(this.binaryMessenger, "dev.flutter.pigeon.r1_flutter.TaskOperationDistributor.onChargingStateChange", INSTANCE.getCodec()).send(CollectionsKt.listOf(Boolean.valueOf(isChargingArg)), new BasicMessageChannel.Reply() { // from class: TaskOperationDistributor$$ExternalSyntheticLambda6
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                TaskOperationDistributor.onChargingStateChange$lambda$6(Function1.this, str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onChargingStateChange$lambda$6(Function1 callback, String channelName, Object obj) {
        FlutterError createConnectionError;
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
        createConnectionError = createConnectionError.createConnectionError(channelName);
        callback.invoke(Result.m5697boximpl(Result.m5698constructorimpl(ResultKt.createFailure(createConnectionError))));
    }
}
