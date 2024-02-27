.class Landroidx/vectordrawable/graphics/drawable/g$b;
.super Landroidx/vectordrawable/graphics/drawable/g$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/g$f;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/g$b;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/g$f;-><init>(Landroidx/vectordrawable/graphics/drawable/g$f;)V

    return-void
.end method

.method private f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->b:Ljava/lang/String;

    :cond_9
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1}, Landroidx/core/graphics/c;->d(Ljava/lang/String;)[Landroidx/core/graphics/c$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    :cond_16
    const/4 v1, 0x2

    const-string v2, "fillType"

    invoke-static {p1, p2, v2, v1, v0}, Landroidx/core/content/res/n;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->c:I

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public e(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const-string v0, "pathData"

    invoke-static {p4, v0}, Landroidx/core/content/res/n;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->d:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/res/n;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Landroidx/vectordrawable/graphics/drawable/g$b;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
