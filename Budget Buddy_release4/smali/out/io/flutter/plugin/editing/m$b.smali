.class Lio/flutter/plugin/editing/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/m;-><init>(Landroid/view/View;Lr0/q;Lio/flutter/plugin/platform/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/editing/m;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/m;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {v0}, Lio/flutter/plugin/editing/m;->b(Lio/flutter/plugin/editing/m;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/editing/m;->G(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/m;->m()V

    return-void
.end method

.method public c(ILr0/q$b;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/m;->E(ILr0/q$b;)V

    return-void
.end method

.method public d(Lr0/q$e;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {v0}, Lio/flutter/plugin/editing/m;->b(Lio/flutter/plugin/editing/m;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/editing/m;->F(Landroid/view/View;Lr0/q$e;)V

    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/m;->C(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public f(IZ)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {v0, p1, p2}, Lio/flutter/plugin/editing/m;->h(Lio/flutter/plugin/editing/m;IZ)V

    return-void
.end method

.method public g(DD[D)V
    .registers 12

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/flutter/plugin/editing/m;->i(Lio/flutter/plugin/editing/m;DD[D)V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {v0}, Lio/flutter/plugin/editing/m;->f(Lio/flutter/plugin/editing/m;)V

    return-void
.end method

.method public i(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_24

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {v0}, Lio/flutter/plugin/editing/m;->g(Lio/flutter/plugin/editing/m;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_24

    :cond_f
    if-eqz p1, :cond_1b

    iget-object p1, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {p1}, Lio/flutter/plugin/editing/m;->g(Lio/flutter/plugin/editing/m;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->commit()V

    goto :goto_24

    :cond_1b
    iget-object p1, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {p1}, Lio/flutter/plugin/editing/m;->g(Lio/flutter/plugin/editing/m;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->cancel()V

    :cond_24
    :goto_24
    return-void
.end method

.method public j()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {v0}, Lio/flutter/plugin/editing/m;->c(Lio/flutter/plugin/editing/m;)Lio/flutter/plugin/editing/m$d;

    move-result-object v0

    iget-object v0, v0, Lio/flutter/plugin/editing/m$d;->a:Lio/flutter/plugin/editing/m$d$a;

    sget-object v1, Lio/flutter/plugin/editing/m$d$a;->h:Lio/flutter/plugin/editing/m$d$a;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {v0}, Lio/flutter/plugin/editing/m;->d(Lio/flutter/plugin/editing/m;)V

    goto :goto_1b

    :cond_12
    iget-object v0, p0, Lio/flutter/plugin/editing/m$b;->a:Lio/flutter/plugin/editing/m;

    invoke-static {v0}, Lio/flutter/plugin/editing/m;->b(Lio/flutter/plugin/editing/m;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/m;->e(Lio/flutter/plugin/editing/m;Landroid/view/View;)V

    :goto_1b
    return-void
.end method
