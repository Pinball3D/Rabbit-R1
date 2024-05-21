.class Lcom/google/android/material/search/SearchBar$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchBar;
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
            "Lcom/google/android/material/search/SearchBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 929
    new-instance v0, Lcom/google/android/material/search/SearchBar$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/search/SearchBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/search/SearchBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 917
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchBar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 921
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/SearchBar$SavedState;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 926
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 950
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar$SavedState;->text:Ljava/lang/String;

    .line 951
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
