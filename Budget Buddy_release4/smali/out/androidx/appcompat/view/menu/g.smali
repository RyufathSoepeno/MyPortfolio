.class public final Landroidx/appcompat/view/menu/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroidx/core/view/b;

.field private C:Landroid/view/MenuItem$OnActionExpandListener;

.field private D:Z

.field private E:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:I

.field private j:C

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field n:Landroidx/appcompat/view/menu/e;

.field private o:Landroidx/appcompat/view/menu/m;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/PorterDuff$Mode;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/e;IIIILjava/lang/CharSequence;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Landroidx/appcompat/view/menu/g;->i:I

    iput v0, p0, Landroidx/appcompat/view/menu/g;->k:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/g;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->t:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->u:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->v:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->w:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->x:Z

    const/16 v1, 0x10

    iput v1, p0, Landroidx/appcompat/view/menu/g;->y:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->D:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    iput p3, p0, Landroidx/appcompat/view/menu/g;->a:I

    iput p2, p0, Landroidx/appcompat/view/menu/g;->b:I

    iput p4, p0, Landroidx/appcompat/view/menu/g;->c:I

    iput p5, p0, Landroidx/appcompat/view/menu/g;->d:I

    iput-object p6, p0, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    iput p7, p0, Landroidx/appcompat/view/menu/g;->z:I

    return-void
.end method

