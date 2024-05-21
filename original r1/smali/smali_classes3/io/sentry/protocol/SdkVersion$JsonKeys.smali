.class public final Lio/sentry/protocol/SdkVersion$JsonKeys;
.super Ljava/lang/Object;
.source "SdkVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SdkVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final INTEGRATIONS:Ljava/lang/String; = "integrations"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PACKAGES:Ljava/lang/String; = "packages"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
