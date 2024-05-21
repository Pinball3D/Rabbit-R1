.class public final Lio/sentry/protocol/SdkInfo$JsonKeys;
.super Ljava/lang/Object;
.source "SdkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SdkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final SDK_NAME:Ljava/lang/String; = "sdk_name"

.field public static final VERSION_MAJOR:Ljava/lang/String; = "version_major"

.field public static final VERSION_MINOR:Ljava/lang/String; = "version_minor"

.field public static final VERSION_PATCHLEVEL:Ljava/lang/String; = "version_patchlevel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
