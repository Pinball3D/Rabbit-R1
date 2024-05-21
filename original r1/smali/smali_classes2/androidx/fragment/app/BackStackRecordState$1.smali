.class Landroidx/fragment/app/BackStackRecordState$1;
.super Ljava/lang/Object;
.source "BackStackRecordState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/BackStackRecordState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/fragment/app/BackStackRecordState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/BackStackRecordState;
    .locals 0

    .line 215
    new-instance p0, Landroidx/fragment/app/BackStackRecordState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroidx/fragment/app/BackStackRecordState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/BackStackRecordState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/fragment/app/BackStackRecordState;
    .locals 0

    .line 220
    new-array p0, p1, [Landroidx/fragment/app/BackStackRecordState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroidx/fragment/app/BackStackRecordState$1;->newArray(I)[Landroidx/fragment/app/BackStackRecordState;

    move-result-object p0

    return-object p0
.end method
