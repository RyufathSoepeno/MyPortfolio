.class Landroidx/appcompat/widget/p0$a;
.super Lf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private f:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lf/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/p0$a;->f:Z

    return-void
.end method


# virtual methods
.method c(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/p0$a;->f:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0$a;->f:Z

    if-eqz v0, :cond_7

    invoke-super {p0, p1}, Lf/d;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0$a;->f:Z

    if-eqz v0, :cond_7

    invoke-super {p0, p1, p2}, Lf/d;->setHotspot(FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0$a;->f:Z

    if-eqz v0, :cond_7

    invoke-super {p0, p1, p2, p3, p4}, Lf/d;->setHotspotBounds(IIII)V

    :cond_7
    return-void
.end method

.method public setState([I)Z
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0$a;->f:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Lf/d;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0$a;->f:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1, p2}, Lf/d;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
