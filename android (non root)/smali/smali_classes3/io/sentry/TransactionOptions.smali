.class public final Lio/sentry/TransactionOptions;
.super Lio/sentry/SpanOptions;
.source "TransactionOptions.java"


# static fields
.field public static final DEFAULT_DEADLINE_TIMEOUT_AUTO_TRANSACTION:J = 0x7530L


# instance fields
.field private bindToScope:Z

.field private customSamplingContext:Lio/sentry/CustomSamplingContext;

.field private deadlineTimeout:Ljava/lang/Long;

.field private idleTimeout:Ljava/lang/Long;

.field private isAppStartTransaction:Z

.field private startTimestamp:Lio/sentry/SentryDate;

.field private transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

.field private waitForChildren:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lio/sentry/SpanOptions;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->bindToScope:Z

    iput-object v0, p0, Lio/sentry/TransactionOptions;->startTimestamp:Lio/sentry/SentryDate;

    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->isAppStartTransaction:Z

    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    iput-object v0, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/TransactionOptions;->deadlineTimeout:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    return-void
.end method


# virtual methods
.method public getCustomSamplingContext()Lio/sentry/CustomSamplingContext;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-object p0
.end method

.method public getDeadlineTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionOptions;->deadlineTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public getStartTimestamp()Lio/sentry/SentryDate;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionOptions;->startTimestamp:Lio/sentry/SentryDate;

    return-object p0
.end method

.method public getTransactionFinishedCallback()Lio/sentry/TransactionFinishedCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    return-object p0
.end method

.method public isAppStartTransaction()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/TransactionOptions;->isAppStartTransaction:Z

    return p0
.end method

.method public isBindToScope()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/TransactionOptions;->bindToScope:Z

    return p0
.end method

.method public isWaitForChildren()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    return p0
.end method

.method public setAppStartTransaction(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->isAppStartTransaction:Z

    return-void
.end method

.method public setBindToScope(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->bindToScope:Z

    return-void
.end method

.method public setCustomSamplingContext(Lio/sentry/CustomSamplingContext;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-void
.end method

.method public setDeadlineTimeout(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/TransactionOptions;->deadlineTimeout:Ljava/lang/Long;

    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    return-void
.end method

.method public setStartTimestamp(Lio/sentry/SentryDate;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/TransactionOptions;->startTimestamp:Lio/sentry/SentryDate;

    return-void
.end method

.method public setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    return-void
.end method

.method public setWaitForChildren(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    return-void
.end method
