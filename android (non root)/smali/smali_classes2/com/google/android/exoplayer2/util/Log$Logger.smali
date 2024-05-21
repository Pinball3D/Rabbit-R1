.class public interface abstract Lcom/google/android/exoplayer2/util/Log$Logger;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/util/Log$Logger$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/Log$Logger$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/Log$Logger;->DEFAULT:Lcom/google/android/exoplayer2/util/Log$Logger;

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;)V
.end method
