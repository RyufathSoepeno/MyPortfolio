.class Landroidx/appcompat/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/appcompat/widget/j;

.field private c:I

.field private d:Landroidx/appcompat/widget/k1;

.field private e:Landroidx/appcompat/widget/k1;

.field private f:Landroidx/appcompat/widget/k1;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/e;->c:I

    iput-object p1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-static {}, Landroidx/appcompat/widget/j;->b()Landroidx/appcompat/widget/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/j;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/k1;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/k1;

    invoke-direct {v0}, Landroidx/appcompat/widget/k1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/k1;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/k1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k1;->a()V

    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/h0;->k(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    iput-boolean v2, v0, Landroidx/appcompat/widget/k1;->d:Z

    iput-object v1, v0, Landroidx/appcompat/widget/k1;->a:Landroid/content/res/ColorStateList;

    :cond_1d
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/h0;->l(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

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
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/j;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/k1;[I)V

    return v2
.end method

.method private k()Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_f

    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/k1;

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

    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Landroidx/appcompat/widget/e;->k()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    iget-object v1, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

    if-eqz v1, :cond_23

    iget-object v2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/j;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/k1;[I)V

    goto :goto_30

    :cond_23
    iget-object v1, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/k1;

    if-eqz v1, :cond_30

    iget-object v2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/j;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/k1;[I)V

    :cond_30
    :goto_30
    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

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

    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/k1;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method e(Landroid/util/AttributeSet;I)V
    .registers 11

    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lc/j;->D3:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v3, p2, v1}, Landroidx/appcompat/widget/m1;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/m1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/appcompat/widget/m1;->q()Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Landroidx/core/view/h0;->F(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_1d
    sget p1, Lc/j;->E3:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m1;->r(I)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_3f

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/m1;->m(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/e;->c:I

    iget-object p1, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/j;

    iget-object p2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p0, Landroidx/appcompat/widget/e;->c:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/j;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->h(Landroid/content/res/ColorStateList;)V

    :cond_3f
    sget p1, Lc/j;->F3:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m1;->r(I)Z

    move-result p2

    if-eqz p2, :cond_50

    iget-object p2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/view/h0;->J(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_50
    sget p1, Lc/j;->G3:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m1;->r(I)Z

    move-result p2

    if-eqz p2, :cond_66

    iget-object p2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/m1;->j(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/appcompat/widget/o0;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/view/h0;->K(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_66
    .catchall {:try_start_1d .. :try_end_66} :catchall_6a

    :cond_66
    invoke-virtual {v0}, Landroidx/appcompat/widget/m1;->v()V

    return-void

    :catchall_6a
    move-exception p1

    invoke-virtual {v0}, Landroidx/appcompat/widget/m1;->v()V

    throw p1
.end method

.method f(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/widget/e;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()V

    return-void
.end method

.method g(I)V
    .registers 4

    iput p1, p0, Landroidx/appcompat/widget/e;->c:I

    iget-object v0, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/j;

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/j;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()V

    return-void
.end method

.method h(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/k1;

    if-nez v0, :cond_d

    new-instance v0, Landroidx/appcompat/widget/k1;

    invoke-direct {v0}, Landroidx/appcompat/widget/k1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/k1;

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/k1;

    iput-object p1, v0, Landroidx/appcompat/widget/k1;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/k1;->d:Z

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/k1;

    :goto_18
    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()V

    return-void
.end method

.method i(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/k1;

    invoke-direct {v0}, Landroidx/appcompat/widget/k1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

    iput-object p1, v0, Landroidx/appcompat/widget/k1;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/k1;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()V

    return-void
.end method

.method j(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/k1;

    invoke-direct {v0}, Landroidx/appcompat/widget/k1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/k1;

    iput-object p1, v0, Landroidx/appcompat/widget/k1;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/k1;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()V

    return-void
.end method
