.class public final Lio/sentry/SamplingContext;
.super Ljava/lang/Object;
.source "SamplingContext.java"


# instance fields
.field private final customSamplingContext:Lio/sentry/CustomSamplingContext;

.field private final transactionContext:Lio/sentry/TransactionContext;


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transactionContexts is required"

    .line 19
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/TransactionContext;

    iput-object p1, p0, Lio/sentry/SamplingContext;->transactionContext:Lio/sentry/TransactionContext;

    iput-object p2, p0, Lio/sentry/SamplingContext;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-void
.end method


# virtual methods
.method public getCustomSamplingContext()Lio/sentry/CustomSamplingContext;
    .locals 0

    iget-object p0, p0, Lio/sentry/SamplingContext;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-object p0
.end method

.method public getTransactionContext()Lio/sentry/TransactionContext;
    .locals 0

    iget-object p0, p0, Lio/sentry/SamplingContext;->transactionContext:Lio/sentry/TransactionContext;

    return-object p0
.end method
