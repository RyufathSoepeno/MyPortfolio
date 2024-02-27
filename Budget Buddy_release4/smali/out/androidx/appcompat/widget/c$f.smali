.class Landroidx/appcompat/widget/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/c;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/c$f;->e:Landroidx/appcompat/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/e;Z)V
    .registers 5

    instance-of v0, p1, Landroidx/appcompat/view/menu/m;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->D()Landroidx/appcompat/view/menu/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/e;->e(Z)V

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->e:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a;->m()Landroidx/appcompat/view/menu/j$a;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j$a;->b(Landroidx/appcompat/view/menu/e;Z)V

    :cond_17
    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/e;)Z
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->e:Landroidx/appcompat/widget/c;

    invoke-static {v0}, Landroidx/appcompat/widget/c;->u(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/e;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->e:Landroidx/appcompat/widget/c;

    move-object v2, p1

    check-cast v2, Landroidx/appcompat/view/menu/m;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/m;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v0, Landroidx/appcompat/widget/c;->H:I

    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->e:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a;->m()Landroidx/appcompat/view/menu/j$a;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/j$a;->c(Landroidx/appcompat/view/menu/e;)Z

    move-result v1

    :cond_25
    return v1
.end method
