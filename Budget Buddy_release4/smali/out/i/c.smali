.class public Li/c;
.super Li/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c$c;,
        Li/c$b;,
        Li/c$a;,
        Li/c$d;,
        Li/c$e;
    }
.end annotation


# instance fields
.field private final d:Ln/b;

.field private e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln/b;)V
    .registers 3

    invoke-direct {p0, p1}, Li/b;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Li/c;->d:Ln/b;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrapped Object can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->b()Landroidx/core/view/b;

    move-result-object v0

    instance-of v1, v0, Li/c$a;

    if-eqz v1, :cond_f

    check-cast v0, Li/c$a;

    iget-object v0, v0, Li/c$a;->d:Landroid/view/ActionProvider;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->getActionView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Li/c$c;

    if-eqz v1, :cond_10

    check-cast v0, Li/c$c;

    invoke-virtual {v0}, Li/c$c;->a()Landroid/view/View;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/b;->d(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Li/c;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setExclusiveCheckable"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Li/c;->e:Ljava/lang/reflect/Method;

    :cond_1a
    iget-object v0, p0, Li/c;->e:Ljava/lang/reflect/Method;

    iget-object v3, p0, Li/c;->d:Ln/b;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p1

    const-string v0, "MenuItemWrapper"

    const-string v1, "Error while calling setExclusiveCheckable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    new-instance v0, Li/c$b;

    iget-object v1, p0, Li/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Li/c$b;-><init>(Li/c;Landroid/content/Context;Landroid/view/ActionProvider;)V

    iget-object v1, p0, Li/c;->d:Ln/b;

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-interface {v1, v0}, Ln/b;->a(Landroidx/core/view/b;)Ln/b;

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 4

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Ln/b;->setActionView(I)Landroid/view/MenuItem;

    iget-object p1, p0, Li/c;->d:Ln/b;

    invoke-interface {p1}, Ln/b;->getActionView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Li/c;->d:Ln/b;

    new-instance v1, Li/c$c;

    invoke-direct {v1, p1}, Li/c$c;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ln/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_19
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_a

    new-instance v0, Li/c$c;

    invoke-direct {v0, p1}, Li/c$c;-><init>(Landroid/view/View;)V

    move-object p1, v0

    :cond_a
    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Ln/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1, p2}, Ln/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Ln/b;->setContentDescription(Ljava/lang/CharSequence;)Ln/b;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Ln/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Ln/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1, p2}, Ln/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4

    iget-object v0, p0, Li/c;->d:Ln/b;

    if-eqz p1, :cond_a

    new-instance v1, Li/c$d;

    invoke-direct {v1, p0, p1}, Li/c$d;-><init>(Li/c;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 4

    iget-object v0, p0, Li/c;->d:Ln/b;

    if-eqz p1, :cond_a

    new-instance v1, Li/c$e;

    invoke-direct {v1, p0, p1}, Li/c$e;-><init>(Li/c;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 4

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 6

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1, p2, p3, p4}, Ln/b;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Ln/b;->setShowAsAction(I)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Ln/b;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Ln/b;->setTooltipText(Ljava/lang/CharSequence;)Ln/b;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Li/c;->d:Ln/b;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method
