.class Landroidx/core/view/m1$d;
.super Landroidx/core/view/m1$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/core/view/m1$f;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Landroidx/core/view/m1$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/m1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/core/view/m1$f;-><init>(Landroidx/core/view/m1;)V

    invoke-virtual {p1}, Landroidx/core/view/m1;->u()Landroid/view/WindowInsets;

    move-result-object p1

    new-instance v0, Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_f

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_12

    :cond_f
    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_12
    iput-object v0, p0, Landroidx/core/view/m1$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/m1;
    .registers 3

    invoke-virtual {p0}, Landroidx/core/view/m1$f;->a()V

    iget-object v0, p0, Landroidx/core/view/m1$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/m1;->v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/m1$f;->b:[Landroidx/core/graphics/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/m1;->q([Landroidx/core/graphics/b;)V

    return-object v0
.end method

.method c(Landroidx/core/graphics/b;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method d(Landroidx/core/graphics/b;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method e(Landroidx/core/graphics/b;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method f(Landroidx/core/graphics/b;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method g(Landroidx/core/graphics/b;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
