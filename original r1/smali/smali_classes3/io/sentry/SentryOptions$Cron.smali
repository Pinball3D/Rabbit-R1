.class public final Lio/sentry/SentryOptions$Cron;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cron"
.end annotation


# instance fields
.field private defaultCheckinMargin:Ljava/lang/Long;

.field private defaultFailureIssueThreshold:Ljava/lang/Long;

.field private defaultMaxRuntime:Ljava/lang/Long;

.field private defaultRecoveryThreshold:Ljava/lang/Long;

.field private defaultTimezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultCheckinMargin()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions$Cron;->defaultCheckinMargin:Ljava/lang/Long;

    return-object p0
.end method

.method public getDefaultFailureIssueThreshold()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions$Cron;->defaultFailureIssueThreshold:Ljava/lang/Long;

    return-object p0
.end method

.method public getDefaultMaxRuntime()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions$Cron;->defaultMaxRuntime:Ljava/lang/Long;

    return-object p0
.end method

.method public getDefaultRecoveryThreshold()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions$Cron;->defaultRecoveryThreshold:Ljava/lang/Long;

    return-object p0
.end method

.method public getDefaultTimezone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions$Cron;->defaultTimezone:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultCheckinMargin(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions$Cron;->defaultCheckinMargin:Ljava/lang/Long;

    return-void
.end method

.method public setDefaultFailureIssueThreshold(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions$Cron;->defaultFailureIssueThreshold:Ljava/lang/Long;

    return-void
.end method

.method public setDefaultMaxRuntime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions$Cron;->defaultMaxRuntime:Ljava/lang/Long;

    return-void
.end method

.method public setDefaultRecoveryThreshold(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions$Cron;->defaultRecoveryThreshold:Ljava/lang/Long;

    return-void
.end method

.method public setDefaultTimezone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions$Cron;->defaultTimezone:Ljava/lang/String;

    return-void
.end method
