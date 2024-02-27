.class Landroidx/appcompat/view/menu/ActionMenuItemView$a;
.super Landroidx/appcompat/widget/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic n:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->n:Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/r0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Li/e;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->n:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->n:Landroidx/appcompat/view/menu/ActionMenuItemView$b;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ActionMenuItemView$b;->a()Li/e;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->n:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Landroidx/appcompat/view/menu/e$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Landroidx/appcompat/view/menu/g;

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/e$b;->a(Landroidx/appcompat/view/menu/g;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->b()Li/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Li/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method
