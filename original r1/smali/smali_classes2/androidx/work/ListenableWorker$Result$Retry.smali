.class public final Landroidx/work/ListenableWorker$Result$Retry;
.super Landroidx/work/ListenableWorker$Result;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ListenableWorker$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Retry"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 550
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 557
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOutputData()Landroidx/work/Data;
    .locals 0

    .line 569
    sget-object p0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const p0, 0x18be74e

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Retry"

    return-object p0
.end method
