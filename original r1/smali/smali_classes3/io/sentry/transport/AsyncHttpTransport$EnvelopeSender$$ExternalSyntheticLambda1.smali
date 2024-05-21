.class public final synthetic Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;->f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;->f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    check-cast p1, Lio/sentry/hints/DiskFlushNotification;

    invoke-virtual {p0, p1}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->lambda$flush$1$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/hints/DiskFlushNotification;)V

    return-void
.end method
