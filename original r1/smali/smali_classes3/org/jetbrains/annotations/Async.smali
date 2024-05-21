.class public final Lorg/jetbrains/annotations/Async;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jetbrains/annotations/Async$Execute;,
        Lorg/jetbrains/annotations/Async$Schedule;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Async should not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
