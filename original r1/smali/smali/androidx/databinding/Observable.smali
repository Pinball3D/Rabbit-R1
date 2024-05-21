.class public interface abstract Landroidx/databinding/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/Observable$OnPropertyChangedCallback;
    }
.end annotation


# virtual methods
.method public abstract addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
