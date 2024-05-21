.class public final Lio/sentry/ProfilingTransactionData$JsonKeys;
.super Ljava/lang/Object;
.source "ProfilingTransactionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfilingTransactionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final END_CPU_MS:Ljava/lang/String; = "relative_cpu_end_ms"

.field public static final END_NS:Ljava/lang/String; = "relative_end_ns"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final START_CPU_MS:Ljava/lang/String; = "relative_cpu_start_ms"

.field public static final START_NS:Ljava/lang/String; = "relative_start_ns"

.field public static final TRACE_ID:Ljava/lang/String; = "trace_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
