.class public final synthetic Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/OutboxSender;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/OutboxSender;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;->f$0:Lio/sentry/OutboxSender;

    iput-object p2, p0, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;->f$0:Lio/sentry/OutboxSender;

    iget-object p0, p0, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    check-cast p1, Lio/sentry/hints/Retryable;

    invoke-virtual {v0, p0, p1}, Lio/sentry/OutboxSender;->lambda$processFile$0$io-sentry-OutboxSender(Ljava/io/File;Lio/sentry/hints/Retryable;)V

    return-void
.end method
