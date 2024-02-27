.class public final Lio/flutter/plugin/editing/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/flutter/plugin/editing/g;->e:I

    iput p3, p0, Lio/flutter/plugin/editing/g;->f:I

    iput p4, p0, Lio/flutter/plugin/editing/g;->g:I

    iput p5, p0, Lio/flutter/plugin/editing/g;->h:I

    const-string p2, ""

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3, p3}, Lio/flutter/plugin/editing/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILjava/lang/CharSequence;IIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lio/flutter/plugin/editing/g;->e:I

    iput p6, p0, Lio/flutter/plugin/editing/g;->f:I

    iput p7, p0, Lio/flutter/plugin/editing/g;->g:I

    iput p8, p0, Lio/flutter/plugin/editing/g;->h:I

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4, p2, p3}, Lio/flutter/plugin/editing/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V
    .registers 5

    iput-object p1, p0, Lio/flutter/plugin/editing/g;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lio/flutter/plugin/editing/g;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lio/flutter/plugin/editing/g;->c:I

    iput p4, p0, Lio/flutter/plugin/editing/g;->d:I

    return-void
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "oldText"

    iget-object v2, p0, Lio/flutter/plugin/editing/g;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deltaText"

    iget-object v2, p0, Lio/flutter/plugin/editing/g;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deltaStart"

    iget v2, p0, Lio/flutter/plugin/editing/g;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "deltaEnd"

    iget v2, p0, Lio/flutter/plugin/editing/g;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "selectionBase"

    iget v2, p0, Lio/flutter/plugin/editing/g;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "selectionExtent"

    iget v2, p0, Lio/flutter/plugin/editing/g;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "composingBase"

    iget v2, p0, Lio/flutter/plugin/editing/g;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "composingExtent"

    iget v2, p0, Lio/flutter/plugin/editing/g;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_45} :catch_46

    goto :goto_5d

    :catch_46
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create JSONObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextEditingDelta"

    invoke-static {v2, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    return-object v0
.end method
