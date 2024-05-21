.class public Lcom/google/android/material/drawable/ScaledDrawableWrapper;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;
.source "ScaledDrawableWrapper.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->width:I

    iput p3, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->height:I

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->height:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->width:I

    return p0
.end method
