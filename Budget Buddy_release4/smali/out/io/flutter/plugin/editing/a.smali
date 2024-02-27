.class Lio/flutter/plugin/editing/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/editing/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .registers 12

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-lt p2, v1, :cond_9

    return v0

    :cond_9
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v4, p2, v3

    const/4 v5, 0x0

    if-nez v4, :cond_17

    return v5

    :cond_17
    const/16 v6, 0xa

    if-ne v2, v6, :cond_27

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_25

    add-int/lit8 v3, v3, 0x1

    :cond_25
    add-int/2addr p2, v3

    return p2

    :cond_27
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->g(I)Z

    move-result v6

    if-eqz v6, :cond_5c

    if-ge v4, v1, :cond_5b

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/a;->g(I)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_5b

    :cond_3a
    move v0, p2

    :goto_3b
    if-lez v0, :cond_53

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/a;->g(I)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_53
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_59

    add-int/lit8 v3, v3, 0x2

    :cond_59
    add-int/2addr p2, v3

    return p2

    :cond_5b
    :goto_5b
    return v4

    :cond_5c
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->f(I)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v3, v1

    :cond_67
    const/16 v1, 0x20e3

    if-ne v2, v1, :cond_9e

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_91

    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v3, v0

    goto :goto_9c

    :cond_91
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/a;->f(I)Z

    move-result p1

    if-eqz p1, :cond_9c

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v3, p1

    :cond_9c
    :goto_9c
    add-int/2addr p2, v3

    return p2

    :cond_9e
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->c(I)Z

    move-result v6

    if-eqz v6, :cond_13f

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_a6
    const/4 v8, 0x1

    if-eqz v6, :cond_b1

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    const/4 v6, 0x0

    :cond_b1
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->d(I)Z

    move-result v7

    if-eqz v7, :cond_b9

    goto/16 :goto_13f

    :cond_b9
    if-ge v4, v0, :cond_133

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    if-ne v2, v1, :cond_f9

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_ec

    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v3, v0

    goto :goto_f7

    :cond_ec
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/a;->f(I)Z

    move-result p1

    if-eqz p1, :cond_f7

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v3, p1

    :cond_f7
    :goto_f7
    add-int/2addr p2, v3

    return p2

    :cond_f9
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->d(I)Z

    move-result v7

    if-eqz v7, :cond_106

    :goto_ff
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr p1, v5

    add-int/2addr v3, p1

    goto :goto_13f

    :cond_106
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->i(I)Z

    move-result v7

    if-eqz v7, :cond_10d

    goto :goto_ff

    :cond_10d
    const/16 v7, 0x200d

    if-ne v2, v7, :cond_133

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    if-ge v4, v0, :cond_132

    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->i(I)Z

    move-result v6

    if-eqz v6, :cond_132

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    move v7, v6

    const/4 v6, 0x1

    goto :goto_134

    :cond_132
    const/4 v6, 0x1

    :cond_133
    const/4 v7, 0x0

    :goto_134
    if-lt v4, v0, :cond_137

    goto :goto_13f

    :cond_137
    if-eqz v6, :cond_13f

    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->c(I)Z

    move-result v8

    if-nez v8, :cond_a6

    :cond_13f
    :goto_13f
    add-int/2addr p2, v3

    return p2
.end method

.method public b(Ljava/lang/CharSequence;I)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, v1, :cond_5

    return v0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int v4, p2, v3

    if-nez v4, :cond_12

    return v0

    :cond_12
    const/16 v5, 0xa

    if-ne v2, v5, :cond_22

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_20

    add-int/lit8 v3, v3, 0x1

    :cond_20
    sub-int/2addr p2, v3

    return p2

    :cond_22
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->g(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    :goto_31
    if-lez v4, :cond_45

    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_45
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4b

    add-int/lit8 v3, v3, 0x2

    :cond_4b
    sub-int/2addr p2, v3

    return p2

    :cond_4d
    const/16 v5, 0x20e3

    if-ne v2, v5, :cond_84

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v4, v1

    if-lez v4, :cond_77

    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/a;->f(I)Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v3, v0

    goto :goto_82

    :cond_77
    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/a;->f(I)Z

    move-result p1

    if-eqz p1, :cond_82

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v3, p1

    :cond_82
    :goto_82
    sub-int/2addr p2, v3

    return p2

    :cond_84
    const v5, 0xe007f

    if-ne v2, v5, :cond_ae

    :goto_89
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_a0

    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->h(I)Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_89

    :cond_a0
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->c(I)Z

    move-result v5

    if-nez v5, :cond_a9

    add-int/lit8 p2, p2, -0x2

    return p2

    :cond_a9
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    :cond_ae
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->c(I)Z

    move-result v5

    if-nez v5, :cond_c0

    sub-int/2addr p2, v3

    return p2

    :cond_c0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v4, v3

    :cond_c6
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_14c

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_ce
    if-eqz v5, :cond_d8

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/2addr v3, v5

    const/4 v5, 0x0

    :cond_d8
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->d(I)Z

    move-result v6

    if-eqz v6, :cond_10f

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    if-lez v4, :cond_102

    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_102

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_fb

    sub-int/2addr p2, v3

    return p2

    :cond_fb
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    :cond_102
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/a;->e(I)Z

    move-result p1

    if-eqz p1, :cond_14c

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v3, v0

    goto :goto_14c

    :cond_10f
    if-lez v4, :cond_140

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    const/16 v6, 0x200d

    if-ne v2, v6, :cond_140

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_13f

    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    move v6, v5

    const/4 v5, 0x1

    goto :goto_141

    :cond_13f
    const/4 v5, 0x1

    :cond_140
    const/4 v6, 0x0

    :goto_141
    if-nez v4, :cond_144

    goto :goto_14c

    :cond_144
    if-eqz v5, :cond_14c

    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/a;->c(I)Z

    move-result v7

    if-nez v7, :cond_ce

    :cond_14c
    :goto_14c
    sub-int/2addr p2, v3

    return p2
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmoji(I)Z

    move-result p1

    return p1
.end method

.method public d(I)Z
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmojiModifier(I)Z

    move-result p1

    return p1
.end method

.method public e(I)Z
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmojiModifierBase(I)Z

    move-result p1

    return p1
.end method

.method public f(I)Z
    .registers 3

    const/16 v0, 0x30

    if-gt v0, p1, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_13

    :cond_8
    const/16 v0, 0x23

    if-eq p1, v0, :cond_13

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public g(I)Z
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointRegionalIndicator(I)Z

    move-result p1

    return p1
.end method

.method public h(I)Z
    .registers 3

    const v0, 0xe0020

    if-gt v0, p1, :cond_c

    const v0, 0xe007e

    if-gt p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public i(I)Z
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointVariantSelector(I)Z

    move-result p1

    return p1
.end method
