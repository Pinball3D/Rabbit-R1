.class Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/editing/TextInputPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;
    }
.end annotation


# instance fields
.field id:I

.field type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V
    .locals 0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    iput p2, p0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    return-void
.end method
