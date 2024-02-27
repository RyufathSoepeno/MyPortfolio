.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroidx/fragment/app/c0;

.field final synthetic c:Landroidx/lifecycle/f;

.field final synthetic d:Landroidx/fragment/app/x;


# virtual methods
.method public d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 5

    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    if-ne p2, p1, :cond_22

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->d:Landroidx/fragment/app/x;

    invoke-static {p1}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/x;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_22

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->b:Landroidx/fragment/app/c0;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroidx/fragment/app/c0;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->d:Landroidx/fragment/app/x;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/x;->t(Ljava/lang/String;)V

    :cond_22
    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    if-ne p2, p1, :cond_36

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->c:Landroidx/lifecycle/f;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/h;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->d:Landroidx/fragment/app/x;

    invoke-static {p1}, Landroidx/fragment/app/x;->g(Landroidx/fragment/app/x;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method
