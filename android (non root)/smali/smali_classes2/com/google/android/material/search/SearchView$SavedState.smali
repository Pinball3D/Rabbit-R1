.class Lcom/google/android/material/search/SearchView$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/search/SearchView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field text:Ljava/lang/String;

.field visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1085
    new-instance v0, Lcom/google/android/material/search/SearchView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/search/SearchView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/search/SearchView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 1072
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1076
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchView$SavedState;->text:Ljava/lang/String;

    .line 1078
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/search/SearchView$SavedState;->visibility:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1082
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1106
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/google/android/material/search/SearchView$SavedState;->text:Ljava/lang/String;

    .line 1107
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/material/search/SearchView$SavedState;->visibility:I

    .line 1108
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
