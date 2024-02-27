.class public Landroidx/appcompat/widget/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/TypedArray;

.field private c:Landroid/util/TypedValue;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/m1;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static s(Landroid/content/Context;I[I)Landroidx/appcompat/widget/m1;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/m1;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/m1;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static t(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/m1;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/m1;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/m1;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/m1;
    .registers 6

    new-instance v0, Landroidx/appcompat/widget/m1;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/m1;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public a(IZ)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    return p1
.end method

.method public b(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1
.end method

.method public c(I)Landroid/content/res/ColorStateList;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/appcompat/widget/m1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Le/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public d(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method public e(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method

.method public f(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p0, Landroidx/appcompat/widget/m1;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Le/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Landroidx/appcompat/widget/j;->b()Landroidx/appcompat/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/m1;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/j;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(IF)F
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    return p1
.end method

.method public i(IILandroidx/core/content/res/h$e;)Landroid/graphics/Typeface;
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/m1;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_16

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/m1;->c:Landroid/util/TypedValue;

    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/m1;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/m1;->c:Landroid/util/TypedValue;

    invoke-static {v0, p1, v1, p2, p3}, Landroidx/core/content/res/h;->e(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/h$e;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public j(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public k(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    return p1
.end method

.method public l(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    return p1
.end method

.method public m(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    return p1
.end method

.method public n(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public p(I)[Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public q()Landroid/content/res/TypedArray;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method public r(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    return p1
.end method

.method public v()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/m1;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
