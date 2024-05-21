.class Lcom/google/android/material/badge/BadgeState$State$1;
.super Ljava/lang/Object;
.source "BadgeState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/badge/BadgeState$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/badge/BadgeState$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/badge/BadgeState$State;
    .locals 0

    .line 725
    new-instance p0, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 721
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeState$State$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/badge/BadgeState$State;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/material/badge/BadgeState$State;
    .locals 0

    .line 731
    new-array p0, p1, [Lcom/google/android/material/badge/BadgeState$State;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 721
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeState$State$1;->newArray(I)[Lcom/google/android/material/badge/BadgeState$State;

    move-result-object p0

    return-object p0
.end method
