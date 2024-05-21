.class public final Lorg/jetbrains/annotations/ApiStatus;
.super Ljava/lang/Object;
.source "ApiStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jetbrains/annotations/ApiStatus$OverrideOnly;,
        Lorg/jetbrains/annotations/ApiStatus$NonExtendable;,
        Lorg/jetbrains/annotations/ApiStatus$AvailableSince;,
        Lorg/jetbrains/annotations/ApiStatus$ScheduledForRemoval;,
        Lorg/jetbrains/annotations/ApiStatus$Internal;,
        Lorg/jetbrains/annotations/ApiStatus$Experimental;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "ApiStatus should not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
