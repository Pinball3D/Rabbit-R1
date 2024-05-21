.class public final Lio/sentry/SentryNanotimeDateProvider;
.super Ljava/lang/Object;
.source "SentryNanotimeDateProvider.java"

# interfaces
.implements Lio/sentry/SentryDateProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()Lio/sentry/SentryDate;
    .locals 0

    .line 10
    new-instance p0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {p0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    return-object p0
.end method
