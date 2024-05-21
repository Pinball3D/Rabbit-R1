.class public final Lio/flutter/plugin/editing/TextEditingDelta;
.super Ljava/lang/Object;
.source "TextEditingDelta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextEditingDelta"


# instance fields
.field private deltaEnd:I

.field private deltaStart:I

.field private deltaText:Ljava/lang/CharSequence;

.field private newComposingEnd:I

.field private newComposingStart:I

.field private newSelectionEnd:I

.field private newSelectionStart:I

.field private oldText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIII)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionStart:I

    iput p3, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionEnd:I

    iput p4, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingStart:I

    iput p5, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingEnd:I

    const-string p2, ""

    const/4 p3, -0x1

    .line 60
    invoke-direct {p0, p1, p2, p3, p3}, Lio/flutter/plugin/editing/TextEditingDelta;->setDeltas(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILjava/lang/CharSequence;IIII)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionStart:I

    iput p6, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionEnd:I

    iput p7, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingStart:I

    iput p8, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingEnd:I

    .line 43
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    .line 41
    invoke-direct {p0, p1, p4, p2, p3}, Lio/flutter/plugin/editing/TextEditingDelta;->setDeltas(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private setDeltas(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/editing/TextEditingDelta;->oldText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaText:Ljava/lang/CharSequence;

    iput p3, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaStart:I

    iput p4, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaEnd:I

    return-void
.end method


# virtual methods
.method public getDeltaEnd()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaEnd:I

    return p0
.end method

.method public getDeltaStart()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaStart:I

    return p0
.end method

.method public getDeltaText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getNewComposingEnd()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingEnd:I

    return p0
.end method

.method public getNewComposingStart()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingStart:I

    return p0
.end method

.method public getNewSelectionEnd()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionEnd:I

    return p0
.end method

.method public getNewSelectionStart()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionStart:I

    return p0
.end method

.method public getOldText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->oldText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "oldText"

    iget-object v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->oldText:Ljava/lang/CharSequence;

    .line 118
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deltaText"

    iget-object v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaText:Ljava/lang/CharSequence;

    .line 119
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deltaStart"

    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaStart:I

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "deltaEnd"

    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaEnd:I

    .line 121
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "selectionBase"

    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionStart:I

    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "selectionExtent"

    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionEnd:I

    .line 123
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "composingBase"

    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingStart:I

    .line 124
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "composingExtent"

    iget p0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingEnd:I

    .line 125
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to create JSONObject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TextEditingDelta"

    invoke-static {v1, p0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
