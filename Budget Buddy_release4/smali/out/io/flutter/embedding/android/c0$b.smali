.class public Lio/flutter/embedding/android/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/embedding/android/c0$b;->a:I

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/Character;
    .registers 5

    int-to-char v0, p1

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_1b

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    iget v1, p0, Lio/flutter/embedding/android/c0$b;->a:I

    if-eqz v1, :cond_18

    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    :cond_18
    iput p1, p0, Lio/flutter/embedding/android/c0$b;->a:I

    goto :goto_28

    :cond_1b
    iget v1, p0, Lio/flutter/embedding/android/c0$b;->a:I

    if-eqz v1, :cond_28

    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    if-lez p1, :cond_26

    int-to-char v0, p1

    :cond_26
    iput v2, p0, Lio/flutter/embedding/android/c0$b;->a:I

    :cond_28
    :goto_28
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
