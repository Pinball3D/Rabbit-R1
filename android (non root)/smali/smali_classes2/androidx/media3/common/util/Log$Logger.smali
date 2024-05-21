.class public interface abstract Landroidx/media3/common/util/Log$Logger;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/common/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroidx/media3/common/util/Log$Logger$1;

    invoke-direct {v0}, Landroidx/media3/common/util/Log$Logger$1;-><init>()V

    sput-object v0, Landroidx/media3/common/util/Log$Logger;->DEFAULT:Landroidx/media3/common/util/Log$Logger;

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
