.class public final Lio/sentry/SentryLockReason$JsonKeys;
.super Ljava/lang/Object;
.source "SentryLockReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryLockReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
