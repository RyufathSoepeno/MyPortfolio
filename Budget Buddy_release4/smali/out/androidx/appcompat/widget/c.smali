.class Landroidx/appcompat/widget/c;
.super Landroidx/appcompat/view/menu/a;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/c$b;,
        Landroidx/appcompat/widget/c$c;,
        Landroidx/appcompat/widget/c$f;,
        Landroidx/appcompat/widget/c$a;,
        Landroidx/appcompat/widget/c$e;,
        Landroidx/appcompat/widget/c$d;
    }
.end annotation


# instance fields
.field private A:I

.field private final B:Landroid/util/SparseBooleanArray;

.field C:Landroidx/appcompat/widget/c$e;

.field D:Landroidx/appcompat/widget/c$a;

.field E:Landroidx/appcompat/widget/c$c;

.field private F:Landroidx/appcompat/widget/c$b;

.field final G:Landroidx/appcompat/widget/c$f;

.field H:I

.field o:Landroidx/appcompat/widget/c$d;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    sget v0, Lc/g;->c:I

    sget v1, Lc/g;->b:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;II)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->B:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroidx/appcompat/widget/c$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/c$f;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->G:Landroidx/appcompat/widget/c$f;

    return-void
.end method

.method static synthetic r(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/e;
    .registers 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    return-object p0
.end method

.method static synthetic s(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/e;
    .registers 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    return-object p0
.end method

.method static synthetic t(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/k;
    .registers 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    return-object p0
.end method

.method static synthetic u(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/e;
    .registers 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    return-object p0
.end method

.method static synthetic v(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/e;
    .registers 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    return-object p0
.end method

.method static synthetic w(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/e;
    .registers 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    return-object p0
.end method

.method static synthetic x(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/k;
    .registers 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    return-object p0
.end method

.method private z(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_24

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroidx/appcompat/view/menu/k$a;

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Landroidx/appcompat/view/menu/k$a;

    invoke-interface {v5}, Landroidx/appcompat/view/menu/k$a;->getItemData()Landroidx/appcompat/view/menu/g;

    move-result-object v5

    if-ne v5, p1, :cond_21

    return-object v4

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_24
    return-object v1
.end method


# virtual methods
.method public A()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->q:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/c;->p:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/c;->E:Landroidx/appcompat/widget/c$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v2, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    if-eqz v2, :cond_12

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/c;->E:Landroidx/appcompat/widget/c$c;

    return v1

    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/c;->C:Landroidx/appcompat/widget/c$e;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->b()V

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/c;->D:Landroidx/appcompat/widget/c$a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->b()V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/c;->E:Landroidx/appcompat/widget/c$c;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->E()Z

    move-result v0

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

.method public E()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/c;->C:Landroidx/appcompat/widget/c$e;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public F(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean p1, p0, Landroidx/appcompat/widget/c;->w:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/view/menu/a;->f:Landroid/content/Context;

    invoke-static {p1}, Lh/a;->b(Landroid/content/Context;)Lh/a;

    move-result-object p1

    invoke-virtual {p1}, Lh/a;->d()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/c;->v:I

    :cond_10
    iget-object p1, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    :cond_18
    return-void
.end method

.method public G(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->z:Z

    return-void
.end method

.method public H(Landroidx/appcompat/widget/ActionMenuView;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroidx/appcompat/view/menu/e;)V

    return-void
.end method

.method public I(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/o;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->q:Z

    iput-object p1, p0, Landroidx/appcompat/widget/c;->p:Landroid/graphics/drawable/Drawable;

    :goto_d
    return-void
.end method

.method public J(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->r:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->s:Z

    return-void
.end method

.method public K()Z
    .registers 8

    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->r:Z

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->E()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroidx/appcompat/widget/c;->E:Landroidx/appcompat/widget/c$c;

    if-nez v1, :cond_3e

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v0, Landroidx/appcompat/widget/c$e;

    iget-object v3, p0, Landroidx/appcompat/view/menu/a;->f:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    iget-object v5, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/c$e;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/e;Landroid/view/View;Z)V

    new-instance v1, Landroidx/appcompat/widget/c$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/c$c;-><init>(Landroidx/appcompat/widget/c;Landroidx/appcompat/widget/c$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/c;->E:Landroidx/appcompat/widget/c$c;

    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_3e
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/appcompat/view/menu/e;Z)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->y()Z

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/a;->b(Landroidx/appcompat/view/menu/e;Z)V

    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/k$a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/k$a;->d(Landroidx/appcompat/view/menu/g;I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/e$b;)V

    iget-object p1, p0, Landroidx/appcompat/widget/c;->F:Landroidx/appcompat/widget/c$b;

    if-nez p1, :cond_18

    new-instance p1, Landroidx/appcompat/widget/c$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/c$b;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->F:Landroidx/appcompat/widget/c$b;

    :cond_18
    iget-object p1, p0, Landroidx/appcompat/widget/c;->F:Landroidx/appcompat/widget/c$b;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public d(Landroid/content/Context;Landroidx/appcompat/view/menu/e;)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/a;->d(Landroid/content/Context;Landroidx/appcompat/view/menu/e;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Lh/a;->b(Landroid/content/Context;)Lh/a;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->s:Z

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lh/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->r:Z

    :cond_15
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->y:Z

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lh/a;->c()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/c;->t:I

    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->w:Z

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lh/a;->d()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/c;->v:I

    :cond_29
    iget p1, p0, Landroidx/appcompat/widget/c;->t:I

    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    if-nez v0, :cond_54

    new-instance v0, Landroidx/appcompat/widget/c$d;

    iget-object v2, p0, Landroidx/appcompat/view/menu/a;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->q:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroidx/appcompat/widget/c;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/o;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroidx/appcompat/widget/c;->p:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, p0, Landroidx/appcompat/widget/c;->q:Z

    :cond_4b
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    :cond_54
    iget-object v0, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_5e

    :cond_5c
    iput-object v1, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    :goto_5e
    iput p1, p0, Landroidx/appcompat/widget/c;->u:I

    const/high16 p1, 0x42600000    # 56.0f

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/c;->A:I

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/m;)Z
    .registers 9

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move-object v0, p1

    :goto_9
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->e0()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    if-eq v2, v3, :cond_18

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->e0()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m;

    goto :goto_9

    :cond_18
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/c;->z(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_23

    return v1

    :cond_23
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/m;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/c;->H:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_32
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4a

    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_47

    const/4 v1, 0x1

    goto :goto_4a

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_4a
    :goto_4a
    new-instance v2, Landroidx/appcompat/widget/c$a;

    iget-object v3, p0, Landroidx/appcompat/view/menu/a;->f:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroidx/appcompat/widget/c$a;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/m;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/c;->D:Landroidx/appcompat/widget/c$a;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/i;->g(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/c;->D:Landroidx/appcompat/widget/c$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->k()V

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/a;->e(Landroidx/appcompat/view/menu/m;)Z

    return v4
.end method

.method public f(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/a;->f(Z)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->s()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_2c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->b()Landroidx/core/view/b;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v3, p0}, Landroidx/core/view/b;->i(Landroidx/core/view/b$a;)V

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    iget-object p1, p0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->z()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    iget-boolean v1, p0, Landroidx/appcompat/widget/c;->r:Z

    if-eqz v1, :cond_53

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_50

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_53

    :cond_50
    if-lez v1, :cond_53

    const/4 v0, 0x1

    :cond_53
    :goto_53
    iget-object p1, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_83

    if-nez p1, :cond_62

    new-instance p1, Landroidx/appcompat/widget/c$d;

    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->e:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    :cond_62
    iget-object p1, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    if-eq p1, v0, :cond_94

    if-eqz p1, :cond_75

    iget-object v0, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_75
    iget-object p1, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->B()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_94

    :cond_83
    if-eqz p1, :cond_94

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    if-ne p1, v0, :cond_94

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_94
    :goto_94
    iget-object p1, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->r:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public h()Z
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/view/menu/a;->g:Landroidx/appcompat/view/menu/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->E()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_13

    :cond_11
    move-object v1, v2

    const/4 v4, 0x0

    :goto_13
    iget v5, v0, Landroidx/appcompat/widget/c;->v:I

    iget v6, v0, Landroidx/appcompat/widget/c;->u:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_23
    if-ge v9, v4, :cond_4c

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/g;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/g;->o()Z

    move-result v15

    if-eqz v15, :cond_34

    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    :cond_34
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/g;->n()Z

    move-result v15

    if-eqz v15, :cond_3d

    add-int/lit8 v12, v12, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v10, 0x1

    :goto_3e
    iget-boolean v13, v0, Landroidx/appcompat/widget/c;->z:Z

    if-eqz v13, :cond_49

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/g;->isActionViewExpanded()Z

    move-result v13

    if-eqz v13, :cond_49

    const/4 v5, 0x0

    :cond_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_4c
    iget-boolean v9, v0, Landroidx/appcompat/widget/c;->r:Z

    if-eqz v9, :cond_57

    if-nez v10, :cond_55

    add-int/2addr v12, v11

    if-le v12, v5, :cond_57

    :cond_55
    add-int/lit8 v5, v5, -0x1

    :cond_57
    sub-int/2addr v5, v11

    iget-object v9, v0, Landroidx/appcompat/widget/c;->B:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    iget-boolean v10, v0, Landroidx/appcompat/widget/c;->x:Z

    if-eqz v10, :cond_6a

    iget v10, v0, Landroidx/appcompat/widget/c;->A:I

    div-int v11, v6, v10

    rem-int v12, v6, v10

    div-int/2addr v12, v11

    add-int/2addr v10, v12

    goto :goto_6c

    :cond_6a
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6c
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_6e
    if-ge v12, v4, :cond_143

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/g;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/g;->o()Z

    move-result v16

    if-eqz v16, :cond_a7

    invoke-virtual {v0, v15, v2, v8}, Landroidx/appcompat/widget/c;->n(Landroidx/appcompat/view/menu/g;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    iget-boolean v2, v0, Landroidx/appcompat/widget/c;->x:Z

    if-eqz v2, :cond_8a

    invoke-static {v13, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->H(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v11, v2

    goto :goto_8d

    :cond_8a
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    :goto_8d
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v6, v2

    if-nez v14, :cond_95

    move v14, v2

    :cond_95
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/g;->getGroupId()I

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_9f

    invoke-virtual {v9, v2, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_9f
    invoke-virtual {v15, v13}, Landroidx/appcompat/view/menu/g;->u(Z)V

    move/from16 v17, v4

    :goto_a4
    const/4 v0, 0x0

    goto/16 :goto_139

    :cond_a7
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/g;->n()Z

    move-result v2

    if-eqz v2, :cond_133

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/g;->getGroupId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-gtz v5, :cond_b9

    if-eqz v13, :cond_c3

    :cond_b9
    if-lez v6, :cond_c3

    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->x:Z

    if-eqz v3, :cond_c1

    if-lez v11, :cond_c3

    :cond_c1
    const/4 v3, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v3, 0x0

    :goto_c4
    move/from16 v18, v3

    move/from16 v17, v4

    if-eqz v3, :cond_fb

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v8}, Landroidx/appcompat/widget/c;->n(Landroidx/appcompat/view/menu/g;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->x:Z

    if-eqz v3, :cond_df

    const/4 v3, 0x0

    invoke-static {v4, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->H(Landroid/view/View;IIII)I

    move-result v19

    sub-int v11, v11, v19

    if-nez v19, :cond_e2

    const/16 v18, 0x0

    goto :goto_e2

    :cond_df
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    :cond_e2
    :goto_e2
    move/from16 v3, v18

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v6, v4

    if-nez v14, :cond_ec

    move v14, v4

    :cond_ec
    iget-boolean v4, v0, Landroidx/appcompat/widget/c;->x:Z

    if-eqz v4, :cond_f3

    if-ltz v6, :cond_f9

    goto :goto_f7

    :cond_f3
    add-int v4, v6, v14

    if-lez v4, :cond_f9

    :goto_f7
    const/4 v4, 0x1

    goto :goto_fa

    :cond_f9
    const/4 v4, 0x0

    :goto_fa
    and-int/2addr v3, v4

    :cond_fb
    if-eqz v3, :cond_104

    if-eqz v2, :cond_104

    const/4 v4, 0x1

    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_12a

    :cond_104
    if-eqz v13, :cond_12a

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    :goto_10b
    if-ge v4, v12, :cond_12a

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/g;

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/g;->getGroupId()I

    move-result v0

    if-ne v0, v2, :cond_125

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/g;->l()Z

    move-result v0

    if-eqz v0, :cond_121

    add-int/lit8 v5, v5, 0x1

    :cond_121
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/appcompat/view/menu/g;->u(Z)V

    :cond_125
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_10b

    :cond_12a
    :goto_12a
    if-eqz v3, :cond_12e

    add-int/lit8 v5, v5, -0x1

    :cond_12e
    invoke-virtual {v15, v3}, Landroidx/appcompat/view/menu/g;->u(Z)V

    goto/16 :goto_a4

    :cond_133
    move/from16 v17, v4

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroidx/appcompat/view/menu/g;->u(Z)V

    :goto_139
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v17

    const/4 v3, 0x0

    goto/16 :goto_6e

    :cond_143
    const/4 v2, 0x1

    return v2
.end method

.method public l(Landroid/view/ViewGroup;I)Z
    .registers 5

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/c;->o:Landroidx/appcompat/widget/c$d;

    if-ne v0, v1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/a;->l(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public n(Landroidx/appcompat/view/menu/g;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->j()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/a;->n(Landroidx/appcompat/view/menu/g;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0x8

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_30

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->A(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_30
    return-object v0
.end method

.method public o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/k;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->m:Landroidx/appcompat/view/menu/k;

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/a;->o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/k;

    move-result-object p1

    if-eq v0, p1, :cond_e

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/c;)V

    :cond_e
    return-object p1
.end method

.method public q(ILandroidx/appcompat/view/menu/g;)Z
    .registers 3

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->l()Z

    move-result p1

    return p1
.end method

.method public y()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->B()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->C()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
