.class public final Lio/sentry/SpanContext$JsonKeys;
.super Ljava/lang/Object;
.source "SpanContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SpanContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final OP:Ljava/lang/String; = "op"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PARENT_SPAN_ID:Ljava/lang/String; = "parent_span_id"

.field public static final SPAN_ID:Ljava/lang/String; = "span_id"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TRACE_ID:Ljava/lang/String; = "trace_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
