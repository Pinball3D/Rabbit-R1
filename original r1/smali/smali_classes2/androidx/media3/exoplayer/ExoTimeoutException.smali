.class public final Landroidx/media3/exoplayer/ExoTimeoutException;
.super Ljava/lang/RuntimeException;
.source "ExoTimeoutException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoTimeoutException$TimeoutOperation;
    }
.end annotation


# static fields
.field public static final TIMEOUT_OPERATION_DETACH_SURFACE:I = 0x3

.field public static final TIMEOUT_OPERATION_RELEASE:I = 0x1

.field public static final TIMEOUT_OPERATION_SET_FOREGROUND_MODE:I = 0x2

.field public static final TIMEOUT_OPERATION_UNDEFINED:I


# instance fields
.field public final timeoutOperation:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 73
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoTimeoutException;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroidx/media3/exoplayer/ExoTimeoutException;->timeoutOperation:I

    return-void
.end method

.method private static getErrorMessage(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "Undefined timeout."

    return-object p0

    :cond_0
    const-string p0, "Detaching surface timed out."

    return-object p0

    :cond_1
    const-string p0, "Setting foreground mode timed out."

    return-object p0

    :cond_2
    const-string p0, "Player release timed out."

    return-object p0
.end method
