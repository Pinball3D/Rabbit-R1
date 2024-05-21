.class public abstract Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0, p1, p3}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0, p1, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const/4 p2, 0x0

    .line 112
    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    iput p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    iput p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    return-void
.end method
