.class public Ld/i;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Ld/c;


# instance fields
.field private e:Ld/d;

.field private final f:Landroidx/core/view/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p1, p2}, Ld/i;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ld/i$a;

    invoke-direct {v0, p0}, Ld/i$a;-><init>(Ld/i;)V

    iput-object v0, p0, Ld/i;->f:Landroidx/core/view/e$a;

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-static {p1, p2}, Ld/i;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ld/d;->D(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ld/d;->q(Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Landroid/content/Context;I)I
    .registers 4

    if-nez p1, :cond_13

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lc/a;->y:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_13
    return p1
.end method


# virtual methods
.method public B(Lh/b$a;)Lh/b;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public Q(Lh/b;)V
    .registers 2

    return-void
.end method

.method public V(Lh/b;)V
    .registers 2

    return-void
.end method

.method public a()Ld/d;
    .registers 2

    iget-object v0, p0, Ld/i;->e:Ld/d;

    if-nez v0, :cond_a

    invoke-static {p0, p0}, Ld/d;->h(Landroid/app/Dialog;Ld/c;)Ld/d;

    move-result-object v0

    iput-object v0, p0, Ld/i;->e:Ld/d;

    :cond_a
    iget-object v0, p0, Ld/i;->e:Ld/d;

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/d;->d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method c(Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public d(I)Z
    .registers 3

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->z(I)Z

    move-result p1

    return p1
.end method

.method public dismiss()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->r()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld/i;->f:Landroidx/core/view/e$a;

    invoke-static {v1, v0, p0, p1}, Landroidx/core/view/e;->e(Landroidx/core/view/e$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->i(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->o()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->n()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->q(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->w()V

    return-void
.end method

.method public setContentView(I)V
    .registers 3

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->A(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->B(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/d;->C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/d;->E(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ld/i;->a()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->E(Ljava/lang/CharSequence;)V

    return-void
.end method
