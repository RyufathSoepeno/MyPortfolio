.class public final Landroidx/core/content/res/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Shader;

.field private final b:Landroid/content/res/ColorStateList;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/res/d;->a:Landroid/graphics/Shader;

    iput-object p2, p0, Landroidx/core/content/res/d;->b:Landroid/content/res/ColorStateList;

    iput p3, p0, Landroidx/core/content/res/d;->c:I

    return-void
.end method

.method private static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/d;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    const/4 v3, 0x1

    if-eq v1, v3, :cond_13

    goto :goto_8

    :cond_13
    if-ne v1, v2, :cond_5c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "gradient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/c;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/res/d;->c(Landroid/content/res/ColorStateList;)Landroidx/core/content/res/d;

    move-result-object p0

    return-object p0

    :cond_35
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unsupported complex color tag "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/f;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/res/d;->d(Landroid/graphics/Shader;)Landroidx/core/content/res/d;

    move-result-object p0

    return-object p0

    :cond_5c
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(I)Landroidx/core/content/res/d;
    .registers 3

    new-instance v0, Landroidx/core/content/res/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Landroidx/core/content/res/d;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method static c(Landroid/content/res/ColorStateList;)Landroidx/core/content/res/d;
    .registers 4

    new-instance v0, Landroidx/core/content/res/d;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Landroidx/core/content/res/d;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method static d(Landroid/graphics/Shader;)Landroidx/core/content/res/d;
    .registers 4

    new-instance v0, Landroidx/core/content/res/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/core/content/res/d;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method public static g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/d;
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/d;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/d;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string p1, "ComplexColorCompat"

    const-string p2, "Failed to inflate ComplexColor."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public e()I
    .registers 2

    iget v0, p0, Landroidx/core/content/res/d;->c:I

    return v0
.end method

.method public f()Landroid/graphics/Shader;
    .registers 2

    iget-object v0, p0, Landroidx/core/content/res/d;->a:Landroid/graphics/Shader;

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/content/res/d;->a:Landroid/graphics/Shader;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/content/res/d;->a:Landroid/graphics/Shader;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/core/content/res/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public j([I)Z
    .registers 4

    invoke-virtual {p0}, Landroidx/core/content/res/d;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/core/content/res/d;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v0, p0, Landroidx/core/content/res/d;->c:I

    if-eq p1, v0, :cond_18

    const/4 v0, 0x1

    iput p1, p0, Landroidx/core/content/res/d;->c:I

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public k(I)V
    .registers 2

    iput p1, p0, Landroidx/core/content/res/d;->c:I

    return-void
.end method

.method public l()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/core/content/res/d;->h()Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Landroidx/core/content/res/d;->c:I

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