.method private static d(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .registers 4

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_6

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method private e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-eqz p1, :cond_2b

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->x:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->v:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->w:Z

    if-eqz v0, :cond_2b

    :cond_e
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->v:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->t:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->w:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->u:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->x:Z

    :cond_2b
    return-object p1
.end method


# virtual methods
.method A()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->H()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->g()C

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public B()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public a(Landroidx/core/view/b;)Ln/b;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/core/view/b;->h()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->A:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    if-eqz p1, :cond_1e

    new-instance v0, Landroidx/appcompat/view/menu/g$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/g$a;-><init>(Landroidx/appcompat/view/menu/g;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/b;->j(Landroidx/core/view/b$b;)V

    :cond_1e
    return-object p0
.end method

.method public b()Landroidx/core/view/b;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    return-object v0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/e;->I(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public collapseActionView()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->z:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->A:Landroid/view/View;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->C:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/e;->f(Landroidx/appcompat/view/menu/g;)Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->C:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_14

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/e;->k(Landroidx/appcompat/view/menu/g;)Z

    move-result v0

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/g;->d:I

    return v0
.end method

.method g()C
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->G()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char v0, p0, Landroidx/appcompat/view/menu/g;->j:C

    goto :goto_d

    :cond_b
    iget-char v0, p0, Landroidx/appcompat/view/menu/g;->h:C

    :goto_d
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->A:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Landroidx/core/view/b;->d(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->A:Landroid/view/View;

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/g;->k:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    iget-char v0, p0, Landroidx/appcompat/view/menu/g;->j:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/g;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    iget v0, p0, Landroidx/appcompat/view/menu/g;->m:I

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->u()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/g;->m:I

    invoke-static {v0, v1}, Le/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/g;->m:I

    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->t:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->u:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroidx/appcompat/view/menu/g;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/g;->i:I

    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    iget-char v0, p0, Landroidx/appcompat/view/menu/g;->h:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/g;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->o:Landroidx/appcompat/view/menu/m;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    :goto_7
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->g()C

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    :cond_9
    iget-object v1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->u()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/e;->u()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_31

    sget v3, Lc/h;->k:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/e;->G()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, p0, Landroidx/appcompat/view/menu/g;->k:I

    goto :goto_3e

    :cond_3c
    iget v3, p0, Landroidx/appcompat/view/menu/g;->i:I

    :goto_3e
    const/high16 v4, 0x10000

    sget v5, Lc/h;->g:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/g;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/16 v4, 0x1000

    sget v5, Lc/h;->c:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/g;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v4, 0x2

    sget v5, Lc/h;->b:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/g;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v4, 0x1

    sget v5, Lc/h;->h:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/g;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v4, 0x4

    sget v5, Lc/h;->j:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/g;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v4, Lc/h;->f:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/g;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    if-eq v0, v5, :cond_91

    const/16 v3, 0xa

    if-eq v0, v3, :cond_8e

    const/16 v3, 0x20

    if-eq v0, v3, :cond_8b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9a

    :cond_8b
    sget v0, Lc/h;->i:I

    goto :goto_93

    :cond_8e
    sget v0, Lc/h;->e:I

    goto :goto_93

    :cond_91
    sget v0, Lc/h;->d:I

    :goto_93
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->o:Landroidx/appcompat/view/menu/m;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method i(Landroidx/appcompat/view/menu/k$a;)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroidx/appcompat/view/menu/k$a;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method public isActionViewExpanded()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->D:Z

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isChecked()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/core/view/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    invoke-virtual {v0}, Landroidx/core/view/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1

    :cond_1d
    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->z:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->A:Landroid/view/View;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Landroidx/core/view/b;->d(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->A:Landroid/view/View;

    :cond_15
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->A:Landroid/view/View;

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public k()Z
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, v0, p0}, Landroidx/appcompat/view/menu/e;->h(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->p:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->g:Landroid/content/Intent;

    if-eqz v0, :cond_35

    :try_start_21
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->u()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->g:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_2c} :catch_2d

    return v1

    :catch_2d
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroidx/core/view/b;->e()Z

    move-result v0

    if-eqz v0, :cond_40

    return v1

    :cond_40
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public m()Z
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public n()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public o()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public p(I)Ln/b;
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->u()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->q(Landroid/view/View;)Ln/b;

    return-object p0
.end method

.method public q(Landroid/view/View;)Ln/b;
    .registers 4

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->A:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->B:Landroidx/core/view/b;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroidx/appcompat/view/menu/g;->a:I

    if-lez v0, :cond_15

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_15
    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/e;->I(Landroidx/appcompat/view/menu/g;)V

    return-object p0
.end method

.method public r(Z)V
    .registers 3

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->D:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-void
.end method

.method s(Z)V
    .registers 5

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    if-eq v0, p1, :cond_14

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/e;->K(Z)V

    :cond_14
    return-void
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->p(I)Ln/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->q(Landroid/view/View;)Ln/b;

    move-result-object p1

    return-object p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    iget-char v0, p0, Landroidx/appcompat/view/menu/g;->j:C

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/g;->j:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    iget-char v0, p0, Landroidx/appcompat/view/menu/g;->j:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroidx/appcompat/view/menu/g;->k:I

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/g;->j:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/g;->k:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    if-eq v0, p1, :cond_f

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    :cond_f
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/e;->T(Landroid/view/MenuItem;)V

    goto :goto_f

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->s(Z)V

    :goto_f
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->setContentDescription(Ljava/lang/CharSequence;)Ln/b;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Ln/b;
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->r:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    if-eqz p1, :cond_7

    iget p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_b

    :cond_7
    iget p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 p1, p1, -0x11

    :goto_b
    iput p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->l:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/view/menu/g;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->x:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/g;->m:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->x:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->t:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->v:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->x:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->u:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->w:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->x:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    iget-char v0, p0, Landroidx/appcompat/view/menu/g;->h:C

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    iput-char p1, p0, Landroidx/appcompat/view/menu/g;->h:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    iget-char v0, p0, Landroidx/appcompat/view/menu/g;->h:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroidx/appcompat/view/menu/g;->i:I

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    iput-char p1, p0, Landroidx/appcompat/view/menu/g;->h:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/g;->i:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->C:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    iput-char p1, p0, Landroidx/appcompat/view/menu/g;->h:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/g;->j:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    iput-char p1, p0, Landroidx/appcompat/view/menu/g;->h:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/g;->i:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/g;->j:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/g;->k:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    iput p1, p0, Landroidx/appcompat/view/menu/g;->z:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/e;->I(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->w(I)Ln/b;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->u()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/e;->K(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->o:Landroidx/appcompat/view/menu/m;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/m;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->setTooltipText(Ljava/lang/CharSequence;)Ln/b;

    move-result-object p1

    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Ln/b;
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->s:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->K(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->y(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/e;->J(Landroidx/appcompat/view/menu/g;)V

    :cond_b
    return-object p0
.end method

.method public t(Z)V
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public u(Z)V
    .registers 2

    if-eqz p1, :cond_7

    iget p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    or-int/lit8 p1, p1, 0x20

    goto :goto_b

    :cond_7
    iget p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 p1, p1, -0x21

    :goto_b
    iput p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    return-void
.end method

.method v(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public w(I)Ln/b;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->setShowAsAction(I)V

    return-object p0
.end method

.method public x(Landroidx/appcompat/view/menu/m;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->o:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/m;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method y(Z)Z
    .registers 5

    iget v0, p0, Landroidx/appcompat/view/menu/g;->y:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    :goto_b
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/g;->y:I

    if-eq v0, p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    return v2
.end method

.method public z()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->A()Z

    move-result v0

    return v0
.end method
