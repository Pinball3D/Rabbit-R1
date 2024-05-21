.class public interface abstract annotation Landroidx/compose/ui/tooling/preview/Preview;
.super Ljava/lang/Object;
.source "Preview.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/compose/ui/tooling/preview/Preview;
        apiLevel = -0x1
        backgroundColor = 0x0L
        device = ""
        fontScale = 1.0f
        group = ""
        heightDp = -0x1
        locale = ""
        name = ""
        showBackground = false
        showSystemUi = false
        uiMode = 0x0
        wallpaper = -0x1
        widthDp = -0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/tooling/preview/Preview$Container;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Landroidx/compose/ui/tooling/preview/Preview$Container;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0087\u0002\u0018\u00002\u00020\u0001B\u0082\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0006R\u000f\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0014R\u000f\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0015R\u000f\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0016R\u000f\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0017R\u000f\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0016R\u000f\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0014R\u000f\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0016R\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0016R\u000f\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0018R\u000f\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0018R\u000f\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0014R\u000f\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000f\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/preview/Preview;",
        "",
        "name",
        "",
        "group",
        "apiLevel",
        "",
        "widthDp",
        "heightDp",
        "locale",
        "fontScale",
        "",
        "showSystemUi",
        "",
        "showBackground",
        "backgroundColor",
        "",
        "uiMode",
        "device",
        "wallpaper",
        "()I",
        "()J",
        "()Ljava/lang/String;",
        "()F",
        "()Z",
        "ui-tooling-preview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/MustBeDocumented;
.end annotation

.annotation runtime Lkotlin/annotation/Repeatable;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->BINARY:Lkotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract apiLevel()I
.end method

.method public abstract backgroundColor()J
.end method

.method public abstract device()Ljava/lang/String;
.end method

.method public abstract fontScale()F
.end method

.method public abstract group()Ljava/lang/String;
.end method

.method public abstract heightDp()I
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract showBackground()Z
.end method

.method public abstract showSystemUi()Z
.end method

.method public abstract uiMode()I
.end method

.method public abstract wallpaper()I
.end method

.method public abstract widthDp()I
.end method
