.class Landroidx/core/view/h0$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# direct methods
.method public static a(Landroid/view/View;)Landroidx/core/view/m1;
    .registers 2

    invoke-static {p0}, Landroidx/core/view/j0;->a(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {v0}, Landroidx/core/view/m1;->v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;

    move-result-object v0

    invoke-virtual {v0, v0}, Landroidx/core/view/m1;->s(Landroidx/core/view/m1;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/m1;->d(Landroid/view/View;)V

    return-object v0
.end method

.method static b(Landroid/view/View;)I
    .registers 1

    invoke-static {p0}, Landroidx/core/view/l0;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static c(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/i0;->a(Landroid/view/View;I)V

    return-void
.end method

.method static d(Landroid/view/View;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/core/view/k0;->a(Landroid/view/View;II)V

    return-void
.end method
