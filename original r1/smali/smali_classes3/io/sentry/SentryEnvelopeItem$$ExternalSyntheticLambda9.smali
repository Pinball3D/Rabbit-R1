.class public final synthetic Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/sentry/ISerializer;

.field public final synthetic f$1:Lio/sentry/clientreport/ClientReport;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;->f$0:Lio/sentry/ISerializer;

    iput-object p2, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;->f$1:Lio/sentry/clientreport/ClientReport;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;->f$0:Lio/sentry/ISerializer;

    iget-object p0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;->f$1:Lio/sentry/clientreport/ClientReport;

    invoke-static {v0, p0}, Lio/sentry/SentryEnvelopeItem;->lambda$fromClientReport$21(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)[B

    move-result-object p0

    return-object p0
.end method
