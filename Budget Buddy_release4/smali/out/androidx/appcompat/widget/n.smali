.class public Landroidx/appcompat/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private b:Landroidx/appcompat/widget/k1;

.field private c:Landroidx/appcompat/widget/k1;

.field private d:Landroidx/appcompat/widget/k1;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/n;->d:Landroidx/appcompat/widget/k1;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/k1;

    invoke-direct {v0}, Landroidx/appcompat/widget/k1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/n;->d:Landroidx/appcompat/widget/k1;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/n;->d:Landroidx/appcompat/widget/k1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k1;->a()V

    iget-object v1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-static {v1}, Landroidx/core/widget/h;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    iput-boolean v2, v0, Landroidx/appcompat/widget/k1;->d:Z

    iput-object v1, v0, Landroidx/appcompat/widget/k1;->a:Landroid/content/res/ColorStateList;

    :cond_1d
    iget-object v1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-static {v1}, Landroidx/core/widget/h;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_29

    iput-boolean v2, v0, Landroidx/appcompat/widget/k1;->c:Z

    iput-object v1, v0, Landroidx/appcompat/widget/k1;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_29
    iget-boolean v1, v0, Landroidx/appcompat/widget/k1;->d:Z

    if-nez v1, :cond_34

    iget-boolean v1, v0, Landroidx/appcompat/widget/k1;->c:Z

    if-eqz v1, :cond_32

    goto :goto_34

    :cond_32
    const/4 p1, 0x0

    return p1

    :cond_34
    :goto_34
    iget-object v1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/j;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/k1;[I)V

    return v2
.end method

.method private j()Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_f

    iget-object v0, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/k1;

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    :cond_f
    if-ne v0, v3, :cond_12

    return v1

    :cond_12
    return v2
.end method


# virtual methods
.method b()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroidx/appcompat/widget/o0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    if-eqz v0, :cond_35

    invoke-direct {p0}, Landroidx/appcompat/widget/n;->j()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/n;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    :cond_1a
    iget-object v1, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    if-eqz v1, :cond_28

    iget-object v2, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/j;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/k1;[I)V

    goto :goto_35

    :cond_28
    iget-object v1, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/k1;

    if-eqz v1, :cond_35

    iget-object v2, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/j;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/k1;[I)V

    :cond_35
    :goto_35
    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/k1;->a:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/k1;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method e()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public f(Landroid/util/AttributeSet;I)V
    .registers 11

    iget-object v0, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lc/j;->R:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v3, p2, v1}, Landroidx/appcompat/widget/m1;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/m1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/appcompat/widget/m1;->q()Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Landroidx/core/view/h0;->F(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_1d
    iget-object p1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_3f

    sget v1, Lc/j;->S:I

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/m1;->m(II)I

    move-result v1

    if-eq v1, p2, :cond_3f

    iget-object p1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Le/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3f

    iget-object v1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3f
    if-eqz p1, :cond_44

    invoke-static {p1}, Landroidx/appcompat/widget/o0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_44
    sget p1, Lc/j;->T:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m1;->r(I)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/widget/h;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :cond_55
    sget p1, Lc/j;->U:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m1;->r(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/m1;->j(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/appcompat/widget/o0;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/widget/h;->d(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_6b
    .catchall {:try_start_1d .. :try_end_6b} :catchall_6f

    :cond_6b
    invoke-virtual {v0}, Landroidx/appcompat/widget/m1;->v()V

    return-void

    :catchall_6f
    move-exception p1

    invoke-virtual {v0}, Landroidx/appcompat/widget/m1;->v()V

    throw p1
.end method

.method public g(I)V
    .registers 3

    if-eqz p1, :cond_17

    iget-object v0, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {p1}, Landroidx/appcompat/widget/o0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_17
    iget-object p1, p0, Landroidx/appcompat/widget/n;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->b()V

    return-void
.end method

.method h(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/k1;

    invoke-direct {v0}, Landroidx/appcompat/widget/k1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    iput-object p1, v0, Landroidx/appcompat/widget/k1;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/k1;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->b()V

    return-void
.end method

.method i(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/k1;

    invoke-direct {v0}, Landroidx/appcompat/widget/k1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/k1;

    iput-object p1, v0, Landroidx/appcompat/widget/k1;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/k1;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->b()V

    return-void
.end method
