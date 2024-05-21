.class public final synthetic Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/sentry/Attachment;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lio/sentry/ISerializer;

.field public final synthetic f$3:Lio/sentry/ILogger;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/Attachment;JLio/sentry/ISerializer;Lio/sentry/ILogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$0:Lio/sentry/Attachment;

    iput-wide p2, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$1:J

    iput-object p4, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$2:Lio/sentry/ISerializer;

    iput-object p5, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$3:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$0:Lio/sentry/Attachment;

    iget-wide v1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$1:J

    iget-object v3, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$2:Lio/sentry/ISerializer;

    iget-object p0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$3:Lio/sentry/ILogger;

    invoke-static {v0, v1, v2, v3, p0}, Lio/sentry/SentryEnvelopeItem;->lambda$fromAttachment$15(Lio/sentry/Attachment;JLio/sentry/ISerializer;Lio/sentry/ILogger;)[B

    move-result-object p0

    return-object p0
.end method
