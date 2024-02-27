.class public final Landroidx/core/view/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/w$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/MenuItem;Landroidx/core/view/b;)Landroid/view/MenuItem;
    .registers 3

    instance-of v0, p0, Ln/b;

    if-eqz v0, :cond_b

    check-cast p0, Ln/b;

    invoke-interface {p0, p1}, Ln/b;->a(Landroidx/core/view/b;)Ln/b;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b(Landroid/view/MenuItem;CI)V
    .registers 5

    instance-of v0, p0, Ln/b;

    if-eqz v0, :cond_a

    check-cast p0, Ln/b;

    invoke-interface {p0, p1, p2}, Ln/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_13

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    invoke-static {p0, p1, p2}, Landroidx/core/view/w$a;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static c(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 4

    instance-of v0, p0, Ln/b;

    if-eqz v0, :cond_a

    check-cast p0, Ln/b;

    invoke-interface {p0, p1}, Ln/b;->setContentDescription(Ljava/lang/CharSequence;)Ln/b;

    goto :goto_13

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    invoke-static {p0, p1}, Landroidx/core/view/w$a;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static d(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .registers 4

    instance-of v0, p0, Ln/b;

    if-eqz v0, :cond_a

    check-cast p0, Ln/b;

    invoke-interface {p0, p1}, Ln/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_13

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    invoke-static {p0, p1}, Landroidx/core/view/w$a;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static e(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    instance-of v0, p0, Ln/b;

    if-eqz v0, :cond_a

    check-cast p0, Ln/b;

    invoke-interface {p0, p1}, Ln/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_13

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    invoke-static {p0, p1}, Landroidx/core/view/w$a;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static f(Landroid/view/MenuItem;CI)V
    .registers 5

    instance-of v0, p0, Ln/b;

    if-eqz v0, :cond_a

    check-cast p0, Ln/b;

    invoke-interface {p0, p1, p2}, Ln/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_13

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    invoke-static {p0, p1, p2}, Landroidx/core/view/w$a;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static g(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 4

    instance-of v0, p0, Ln/b;

    if-eqz v0, :cond_a

    check-cast p0, Ln/b;

    invoke-interface {p0, p1}, Ln/b;->setTooltipText(Ljava/lang/CharSequence;)Ln/b;

    goto :goto_13

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    invoke-static {p0, p1}, Landroidx/core/view/w$a;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method
