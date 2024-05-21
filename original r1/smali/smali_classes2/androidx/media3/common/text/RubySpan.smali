.class public final Landroidx/media3/common/text/RubySpan;
.super Ljava/lang/Object;
.source "RubySpan.java"

# interfaces
.implements Landroidx/media3/common/text/LanguageFeatureSpan;


# instance fields
.field public final position:I

.field public final rubyText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/text/RubySpan;->rubyText:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/common/text/RubySpan;->position:I

    return-void
.end method
