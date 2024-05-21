.class public final Lio/sentry/SentryAppStartProfilingOptions$JsonKeys;
.super Ljava/lang/Object;
.source "SentryAppStartProfilingOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryAppStartProfilingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final IS_PROFILING_ENABLED:Ljava/lang/String; = "is_profiling_enabled"

.field public static final PROFILE_SAMPLED:Ljava/lang/String; = "profile_sampled"

.field public static final PROFILE_SAMPLE_RATE:Ljava/lang/String; = "profile_sample_rate"

.field public static final PROFILING_TRACES_DIR_PATH:Ljava/lang/String; = "profiling_traces_dir_path"

.field public static final PROFILING_TRACES_HZ:Ljava/lang/String; = "profiling_traces_hz"

.field public static final TRACE_SAMPLED:Ljava/lang/String; = "trace_sampled"

.field public static final TRACE_SAMPLE_RATE:Ljava/lang/String; = "trace_sample_rate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
