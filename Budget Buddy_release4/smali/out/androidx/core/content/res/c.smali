.class public final Landroidx/core/content/res/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/c;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_f

    goto :goto_4

    :cond_f
    if-ne v1, v2, :cond_16

    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/c;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_16
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/c;->e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": invalid color state list tag "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c()Landroid/util/TypedValue;
    .registers 2

    sget-object v0, Landroidx/core/content/res/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    if-nez v1, :cond_12

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    return-object v1
.end method

.method public static d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroidx/core/content/res/c;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    const-string p1, "CSLCompat"

    const-string p2, "Failed to inflate ColorStateList."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x14

    new-array v6, v5, [[I

    new-array v5, v5, [I

    const/4 v8, 0x0

    :goto_13
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_e0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-ge v10, v3, :cond_22

    const/4 v11, 0x3

    if-eq v9, v11, :cond_e0

    :cond_22
    const/4 v11, 0x2

    if-ne v9, v11, :cond_db

    if-gt v10, v3, :cond_db

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    goto/16 :goto_db

    :cond_35
    sget-object v9, Lm/c;->b:[I

    invoke-static {v0, v2, v1, v9}, Landroidx/core/content/res/c;->h(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    sget v10, Lm/c;->c:I

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const v13, -0xff01

    if-eq v12, v11, :cond_5c

    invoke-static {v0, v12}, Landroidx/core/content/res/c;->f(Landroid/content/res/Resources;I)Z

    move-result v11

    if-nez v11, :cond_5c

    :try_start_4d
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-static {v0, v10, v2}, Landroidx/core/content/res/c;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_5a

    goto :goto_60

    :catch_5a
    sget v10, Lm/c;->c:I

    :cond_5c
    invoke-virtual {v9, v10, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    :goto_60
    const/high16 v11, 0x3f800000    # 1.0f

    sget v12, Lm/c;->d:I

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_6f

    :goto_6a
    invoke-virtual {v9, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_78

    :cond_6f
    sget v12, Lm/c;->f:I

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_78

    goto :goto_6a

    :cond_78
    :goto_78
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1f

    const/high16 v14, -0x40800000    # -1.0f

    if-lt v12, v13, :cond_89

    sget v12, Lm/c;->e:I

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_89

    goto :goto_8b

    :cond_89
    sget v12, Lm/c;->g:I

    :goto_8b
    invoke-virtual {v9, v12, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    new-array v13, v9, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_9a
    if-ge v14, v9, :cond_c6

    invoke-interface {v1, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    const v7, 0x10101a5

    if-eq v4, v7, :cond_c0

    const v7, 0x101031f

    if-eq v4, v7, :cond_c0

    sget v7, Lm/a;->a:I

    if-eq v4, v7, :cond_c0

    sget v7, Lm/a;->b:I

    if-eq v4, v7, :cond_c0

    add-int/lit8 v7, v15, 0x1

    const/4 v0, 0x0

    invoke-interface {v1, v14, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_bc

    goto :goto_bd

    :cond_bc
    neg-int v4, v4

    :goto_bd
    aput v4, v13, v15

    move v15, v7

    :cond_c0
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    goto :goto_9a

    :cond_c6
    invoke-static {v13, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    invoke-static {v10, v11, v12}, Landroidx/core/content/res/c;->g(IFF)I

    move-result v4

    invoke-static {v5, v8, v4}, Landroidx/core/content/res/g;->a([III)[I

    move-result-object v5

    invoke-static {v6, v8, v0}, Landroidx/core/content/res/g;->b([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[I

    add-int/lit8 v8, v8, 0x1

    :cond_db
    :goto_db
    const/4 v4, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_13

    :cond_e0
    new-array v0, v8, [I

    new-array v1, v8, [[I

    const/4 v2, 0x0

    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private static f(Landroid/content/res/Resources;I)Z
    .registers 4

    invoke-static {}, Landroidx/core/content/res/c;->c()Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_13

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static g(IFF)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_e

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_18

    if-nez v1, :cond_18

    return p0

    :cond_18
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int p1, v2

    const/16 v2, 0xff

    invoke-static {p1, v0, v2}, Lo/a;->a(III)I

    move-result p1

    if-eqz v1, :cond_3b

    invoke-static {p0}, Landroidx/core/content/res/a;->c(I)Landroidx/core/content/res/a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/content/res/a;->j()F

    move-result v0

    invoke-virtual {p0}, Landroidx/core/content/res/a;->i()F

    move-result p0

    invoke-static {v0, p0, p2}, Landroidx/core/content/res/a;->m(FFF)I

    move-result p0

    :cond_3b
    const p2, 0xffffff

    and-int/2addr p0, p2

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static h(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    if-nez p1, :cond_7

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_c

    :cond_7
    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    :goto_c
    return-object p0
.end method
