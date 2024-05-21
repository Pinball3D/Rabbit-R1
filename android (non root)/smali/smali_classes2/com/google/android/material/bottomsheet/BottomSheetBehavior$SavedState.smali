.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fitToContents:Z

.field hideable:Z

.field peekHeight:I

.field skipCollapsed:Z

.field final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2209
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 2163
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 2167
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 2170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 2171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    .line 2172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    .line 2173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2195
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 2177
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2178
    iget p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 2179
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 2180
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    .line 2181
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    .line 2182
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$2000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2201
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 2202
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 2203
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    .line 2204
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    .line 2205
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    .line 2206
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
