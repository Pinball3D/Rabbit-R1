.class public final Lio/sentry/SentryEnvelopeHeader$JsonKeys;
.super Ljava/lang/Object;
.source "SentryEnvelopeHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEnvelopeHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final SENT_AT:Ljava/lang/String; = "sent_at"

.field public static final TRACE:Ljava/lang/String; = "trace"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
