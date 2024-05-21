.class public final synthetic Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/EnvelopeSender;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/EnvelopeSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda0;->f$0:Lio/sentry/EnvelopeSender;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda0;->f$0:Lio/sentry/EnvelopeSender;

    check-cast p1, Lio/sentry/hints/Flushable;

    invoke-virtual {p0, p1}, Lio/sentry/EnvelopeSender;->lambda$processFile$0$io-sentry-EnvelopeSender(Lio/sentry/hints/Flushable;)V

    return-void
.end method
