.class public final Lio/sentry/protocol/OperatingSystem$JsonKeys;
.super Ljava/lang/Object;
.source "OperatingSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/OperatingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final BUILD:Ljava/lang/String; = "build"

.field public static final KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final RAW_DESCRIPTION:Ljava/lang/String; = "raw_description"

.field public static final ROOTED:Ljava/lang/String; = "rooted"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
