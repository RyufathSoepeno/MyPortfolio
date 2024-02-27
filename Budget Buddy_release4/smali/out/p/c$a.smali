.class public final Lp/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/c$a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Landroid/text/TextDirectionHeuristic;

.field private final c:I

.field private final d:I

.field final e:Landroid/text/PrecomputedText$Params;


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Lp/c$a;->b:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Lp/c$a;->c:I

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    iput v0, p0, Lp/c$a;->d:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iput-object p1, p0, Lp/c$a;->e:Landroid/text/PrecomputedText$Params;

    return-void
.end method

.method constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1f

    new-instance v0, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v0, p1}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v0, p3}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-object v0, p0, Lp/c$a;->e:Landroid/text/PrecomputedText$Params;

    iput-object p1, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    iput-object p2, p0, Lp/c$a;->b:Landroid/text/TextDirectionHeuristic;

    iput p3, p0, Lp/c$a;->c:I

    iput p4, p0, Lp/c$a;->d:I

    return-void
.end method


# virtual methods
.method public a(Lp/c$a;)Z
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_19

    iget v2, p0, Lp/c$a;->c:I

    invoke-virtual {p1}, Lp/c$a;->b()I

    move-result v3

    if-eq v2, v3, :cond_10

    return v1

    :cond_10
    iget v2, p0, Lp/c$a;->d:I

    invoke-virtual {p1}, Lp/c$a;->c()I

    move-result v3

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2c

    return v1

    :cond_2c
    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3f

    return v1

    :cond_3f
    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_52

    return v1

    :cond_52
    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v2

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_65

    return v1

    :cond_65
    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    return v1

    :cond_7a
    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    if-eq v2, v3, :cond_8b

    return v1

    :cond_8b
    const/16 v2, 0x18

    if-lt v0, v2, :cond_a4

    iget-object v0, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-static {v0}, Lp/a;->a(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v2}, Lp/a;->a(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    return v1

    :cond_a4
    iget-object v0, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    return v1

    :cond_b9
    iget-object v0, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_cc

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_e1

    return v1

    :cond_cc
    iget-object v0, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Lp/c$a;->e()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e1

    return v1

    :cond_e1
    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lp/c$a;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lp/c$a;->d:I

    return v0
.end method

.method public d()Landroid/text/TextDirectionHeuristic;
    .registers 2

    iget-object v0, p0, Lp/c$a;->b:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public e()Landroid/text/TextPaint;
    .registers 2

    iget-object v0, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lp/c$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lp/c$a;

    invoke-virtual {p0, p1}, Lp/c$a;->a(Lp/c$a;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lp/c$a;->b:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1}, Lp/c$a;->d()Landroid/text/TextDirectionHeuristic;

    move-result-object p1

    if-eq v1, p1, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xb

    const/16 v13, 0x18

    if-lt v0, v13, :cond_89

    new-array v0, v12, [Ljava/lang/Object;

    iget-object v12, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v0, v11

    iget-object v11, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v0, v10

    iget-object v10, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v9

    iget-object v9, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v0, v8

    iget-object v8, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    iget-object v7, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-static {v7}, Lp/a;->a(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    move-result-object v7

    aput-object v7, v0, v6

    iget-object v6, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    aput-object v6, v0, v5

    iget-object v5, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lp/c$a;->b:Landroid/text/TextDirectionHeuristic;

    aput-object v4, v0, v3

    iget v3, p0, Lp/c$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lp/c$a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/core/util/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_89
    new-array v0, v12, [Ljava/lang/Object;

    iget-object v12, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v0, v11

    iget-object v11, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v0, v10

    iget-object v10, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v9

    iget-object v9, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v0, v8

    iget-object v8, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    iget-object v7, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v0, v6

    iget-object v6, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    aput-object v6, v0, v5

    iget-object v5, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lp/c$a;->b:Landroid/text/TextDirectionHeuristic;

    aput-object v4, v0, v3

    iget v3, p0, Lp/c$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lp/c$a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/core/util/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textScaleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textSkewX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", letterSpacing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", elegantTextHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    const-string v3, ", textLocale="

    if-lt v1, v2, :cond_aa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-static {v3}, Lp/a;->a(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    move-result-object v3

    :goto_9f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    :cond_aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v3

    goto :goto_9f

    :goto_b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", typeface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_f1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", variationSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp/c$a;->a:Landroid/text/TextPaint;

    invoke-static {v2}, Lp/b;->a(Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp/c$a;->b:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", breakStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lp/c$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hyphenationFrequency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lp/c$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
