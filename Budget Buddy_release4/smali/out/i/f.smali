.class Li/f;
.super Li/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private final e:Ln/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Ln/c;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Li/d;-><init>(Landroid/content/Context;Ln/a;)V

    iput-object p2, p0, Li/f;->e:Ln/c;

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .registers 2

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/b;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Li/f;->e:Ln/c;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
