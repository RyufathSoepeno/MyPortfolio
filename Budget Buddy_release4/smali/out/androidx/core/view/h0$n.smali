.class Landroidx/core/view/h0$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method static a(Landroid/view/View;Landroidx/core/view/h0$q;)V
    .registers 4

    sget v0, Lm/b;->P:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/g;

    if-nez v1, :cond_12

    new-instance v1, Ll/g;

    invoke-direct {v1}, Ll/g;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/view/v0;

    invoke-direct {v0, p1}, Landroidx/core/view/v0;-><init>(Landroidx/core/view/h0$q;)V

    invoke-virtual {v1, p1, v0}, Ll/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Landroidx/core/view/o0;->a(Landroid/view/View;Landroid/view/View$OnUnhandledKeyEventListener;)V

    return-void
.end method

.method static b(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Landroidx/core/view/u0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/view/p0;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static d(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/view/m0;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static e(Landroid/view/View;Landroidx/core/view/h0$q;)V
    .registers 3

    sget v0, Lm/b;->P:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/g;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0, p1}, Ll/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnUnhandledKeyEventListener;

    if-eqz p1, :cond_16

    invoke-static {p0, p1}, Landroidx/core/view/s0;->a(Landroid/view/View;Landroid/view/View$OnUnhandledKeyEventListener;)V

    :cond_16
    return-void
.end method

.method static f(Landroid/view/View;I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/view/t0;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static g(Landroid/view/View;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/q0;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static h(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/r0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static i(Landroid/view/View;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/n0;->a(Landroid/view/View;Z)V

    return-void
.end method
