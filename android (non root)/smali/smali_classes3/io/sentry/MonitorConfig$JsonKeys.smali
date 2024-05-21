.class public final Lio/sentry/MonitorConfig$JsonKeys;
.super Ljava/lang/Object;
.source "MonitorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final CHECKIN_MARGIN:Ljava/lang/String; = "checkin_margin"

.field public static final FAILURE_ISSUE_THRESHOLD:Ljava/lang/String; = "failure_issue_threshold"

.field public static final MAX_RUNTIME:Ljava/lang/String; = "max_runtime"

.field public static final RECOVERY_THRESHOLD:Ljava/lang/String; = "recovery_threshold"

.field public static final SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
