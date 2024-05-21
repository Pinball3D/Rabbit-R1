.class public final Lio/sentry/protocol/SentrySpan$JsonKeys;
.super Ljava/lang/Object;
.source "SentrySpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentrySpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final MEASUREMENTS:Ljava/lang/String; = "measurements"

.field public static final METRICS_SUMMARY:Ljava/lang/String; = "_metrics_summary"

.field public static final OP:Ljava/lang/String; = "op"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PARENT_SPAN_ID:Ljava/lang/String; = "parent_span_id"

.field public static final SPAN_ID:Ljava/lang/String; = "span_id"

.field public static final START_TIMESTAMP:Ljava/lang/String; = "start_timestamp"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRACE_ID:Ljava/lang/String; = "trace_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
