.class public final Lio/sentry/util/HintUtils;
.super Ljava/lang/Object;
.source "HintUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/HintUtils$SentryConsumer;,
        Lio/sentry/util/HintUtils$SentryNullableConsumer;,
        Lio/sentry/util/HintUtils$SentryHintFallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;
    .locals 1

    .line 49
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    .line 50
    invoke-static {v0, p0}, Lio/sentry/util/HintUtils;->setTypeCheckHint(Lio/sentry/Hint;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getEventDropReason(Lio/sentry/Hint;)Lio/sentry/hints/EventDropReason;
    .locals 2

    const-string v0, "sentry:eventDropReason"

    .line 45
    const-class v1, Lio/sentry/hints/EventDropReason;

    invoke-virtual {p0, v0, v1}, Lio/sentry/Hint;->getAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/hints/EventDropReason;

    return-object p0
.end method

.method public static getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;
    .locals 1

    const-string v0, "sentry:typeCheckHint"

    .line 59
    invoke-virtual {p0, v0}, Lio/sentry/Hint;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFromHybridSdk(Lio/sentry/Hint;)Z
    .locals 3

    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "sentry:isFromHybridSdk"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lio/sentry/Hint;->getAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$runIfDoesNotHaveType$0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$runIfDoesNotHaveType$1(Lio/sentry/util/HintUtils$SentryNullableConsumer;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 74
    invoke-interface {p0, p1}, Lio/sentry/util/HintUtils$SentryNullableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$runIfHasType$2(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$runIfHasTypeLogIfNot$3(Lio/sentry/ILogger;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 90
    invoke-static {p2, p1, p0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    return-void
.end method

.method public static runIfDoesNotHaveType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryNullableConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/HintUtils$SentryNullableConsumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 69
    new-instance v0, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda1;-><init>(Lio/sentry/util/HintUtils$SentryNullableConsumer;)V

    invoke-static {p0, p1, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    return-void
.end method

.method public static runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    return-void
.end method

.method public static runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "TT;>;",
            "Lio/sentry/util/HintUtils$SentryHintFallback;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    invoke-static {p0, p1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p2, v0}, Lio/sentry/util/HintUtils$SentryConsumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p3, v0, p1}, Lio/sentry/util/HintUtils$SentryHintFallback;->accept(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public static runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/ILogger;",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda3;-><init>(Lio/sentry/ILogger;)V

    invoke-static {p0, p1, p3, v0}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    return-void
.end method

.method public static setEventDropReason(Lio/sentry/Hint;Lio/sentry/hints/EventDropReason;)V
    .locals 1

    const-string v0, "sentry:eventDropReason"

    .line 40
    invoke-virtual {p0, v0, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setIsFromHybridSdk(Lio/sentry/Hint;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sentry.javascript"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sentry.dart"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sentry.dotnet"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "sentry:isFromHybridSdk"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setTypeCheckHint(Lio/sentry/Hint;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "sentry:typeCheckHint"

    .line 55
    invoke-virtual {p0, v0, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static shouldApplyScopeData(Lio/sentry/Hint;)Z
    .locals 1

    .line 115
    const-class v0, Lio/sentry/hints/Cached;

    invoke-static {p0, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lio/sentry/hints/Backfillable;

    invoke-static {p0, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Lio/sentry/hints/ApplyScopeData;

    .line 116
    invoke-static {p0, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
