.class public final Lio/sentry/SentryStackTraceFactory;
.super Ljava/lang/Object;
.source "SentryStackTraceFactory.java"


# static fields
.field private static final STACKTRACE_FRAME_LIMIT:I = 0x64


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryStackTraceFactory;->options:Lio/sentry/SentryOptions;

    return-void
.end method

.method static synthetic lambda$getInAppCallStack$0(Lio/sentry/protocol/SentryStackFrame;)Z
    .locals 1

    .line 119
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/protocol/SentryStackFrame;->isInApp()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getInAppCallStack$1(Lio/sentry/protocol/SentryStackFrame;)Z
    .locals 3

    .line 130
    invoke-virtual {p0}, Lio/sentry/protocol/SentryStackFrame;->getModule()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v2, "sun."

    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "java."

    .line 135
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android."

    .line 136
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android."

    .line 137
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method


# virtual methods
.method public getInAppCallStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryStackTraceFactory;->getInAppCallStack(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getInAppCallStack(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryStackTraceFactory;->getStackFrames([Ljava/lang/StackTraceElement;Z)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    new-instance p1, Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda0;-><init>()V

    .line 119
    invoke-static {p0, p1}, Lio/sentry/util/CollectionUtils;->filterListEntries(Ljava/util/List;Lio/sentry/util/CollectionUtils$Predicate;)Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 127
    :cond_1
    new-instance p1, Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1}, Lio/sentry/util/CollectionUtils;->filterListEntries(Ljava/util/List;Lio/sentry/util/CollectionUtils$Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStackFrames([Ljava/lang/StackTraceElement;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Z)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 34
    array-length v0, p1

    if-lez v0, :cond_4

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez p2, :cond_0

    const-string v5, "io.sentry."

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "io.sentry.samples."

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "io.sentry.mobile."

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    new-instance v5, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v5}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 50
    invoke-virtual {p0, v4}, Lio/sentry/SentryStackTraceFactory;->isInApp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/SentryStackFrame;->setInApp(Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {v5, v4}, Lio/sentry/protocol/SentryStackFrame;->setModule(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lio/sentry/protocol/SentryStackFrame;->setFilename(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    if-ltz v4, :cond_1

    .line 57
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lio/sentry/protocol/SentryStackFrame;->setLineno(Ljava/lang/Integer;)V

    .line 59
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Lio/sentry/protocol/SentryStackFrame;->setNative(Ljava/lang/Boolean;)V

    .line 60
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_3
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public isInApp(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/sentry/SentryStackTraceFactory;->options:Lio/sentry/SentryOptions;

    .line 86
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getInAppIncludes()Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    iget-object p0, p0, Lio/sentry/SentryStackTraceFactory;->options:Lio/sentry/SentryOptions;

    .line 93
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getInAppExcludes()Ljava/util/List;

    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    .line 96
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method
