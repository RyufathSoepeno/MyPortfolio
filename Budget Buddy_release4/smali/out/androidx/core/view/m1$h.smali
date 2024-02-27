.class Landroidx/core/view/m1$h;
.super Landroidx/core/view/m1$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private m:Landroidx/core/graphics/b;


# direct methods
.method constructor <init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/view/m1$g;-><init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/m1$h;->m:Landroidx/core/graphics/b;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/m1;Landroidx/core/view/m1$h;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/view/m1$g;-><init>(Landroidx/core/view/m1;Landroidx/core/view/m1$g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/m1$h;->m:Landroidx/core/graphics/b;

    iget-object p1, p2, Landroidx/core/view/m1$h;->m:Landroidx/core/graphics/b;

    iput-object p1, p0, Landroidx/core/view/m1$h;->m:Landroidx/core/graphics/b;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/m1;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/m1;->v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;

    move-result-object v0

    return-object v0
.end method

.method c()Landroidx/core/view/m1;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/m1;->v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;

    move-result-object v0

    return-object v0
.end method

.method final i()Landroidx/core/graphics/b;
    .registers 5

    iget-object v0, p0, Landroidx/core/view/m1$h;->m:Landroidx/core/graphics/b;

    if-nez v0, :cond_22

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/m1$h;->m:Landroidx/core/graphics/b;

    :cond_22
    iget-object v0, p0, Landroidx/core/view/m1$h;->m:Landroidx/core/graphics/b;

    return-object v0
.end method

.method n()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public t(Landroidx/core/graphics/b;)V
    .registers 2

    iput-object p1, p0, Landroidx/core/view/m1$h;->m:Landroidx/core/graphics/b;

    return-void
.end method
