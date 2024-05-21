.class public final synthetic Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;


# instance fields
.field public final synthetic f$0:Lio/sentry/instrumentation/file/SentryFileInputStream;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/instrumentation/file/SentryFileInputStream;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;->f$0:Lio/sentry/instrumentation/file/SentryFileInputStream;

    iput-object p2, p0, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;->f$0:Lio/sentry/instrumentation/file/SentryFileInputStream;

    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->lambda$read$0$io-sentry-instrumentation-file-SentryFileInputStream(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
