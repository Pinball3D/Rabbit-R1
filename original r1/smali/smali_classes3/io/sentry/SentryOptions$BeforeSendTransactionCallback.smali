.class public interface abstract Lio/sentry/SentryOptions$BeforeSendTransactionCallback;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BeforeSendTransactionCallback"
.end annotation


# virtual methods
.method public abstract execute(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
.end method
