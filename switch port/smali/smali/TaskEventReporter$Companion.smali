.class public final LTaskEventReporter$Companion;
.super Ljava/lang/Object;
.source "Device.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTaskEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR#\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "LTaskEventReporter$Companion;",
        "",
        "()V",
        "codec",
        "Lio/flutter/plugin/common/MessageCodec;",
        "getCodec",
        "()Lio/flutter/plugin/common/MessageCodec;",
        "codec$delegate",
        "Lkotlin/Lazy;",
        "setUp",
        "",
        "binaryMessenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "api",
        "LTaskEventReporter;",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:LTaskEventReporter$Companion;

.field private static final codec$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/flutter/plugin/common/StandardMessageCodec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$c5mIUJZXNtJvh48b8m1za0wIrpQ(LTaskEventReporter;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0

    invoke-static {p0, p1, p2}, LTaskEventReporter$Companion;->setUp$lambda$1$lambda$0(LTaskEventReporter;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method

.method public static synthetic $r8$lambda$scVF8uvTT_rAbqxxnB9V4p0gEVo(LTaskEventReporter;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0

    invoke-static {p0, p1, p2}, LTaskEventReporter$Companion;->setUp$lambda$3$lambda$2(LTaskEventReporter;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTaskEventReporter$Companion;

    invoke-direct {v0}, LTaskEventReporter$Companion;-><init>()V

    sput-object v0, LTaskEventReporter$Companion;->$$INSTANCE:LTaskEventReporter$Companion;

    .line 226
    sget-object v0, LTaskEventReporter$Companion$codec$2;->INSTANCE:LTaskEventReporter$Companion$codec$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LTaskEventReporter$Companion;->codec$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final setUp$lambda$1$lambda$0(LTaskEventReporter;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 3

    const-string v0, "reply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    .line 236
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 237
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    .line 238
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 241
    :try_start_0
    invoke-interface {p0, v0, p1}, LTaskEventReporter;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 242
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 244
    invoke-static {p0}, LDeviceKt;->access$wrapError(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    .line 246
    :goto_0
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method private static final setUp$lambda$3$lambda$2(LTaskEventReporter;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 3

    const-string v0, "reply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    .line 256
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 257
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    .line 258
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 261
    :try_start_0
    invoke-interface {p0, v0, p1}, LTaskEventReporter;->getTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 263
    invoke-static {p0}, LDeviceKt;->access$wrapError(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    .line 265
    :goto_0
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCodec()Lio/flutter/plugin/common/MessageCodec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object p0, LTaskEventReporter$Companion;->codec$delegate:Lkotlin/Lazy;

    .line 226
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugin/common/MessageCodec;

    return-object p0
.end method

.method public final setUp(Lio/flutter/plugin/common/BinaryMessenger;LTaskEventReporter;)V
    .locals 3

    const-string v0, "binaryMessenger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    move-object v0, p0

    check-cast v0, LTaskEventReporter$Companion;

    .line 233
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.r1_flutter.TaskEventReporter.sendEvent"

    invoke-virtual {p0}, LTaskEventReporter$Companion;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 235
    new-instance v2, LTaskEventReporter$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, LTaskEventReporter$Companion$$ExternalSyntheticLambda0;-><init>(LTaskEventReporter;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 253
    :goto_0
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.r1_flutter.TaskEventReporter.getTaskInfo"

    invoke-virtual {p0}, LTaskEventReporter$Companion;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object p0

    invoke-direct {v0, p1, v2, p0}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p2, :cond_1

    .line 255
    new-instance p0, LTaskEventReporter$Companion$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, LTaskEventReporter$Companion$$ExternalSyntheticLambda1;-><init>(LTaskEventReporter;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1

    .line 268
    :cond_1
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_1
    return-void
.end method
