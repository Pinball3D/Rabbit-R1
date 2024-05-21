.class public final synthetic Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lio/sentry/IHub;

.field public final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/IHub;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;->f$0:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;->f$0:Lio/sentry/IHub;

    iget-object p0, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    invoke-static {v0, p0}, Lio/sentry/SentryWrapper;->lambda$wrapSupplier$1(Lio/sentry/IHub;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
