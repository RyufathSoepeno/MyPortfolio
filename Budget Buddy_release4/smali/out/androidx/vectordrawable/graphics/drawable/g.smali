.class public Landroidx/vectordrawable/graphics/drawable/g;
.super Landroidx/vectordrawable/graphics/drawable/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/g$c;,
        Landroidx/vectordrawable/graphics/drawable/g$b;,
        Landroidx/vectordrawable/graphics/drawable/g$f;,
        Landroidx/vectordrawable/graphics/drawable/g$d;,
        Landroidx/vectordrawable/graphics/drawable/g$e;,
        Landroidx/vectordrawable/graphics/drawable/g$g;,
        Landroidx/vectordrawable/graphics/drawable/g$h;,
        Landroidx/vectordrawable/graphics/drawable/g$i;
    }
.end annotation


# static fields
.field static final o:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private f:Landroidx/vectordrawable/graphics/drawable/g$h;

.field private g:Landroid/graphics/PorterDuffColorFilter;

.field private h:Landroid/graphics/ColorFilter;

.field private i:Z

.field private j:Z

.field private k:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final l:[F

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/f;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->j:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->l:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->m:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    new-instance v0, Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/g$h;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/g$h;)V
    .registers 4

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/f;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->j:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->l:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->m:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/g$h;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/vectordrawable/graphics/drawable/g;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .registers 4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/g;
    .registers 9

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_23

    new-instance v0, Landroidx/vectordrawable/graphics/drawable/g;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/g;-><init>()V

    invoke-static {p0, p1, p2}, Landroidx/core/content/res/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    new-instance p0, Landroidx/vectordrawable/graphics/drawable/g$i;

    iget-object p1, v0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/g$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, Landroidx/vectordrawable/graphics/drawable/g;->k:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    :cond_23
    :try_start_23
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_2b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_36

    const/4 v5, 0x1

    if-eq v3, v5, :cond_36

    goto :goto_2b

    :cond_36
    if-ne v3, v4, :cond_3d

    invoke-static {p0, p1, v2, p2}, Landroidx/vectordrawable/graphics/drawable/g;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/g;

    move-result-object p0

    return-object p0

    :cond_3d
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_45} :catch_47
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_45} :catch_45

    :catch_45
    move-exception p0

    goto :goto_48

    :catch_47
    move-exception p0

    :goto_48
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/g;
    .registers 5

    new-instance v0, Landroidx/vectordrawable/graphics/drawable/g;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/g;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/g;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 15

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->h:Landroidx/vectordrawable/graphics/drawable/g$d;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    :goto_19
    if-eq v3, v5, :cond_c4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_24

    if-eq v3, v8, :cond_c4

    :cond_24
    const/4 v7, 0x2

    const-string v9, "group"

    if-ne v3, v7, :cond_af

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/vectordrawable/graphics/drawable/g$d;

    const-string v8, "path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    new-instance v3, Landroidx/vectordrawable/graphics/drawable/g$c;

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/g$c;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/graphics/drawable/g$c;->g(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v7, Landroidx/vectordrawable/graphics/drawable/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/g$f;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    iget-object v6, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->p:Ll/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/g$f;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ll/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    const/4 v6, 0x0

    goto :goto_7d

    :cond_59
    const-string v8, "clip-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    new-instance v3, Landroidx/vectordrawable/graphics/drawable/g$b;

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/g$b;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/graphics/drawable/g$b;->e(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/g$f;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7d

    iget-object v7, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->p:Ll/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/g$f;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ll/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    :goto_7d
    iget v7, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->a:I

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/g$f;->d:I

    :goto_81
    or-int/2addr v3, v7

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->a:I

    goto :goto_be

    :cond_85
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    new-instance v3, Landroidx/vectordrawable/graphics/drawable/g$d;

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/g$d;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/graphics/drawable/g$d;->c(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/g$d;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_aa

    iget-object v7, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->p:Ll/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/g$d;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ll/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aa
    iget v7, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->a:I

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/g$d;->k:I

    goto :goto_81

    :cond_af
    if-ne v3, v8, :cond_be

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_be
    :goto_be
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_19

    :cond_c4
    if-nez v6, :cond_c7

    return-void

    :cond_c7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "no path defined"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private static g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    packed-switch p0, :pswitch_data_20

    return-object p1

    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .registers 9

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p1, p2, v2, v3, v4}, Landroidx/core/content/res/n;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroidx/vectordrawable/graphics/drawable/g;->g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v2, "tint"

    const/4 v3, 0x1

    invoke-static {p1, p2, p3, v2, v3}, Landroidx/core/content/res/n;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_1f

    iput-object p3, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->c:Landroid/content/res/ColorStateList;

    :cond_1f
    const/4 p3, 0x5

    iget-boolean v2, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->e:Z

    const-string v3, "autoMirrored"

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/core/content/res/n;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p3

    iput-boolean p3, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->e:Z

    const/4 p3, 0x7

    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->k:F

    const-string v2, "viewportWidth"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/res/n;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->k:F

    const/16 p3, 0x8

    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->l:F

    const-string v2, "viewportHeight"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/res/n;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->l:F

    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->k:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_d6

    cmpg-float p3, p3, v2

    if-lez p3, :cond_bb

    const/4 p3, 0x3

    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->i:F

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->i:F

    const/4 p3, 0x2

    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->j:F

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->j:F

    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->i:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_a0

    cmpg-float p3, p3, v2

    if-lez p3, :cond_85

    const/4 p3, 0x4

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/g$g;->getAlpha()F

    move-result v0

    const-string v2, "alpha"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/res/n;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/vectordrawable/graphics/drawable/g$g;->setAlpha(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_84

    iput-object p1, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->n:Ljava/lang/String;

    iget-object p2, v1, Landroidx/vectordrawable/graphics/drawable/g$g;->p:Ll/a;

    invoke-virtual {p2, p1, v1}, Ll/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    return-void

    :cond_85
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a0
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_bb
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d6
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/f;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .registers 1

    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/f;->clearColorFilter()V

    return-void
.end method

.method d(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$g;->p:Ll/a;

    invoke-virtual {v0, p1}, Ll/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_db

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1f

    goto/16 :goto_db

    :cond_1f
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->h:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    :cond_25
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/g;->l:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->l:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/g;->l:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/g;->l:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/g;->l:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_60

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_64

    :cond_60
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_64
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_db

    if-gtz v3, :cond_87

    goto :goto_db

    :cond_87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/g;->f()Z

    move-result v5

    if-eqz v5, :cond_ab

    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_ab
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/graphics/drawable/g$h;->c(II)V

    iget-boolean v2, p0, Landroidx/vectordrawable/graphics/drawable/g;->j:Z

    if-nez v2, :cond_bf

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/graphics/drawable/g$h;->j(II)V

    goto :goto_d1

    :cond_bf
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/g$h;->b()Z

    move-result v2

    if-nez v2, :cond_d1

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/graphics/drawable/g$h;->j(II)V

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/g$h;->i()V

    :cond_d1
    :goto_d1
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/g;->n:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Landroidx/vectordrawable/graphics/drawable/g$h;->d(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_db
    :goto_db
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/g$g;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/g$h;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->h:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_16

    new-instance v0, Landroidx/vectordrawable/graphics/drawable/g$i;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/g$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_16
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->a:I

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    return-object v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/f;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/g$g;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/g$g;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .registers 2

    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/f;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .registers 2

    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/f;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x3

    return v0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .registers 2

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/f;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getState()[I
    .registers 2

    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/f;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/f;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method h(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/vectordrawable/graphics/drawable/g;->j:Z

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/g;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    new-instance v1, Landroidx/vectordrawable/graphics/drawable/g$g;

    invoke-direct {v1}, Landroidx/vectordrawable/graphics/drawable/g$g;-><init>()V

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    sget-object v1, Landroidx/vectordrawable/graphics/drawable/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroidx/core/content/res/n;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1, p2, p4}, Landroidx/vectordrawable/graphics/drawable/g;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->k:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/vectordrawable/graphics/drawable/g;->e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->c:Landroid/content/res/ColorStateList;

    iget-object p3, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/g;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-boolean v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->e:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/g$h;->g()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    if-eqz p2, :cond_14

    if-nez p3, :cond_5

    goto :goto_14

    :cond_5
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic jumpToCurrentState()V
    .registers 1

    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/f;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_8
    iget-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->i:Z

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    new-instance v0, Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/g$h;-><init>(Landroidx/vectordrawable/graphics/drawable/g$h;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->i:Z

    :cond_1e
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 7

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v2, v1, Landroidx/vectordrawable/graphics/drawable/g$h;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    iget-object v4, v1, Landroidx/vectordrawable/graphics/drawable/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_21

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v0, v2, v4}, Landroidx/vectordrawable/graphics/drawable/g;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->invalidateSelf()V

    const/4 v0, 0x1

    :cond_21
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/g$h;->g()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1, p1}, Landroidx/vectordrawable/graphics/drawable/g$h;->h([I)Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->invalidateSelf()V

    goto :goto_32

    :cond_31
    move v3, v0

    :goto_32
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/g$g;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1c

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->b:Landroidx/vectordrawable/graphics/drawable/g$g;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/g$g;->setRootAlpha(I)V

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->invalidateSelf()V

    :cond_1c
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iput-boolean p1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->e:Z

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/f;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/f;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_8
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g;->h:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/f;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/f;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/vectordrawable/graphics/drawable/f;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .registers 2

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/f;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setTint(I)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1d

    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Landroidx/vectordrawable/graphics/drawable/g;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->f:Landroidx/vectordrawable/graphics/drawable/g$h;

    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1d

    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/g$h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/vectordrawable/graphics/drawable/g;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g;->g:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/g;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/f;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
