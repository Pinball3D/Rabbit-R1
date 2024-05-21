.class final Lio/sentry/android/core/EnvelopeFileObserver;
.super Landroid/os/FileObserver;
.source "EnvelopeFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;
    }
.end annotation


# instance fields
.field private final envelopeSender:Lio/sentry/IEnvelopeSender;

.field private final flushTimeoutMillis:J

.field private final logger:Lio/sentry/ILogger;

.field private final rootPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/sentry/IEnvelopeSender;Lio/sentry/ILogger;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/android/core/EnvelopeFileObserver;->rootPath:Ljava/lang/String;

    const-string p1, "Envelope sender is required."

    .line 40
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IEnvelopeSender;

    iput-object p1, p0, Lio/sentry/android/core/EnvelopeFileObserver;->envelopeSender:Lio/sentry/IEnvelopeSender;

    const-string p1, "Logger is required."

    .line 41
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/EnvelopeFileObserver;->logger:Lio/sentry/ILogger;

    iput-wide p4, p0, Lio/sentry/android/core/EnvelopeFileObserver;->flushTimeoutMillis:J

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserver;->logger:Lio/sentry/ILogger;

    .line 51
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lio/sentry/android/core/EnvelopeFileObserver;->rootPath:Ljava/lang/String;

    filled-new-array {p1, v2, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "onEvent fired for EnvelopeFileObserver with event type %d on path: %s for file %s."

    .line 51
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance p1, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;

    iget-wide v0, p0, Lio/sentry/android/core/EnvelopeFileObserver;->flushTimeoutMillis:J

    iget-object v2, p0, Lio/sentry/android/core/EnvelopeFileObserver;->logger:Lio/sentry/ILogger;

    invoke-direct {p1, v0, v1, v2}, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;-><init>(JLio/sentry/ILogger;)V

    .line 62
    invoke-static {p1}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object p1

    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserver;->envelopeSender:Lio/sentry/IEnvelopeSender;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lio/sentry/android/core/EnvelopeFileObserver;->rootPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lio/sentry/IEnvelopeSender;->processEnvelopeFile(Ljava/lang/String;Lio/sentry/Hint;)V

    :cond_1
    :goto_0
    return-void
.end method
