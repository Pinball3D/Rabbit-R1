.class public final Lio/sentry/kotlin/SentryContext;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "SentryContext.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThreadContextElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/kotlin/SentryContext$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CopyableThreadContextElement<",
        "Lio/sentry/IHub;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0010B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/sentry/kotlin/SentryContext;",
        "Lkotlinx/coroutines/CopyableThreadContextElement;",
        "Lio/sentry/IHub;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "hub",
        "(Lio/sentry/IHub;)V",
        "copyForChild",
        "mergeForChild",
        "Lkotlin/coroutines/CoroutineContext;",
        "overwritingElement",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "restoreThreadContext",
        "",
        "context",
        "oldState",
        "updateThreadContext",
        "Key",
        "sentry-kotlin-extensions"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x3
    }
.end annotation


# static fields
.field private static final Key:Lio/sentry/kotlin/SentryContext$Key;


# instance fields
.field private final hub:Lio/sentry/IHub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/kotlin/SentryContext$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/kotlin/SentryContext$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/kotlin/SentryContext;->Key:Lio/sentry/kotlin/SentryContext$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/sentry/kotlin/SentryContext;-><init>(Lio/sentry/IHub;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;)V
    .locals 1

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/sentry/kotlin/SentryContext;->Key:Lio/sentry/kotlin/SentryContext$Key;

    .line 13
    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lio/sentry/kotlin/SentryContext;->hub:Lio/sentry/IHub;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 12
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object p1

    const-string p2, "Sentry.getCurrentHub().clone()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/kotlin/SentryContext;-><init>(Lio/sentry/IHub;)V

    return-void
.end method


# virtual methods
.method public copyForChild()Lkotlinx/coroutines/CopyableThreadContextElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CopyableThreadContextElement<",
            "Lio/sentry/IHub;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lio/sentry/kotlin/SentryContext;

    iget-object p0, p0, Lio/sentry/kotlin/SentryContext;->hub:Lio/sentry/IHub;

    invoke-interface {p0}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object p0

    const-string v1, "hub.clone()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lio/sentry/kotlin/SentryContext;-><init>(Lio/sentry/IHub;)V

    check-cast v0, Lkotlinx/coroutines/CopyableThreadContextElement;

    return-object v0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/CopyableThreadContextElement$DefaultImpls;->fold(Lkotlinx/coroutines/CopyableThreadContextElement;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lkotlinx/coroutines/CopyableThreadContextElement$DefaultImpls;->get(Lkotlinx/coroutines/CopyableThreadContextElement;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    return-object p0
.end method

.method public mergeForChild(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    const-string v0, "overwritingElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/sentry/kotlin/SentryContext;->Key:Lio/sentry/kotlin/SentryContext$Key;

    .line 22
    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext$Element;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Lio/sentry/kotlin/SentryContext;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lio/sentry/kotlin/SentryContext;

    iget-object p0, p0, Lio/sentry/kotlin/SentryContext;->hub:Lio/sentry/IHub;

    invoke-interface {p0}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object p0

    const-string v0, "hub.clone()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lio/sentry/kotlin/SentryContext;-><init>(Lio/sentry/IHub;)V

    :goto_0
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    return-object p1
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lkotlinx/coroutines/CopyableThreadContextElement$DefaultImpls;->minusKey(Lkotlinx/coroutines/CopyableThreadContextElement;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lkotlinx/coroutines/CopyableThreadContextElement$DefaultImpls;->plus(Lkotlinx/coroutines/CopyableThreadContextElement;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Lio/sentry/IHub;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "oldState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p2}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    return-void
.end method

.method public bridge synthetic restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lio/sentry/IHub;

    invoke-virtual {p0, p1, p2}, Lio/sentry/kotlin/SentryContext;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Lio/sentry/IHub;)V

    return-void
.end method

.method public updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Lio/sentry/IHub;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p1

    const-string v0, "Sentry.getCurrentHub()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/kotlin/SentryContext;->hub:Lio/sentry/IHub;

    .line 27
    invoke-static {p0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    return-object p1
.end method

.method public bridge synthetic updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lio/sentry/kotlin/SentryContext;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Lio/sentry/IHub;

    move-result-object p0

    return-object p0
.end method
