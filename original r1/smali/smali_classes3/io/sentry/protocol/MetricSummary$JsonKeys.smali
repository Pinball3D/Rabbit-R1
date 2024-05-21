.class public final Lio/sentry/protocol/MetricSummary$JsonKeys;
.super Ljava/lang/Object;
.source "MetricSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/MetricSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final MAX:Ljava/lang/String; = "max"

.field public static final MIN:Ljava/lang/String; = "min"

.field public static final SUM:Ljava/lang/String; = "sum"

.field public static final TAGS:Ljava/lang/String; = "tags"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
